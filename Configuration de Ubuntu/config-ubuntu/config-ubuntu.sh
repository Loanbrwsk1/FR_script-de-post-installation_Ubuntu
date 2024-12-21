#!/bin/bash

username=$(zenity --entry --title="Nom d'utilisateur" --text="Entrez votre nom d'utilisateur (en minuscule)")
FLATPAKAPP="com.visualstudio.code org.gimp.GIMP org.flameshot.Flameshot org.keepassxc.KeePassXC org.videolan.VLC com.github.marinm.songrec org.soundconverter.SoundConverter io.github.flattool.Warehouse com.github.tchx84.Flatseal"
ADDAPP="screen htop nmon glances neofetch screenfetch inxi nvtop ncdu cronie sl nyancat nwipe ecryptfs-utils nmap iftop traceroute telnet borgbackup virtualbox cool-retro-term gparted"

copy_of_files(){
	echo -e "\033[1;32m==========Copies des fichiers utiles==========\033[0m"
	if [[ $(grep -c "fmaj=" /home/"$username"/.bashrc) -lt 1 ]] ; then
		echo '

alias maj="sudo apt update  && sudo apt full-upgrade -y"
alias install="sudo apt install -y"
alias remove="sudo apt remove -y"
alias finstall="flatpak install flathub -y"
alias fremove="flatpak remove -y"
alias fmaj="flatpak update -y"
alias fs="flatpak search"' >> /home/"$username"/.bashrc
	fi
	cd ./config-ubuntu/
	cp ./"Chemin d'accès" /home/"$username"/.local/share/nautilus/scripts/
    if zenity --question --title="Fonds d'écran" --text="Voulez-vous des fonds d'écran supplémentaires ?"
    then
        cp -r ./wallpapers/ /home/"$username"/Images/
        cd ./dynamic-wallpapers/
        cp -r ./Dynamic_Wallpapers/ /usr/share/backgrounds/
        cp ./xml/* /usr/share/gnome-background-properties/
        cp -r ./Screenshots_dynamic_wallpapers/ /home/"$username"/Images/
        chown -R "$username":"$username" /home/"$username"/Images/wallpapers/
    fi
	echo ""
}

maj(){
	echo -e "\033[1;32m==========Mises à Jour==========\033[0m"
    echo ""
	echo -e "\033[1;32mMise à jour de flatpak\033[0m"
	echo ""
	flatpak update -y
	echo ""
	echo -e "\033[1;32mMise à jour du système\033[0m"
	echo ""
	apt update
	echo ""
	apt full-upgrade -y
	echo ""
	apt autoremove -y
	echo ""
}

install_app(){
	echo -e "\033[1;32m==========Installation des logiciels==========\033[0m"
	echo ""
	echo -e "\033[1;32mInstallation des flatpak\033[0m"
	echo ""
	flatpak install flathub -y $FLATPAKAPP
	echo ""
	echo -e "\033[1;32mInstallation de logiciels\033[0m"
	echo ""
	apt install -y $ADDAPP
	echo ""
}

main(){
    copy_of_files
    maj
    install_app
}

main
