#!/bin/bash

#==============================================================================================================
#
# Auteur  : Alexandre Maury
# License : Distributed under the terms of GNU GPL version 2 or later
#
# GitHub : https://github.com/d3v-donkey
#==============================================================================================================


cd 

theme=""
string_length=${#theme}

# opérateurs -gt, -ge, -eq, -ne, -lt ou -le (pour >, >=, =, !=, <= ou <)
if [[ $string_length -lt 0 ]]; then

    PS3="Choix du theme : "

    select item in "- darky_pink -" "- greeny_dark -" "- -" "- Exit -"
    do
        echo "Vous avez choisi le theme $REPLY : $item"
        case $REPLY in
                1)
                    
                    theme="darky_pink"
                    ;;
                2)
                        
                    theme="greeny_dark"
                    ;;
                3)
                    echo "Fin du script"
                    exit 0
                    ;;
                *)
                    echo "Choix incorrect"
                    ;;
            esac
    done


    cd ~/Downloads/ && git clone https://github.com/adi1090x/slim_themes.git 

    cd slim_themes/themes && sudo mv $theme /usr/share/slim/themes/

    sudo sed -i -r 's/.*current_theme.*/current_theme ${theme}/g' /etc/slim.conf
fi







