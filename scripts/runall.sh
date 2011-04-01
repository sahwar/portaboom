#!/bin/sh

# script to run all of the doom engines in sequence

center () {
    clear
    echo
    echo
    echo
    echo
    echo
    echo
} # center

center
cat <<'CHOCO'
  .o88b. db   db  .d88b.   .o88b.  .d88b.  db       .d8b.  d888888b d88888b 
 d8P  Y8 88   88 .8P  Y8. d8P  Y8 .8P  Y8. 88      d8' `8b `~~88~~' 88'     
 8P      88ooo88 88    88 8P      88    88 88      88ooo88    88    88ooooo 
 8b      88~~~88 88    88 8b      88    88 88      88~~~88    88    88~~~~~ 
 Y8b  d8 88   88 `8b  d8' Y8b  d8 `8b  d8' 88booo. 88   88    88    88.     
  `Y88P' YP   YP  `Y88P'   `Y88P'  `Y88P'  Y88888P YP   YP    YP    Y88888P 
                    d8888b.  .d88b.   .d88b.  .88b  d88. 
                    88  `8D .8P  Y8. .8P  Y8. 88'YbdP`88 
                    88   88 88    88 88    88 88  88  88 
                    88   88 88    88 88    88 88  88  88 
                    88  .8D `8b  d8' `8b  d8' 88  88  88 
                    Y8888D'  `Y88P'   `Y88P'  YP  YP  YP 
CHOCO

sleep 5
chocolate-doom
center

cat <<'LEGACY'
        ><<      ><<<<<<<<   ><<<<         ><           ><<   ><<      ><<
        ><<      ><<       ><    ><<      >< <<      ><<   ><< ><<    ><< 
        ><<      ><<      ><<            ><  ><<    ><<         ><< ><<   
        ><<      ><<<<<<  ><<           ><<   ><<   ><<           ><<     
        ><<      ><<      ><<   ><<<<  ><<<<<< ><<  ><<           ><<     
        ><<      ><<       ><<    ><  ><<       ><<  ><<   ><<    ><<     
        ><<<<<<<<><<<<<<<<  ><<<<<   ><<         ><<   ><<<<      ><<     
LEGACY

sleep 5
doom-legacy
center

cat <<'EDGE'
        8 8888888888  8 888888888o.         ,o888888o.   8 8888888888   
        8 8888        8 8888    `^888.     8888     `88. 8 8888         
        8 8888        8 8888        `88.,8 8888       `8.8 8888         
        8 8888        8 8888         `8888 8888          8 8888         
        8 8888888888888 8888          8888 8888          8 888888888888 
        8 8888        8 8888          8888 8888          8 8888         
        8 8888        8 8888         ,8888 8888   88888888 8888         
        8 8888        8 8888        ,88'`8 8888       .8'8 8888         
        8 8888        8 8888    ,o88P'     8888     ,88' 8 8888         
        8 8888888888888 888888888P'         `8888888P'   8 888888888888 
EDGE

sleep 5
ln -s /usr/share/edge ~/doom_ddf
edge -fulscreen -iwad doom1.wad -game ~
center

cat <<'ODAMEX'
           *******   *******       **     ****     **** ******** **     **
          **/////** /**////**     ****   /**/**   **/**/**///// //**   ** 
         **     //**/**    /**   **//**  /**//** ** /**/**       //** **  
        /**      /**/**    /**  **  //** /** //***  /**/*******   //***   
        /**      /**/**    /** **********/**  //*   /**/**////     **/**  
        //**     ** /**    ** /**//////**/**   /    /**/**        ** //** 
         //*******  /*******  /**     /**/**        /**/******** **   //**
          ///////   ///////   //      // //         // //////// //     // 
ODAMEX

sleep 5
odamex -width 640 -height -480
center

cat <<'REMOOD'
          ::::::::: ::::::::::  :::   :::   ::::::::  :::::::: ::::::::: 
         :+:    :+::+:        :+:+: :+:+: :+:    :+::+:    :+::+:    :+: 
        +:+    +:++:+       +:+ +:+:+ +:++:+    +:++:+    +:++:+    +:+  
       +#++:++#: +#++:++#  +#+  +:+  +#++#+    +:++#+    +:++#+    +:+   
      +#+    +#++#+       +#+       +#++#+    +#++#+    +#++#+    +#+    
     #+#    #+##+#       #+#       #+##+#    #+##+#    #+##+#    #+#     
    ###    ################       ### ########  ######## #########       
REMOOD

sleep 5
remood -width 640 -height 480
center

cat <<'ETERNITY'
'########:'########:'########:'########::'##::: ##:'####:'########:'##:::'##:
 ##.....::... ##..:: ##.....:: ##.... ##: ###:: ##:. ##::... ##..::. ##:'##::
 ##:::::::::: ##:::: ##::::::: ##:::: ##: ####: ##:: ##::::: ##:::::. ####:::
 ######:::::: ##:::: ######::: ########:: ## ## ##:: ##::::: ##::::::. ##::::
 ##...::::::: ##:::: ##...:::: ##.. ##::: ##. ####:: ##::::: ##::::::: ##::::
 ##:::::::::: ##:::: ##::::::: ##::. ##:: ##:. ###:: ##::::: ##::::::: ##::::
 ########:::: ##:::: ########: ##:::. ##: ##::. ##:'####:::: ##::::::: ##::::
........:::::..:::::........::..:::::..::..::::..::....:::::..::::::::..:::::
ETERNITY

sleep 5
eternity -base /usr/share/eternity/base
center

cat <<'VAVOOM'
      888     888     d8888888     888 .d88888b.  .d88888b. 888b     d888 
      888     888    d88888888     888d88P" "Y88bd88P" "Y88b8888b   d8888 
      888     888   d88P888888     888888     888888     88888888b.d88888 
      Y88b   d88P  d88P 888Y88b   d88P888     888888     888888Y88888P888 
       Y88b d88P  d88P  888 Y88b d88P 888     888888     888888 Y888P 888 
        Y88o88P  d88P   888  Y88o88P  888     888888     888888  Y8P  888 
         Y888P  d8888888888   Y888P   Y88b. .d88PY88b. .d88P888   "   888 
          Y8P  d88P     888    Y8P     "Y88888P"  "Y88888P" 888       888 
VAVOOM

sleep 5
vavoom -iwaddri /usr/share/games/doom -doom
center

cat <<'ZDOOM'
                 ######  ######    ####    ####   ####   #### 
                 #   ##   ##  ##  ##  ##  ##  ##   ###   ###  
                 #  ##    ##  ##  ##  ##  ##  ##   ###  # ##  
                   ##     ##  ## ##   ## ##   ##   # ## # ##  
                  ##     ##   ## ##   ## ##   ##  ## ### ##   
                 ##  #   ##  ##  ##  ##  ##  ##   #  ### ##   
                ##   #   ##  ##  ##  ##  ##  ##   #  ##  ##   
                ######  ######    ####    ####   ### ## ####  
ZDOOM
zdoom -fullscreen
sleep 5
