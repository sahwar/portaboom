#!/bin/sh

# script to create the release files for XXXX release;
# script will be run from the top level project directory

# program locations
CAT=$(which cat)
SED=$(which sed)
GIT=$(which git)
PERL_GTK2_SRC="/tmp/perl-Gtk2"

if [ -z $FILELIST ]; then 
    echo "ERROR: FILELIST variable empty!"
    exit 1
fi # if [ -z $FILELIST ]; then
if [ -z $TEMP_DIR ]; then 
    echo "ERROR: TEMP_DIR variable empty!"
    exit 1
fi # if [ -z $FILELIST ]; then

# grab a copy of the gtk2-Perl source via git
if [ ! -d $PERL_GTK2_SRC ]; then
    if [ -z $GIT ]; then
        echo "ERROR: 'git' command not found!"
        echo "ERROR: git is required to sync perl-Gtk2 examples"
        exit 1
    fi # if [ -z $GIT ]
    echo "Cloning perl-Gtk2 source for 'examples' and 'gtk-demo'..."
    git clone git://git.gnome.org/perl-Gtk2 $PERL_GTK2_SRC
fi # if [ ! -d "/tmp/gtk2-perl-examples" ];

# copy the combined SSL key/cert for shellinabox
if [ -f ~/stuff_tars/lack.googlecode.com.key-cert.pem ]; then
    cp ~/stuff_tars/lack.googlecode.com.key-cert.pem $TEMP_DIR/certificate.pem
else
    echo "ERROR: missing SSL key/cert for shellinabox"
    echo "ERROR checked ${HOME}/stuff_tars"
    exit 1
fi # if [ -f ~/stuff_tars/lack.googlecode.com.key-cert.pem ]

# any files in this list get enumerated over and the substitutions below are
# performed on them
INPUT_FILES="issue.${PROJECT_NAME} issue.${PROJECT_NAME}.nogetty"

# verify the base file exists
if [ ! -e $PROJECT_DIR/${PROJECT_NAME}.base.txt ]; then
    echo "ERROR: ${PROJECT_DIR}/${PROJECT_NAME}.base.txt file does not exist"
    exit 1
fi # if [ $PROJECT_DIR/${PROJECT_NAME}.base.txt ]

### create the initramfs filelist
if [ -e $PROJECT_DIR/kernel_configs/linux-image-$1.txt ]; then
    cat $PROJECT_DIR/${PROJECT_NAME}.base.txt \
        $PROJECT_DIR/kernel_configs/linux-image-$1.txt \
        > $PROJECT_DIR/initramfs-filelist.txt
else
    echo "make_release_files.sh: linux-image-$1.txt file does not exist"
    echo "make_release_files.sh: in ${PROJECT_DIR}/kernel_configs directory"
    exit 1
fi

### create the hostname file
echo "${PROJECT_NAME}" > $TEMP_DIR/hostname

# build the file with the correct substitutions performed
# below variables are set in the initramfs.cfg file
for SEDFILE in $(echo $INPUT_FILES);
do
    $CAT $PROJECT_DIR/etcfiles/$SEDFILE \
        | $SED "{
            s!:KERNEL_VER:!${KERNEL_VER}!g;
            s!:RELEASE_VER:!${RELEASE_VER}!g;
            s!:LACK_PASS:!${LACK_PASS}!g;
            }" \
    > $TEMP_DIR/$SEDFILE
done

# create the new init.sh script, which will be appended to
#$TOUCH $TEMP_DIR/init.sh
$CAT $BUILD_BASE/common/initscripts/_initramfs_init.sh | $SED \
    "{
    s!:PROJECT_NAME:!${PROJECT_NAME}!g;
    s!:PROJECT_DIR:!${PROJECT_DIR}!g;
    s!:BUILD_BASE:!${BUILD_BASE}!g;
    s!:VERSION:!${KERNEL_VER}!g; 
    }" >> $TEMP_DIR/init.sh

# add the init script to the filelist
echo "file /init /${TEMP_DIR}/init.sh 0755 0 0" >> $TEMP_DIR/$FILELIST

# vi: set sw=4 ts=4 paste:
