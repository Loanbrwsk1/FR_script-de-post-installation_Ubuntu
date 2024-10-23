username=$(zenity --entry --text="Entrez votre nom d'utilisateur'")

ecryptfs-migrate-home -u $username

rm -fr /home/"$username".*
