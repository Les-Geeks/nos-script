#!/bin/bash

#==============================================================================================================
#
# Auteur  : Alexandre Maury
# License : Distributed under the terms of GNU GPL version 2 or later
#
# GitHub : https://github.com/d3v-donkey
#==============================================================================================================

cd 

cd ~/Downloads/ && git clone https://github.com/adi1090x/slim_themes.git 

cd slim_themes/themes && sudo mv overlay /usr/share/slim/themes/

sudo sed -i -r 's/.*current_theme.*/current_theme overlay/g' /etc/slim.conf



