#!/bin/bash

wallpaper = $(zenity --question --title="Fonds d'écran" --text="Voulez-vous des fonds d'écran supplémentaires ?")
dynamic_wallpapers = $(zenity --question --title="Fonds d'écran dynamiques" --text="Voulez-vous des fonds d'écran dynamiques supplémentaires ?")

if wallpaper
then
    git clone https://github.com/Loanbrwsk1/Wallpapers.git 
    rm -fr ./Wallpapers/.git/
    mv ./Wallpapers/ ~/Images/
    chown -R "$username":"$username" ~/Images/Wallpapers/
fi

if dynamic_wallpapers
then
    git clone https://github.com/Loanbrwsk1/Dynamic-wallpapers.git
    cd ./Dynamic-wallpapers/
    mv ./Dynamic_Wallpapers/ /usr/share/backgrounds/
    mv ./xml/* /usr/share/gnome-background-properties/
    mv ./Screenshots_dynamic_wallpapers/ ~/Images/
    mv ./CREDITS.txt ~/Images/
    cd ..
    rm -rf ./Dynamic-wallpapers/
    chown -R "$username":"$username" ~/Images/Screenshots_dynamic_wallpapers/
    chown "$username":"$username" ~/Images/CREDITS.txt
fi

echo "Configuration générale de GNOME"
echo " - Suramplification"
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
echo " - Modification du format de la date et heure"
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-format "24h"
echo " - Paramétrage Touch Pad"
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true
gsettings set org.gnome.desktop.peripherals.touchpad click-method "areas"
echo " - Epuration des fichiers temporaires et de la corbeille de plus de 30 jours"
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.desktop.privacy old-files-age "30"

echo "Configuration de GNOME Text Editor"
gsettings set org.gnome.TextEditor highlight-current-line false
gsettings set org.gnome.TextEditor show-line-numbers true

echo "Personnalisation terminée."
