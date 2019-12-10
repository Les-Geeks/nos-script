#!/bin/bash

#==============================================================================================================
#
# Auteur  : Alexandre Maury
# License : Distributed under the terms of GNU GPL version 2 or later
#
# GitHub : https://github.com/d3v-donkey
#==============================================================================================================

theme=""


cd 

function new_theme () {
    lenghtChaine=${#theme}
    # opérateurs -gt, -ge, -eq, -ne, -lt ou -le (pour >, >=, =, !=, <= ou <)
    if [[ $lenghtChaine -gt 0 ]]; then

        echo 'test 2'

        cd ~/Downloads/ && git clone https://github.com/adi1090x/slim_themes.git 

        cd slim_themes/themes && sudo mv $theme /usr/share/slim/themes/

        sudo sed -i -r "s/.*current_theme.*/current_theme ${theme}/g" /etc/slim.conf


        echo 'Installation terminée redemarer le pc !'
    fi

}


########## Main ##########


PS3="Choix du theme : "

select item in "- darky_pink -" "- greeny_dark -" "- -" "- Exit -"
do
    echo "Vous avez choisi le theme $REPLY : $item"
    case $REPLY in
            1)
                    
                theme="darky_pink"
                new_theme
                exit 0
                ;;
            2)
                        
                theme="greeny_dark"
                new_theme
                exit 0
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




