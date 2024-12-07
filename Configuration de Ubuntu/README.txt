

/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\

VEUILLEZ AVOIR UNE CONNEXION STABLE ET ASSEZ RAPIDE (min. 2 Mo/s)

LE SCRIPT PEUT ETRE LANCÉ PLUSIEURS FOIS

VEUILLEZ VERIFIER QUE TOUS LES SCRIPTS .sh (4) ONT BIEN LA COCHE EXECUTABLE DANS LES PROPRIÉTÉS

/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\/!\



Lancer le programme :
    - Clic droit sur le fichier "lancer-la-configuration-de-Ubuntu.sh"
    - Appuyez sur "Exécuter comme programme

Il vous sera demandé votre mot de passe, puis on vous demandera d'écrire un "Nouveau mot de passe". Ce mot de passe est pour le compte administrateur (root). Si vous ne voulez pas l'activez, n'écrivez rien et appuyez simplement sur Entrée 2 fois.



Vous pouvez chiffrer le dossier personnel /!\ Pas sans risques : cela pourrait supprimer des données personnelles (si présentes dans votre dossier personnel) /!\ : il est impératif de vous connecter en root (administrateur). Pour ce faire : 
	- fermer votre session et cliquer sur "Pas dans la liste ?"
	- entrer root en nom d'utilisateur et le mot de passe que vous avez défini au début de la configuration 
	- exécutez chiffrer-dossier-personnel.sh avec exécutez comme programme (clic droit). 
	

/\ Si vous ne vous souvenez plus de votre mot de passe root (administrateur), ou si vous ne l'avez pas défini, vous pouvez le réinitialiser avec la commande "sudo passwd root". /\



Suite à la configuration, des alias seront disponibles. Un alias est une chaine de caractères qui va exécuter une commande longue pour gagner du temps. Voici ceux que vous pourrez utiliser : 


||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|               |                                |                                                                                   |   
|   Exécutez    |   pour effectuer               |   Exemple                                                                         |
|               |                                |                                                                                   |
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|               |                                |                                                                                   |
|   maj         |   sudo apt upgrade -y          |   maj -> mise à jour du système                                                   |
|   install     |   sudo apt install -y          |   install <app> -> installe l'application <app>                                   |
|   remove      |   sudo apt remove -y           |   remove <app> -> supprimer l'application <app>                                   |
|   fmaj        |   flatpak update -y            |   fmaj -> mise à jour de flatpak                                                  |
|   fs          |   flatpak search               |   fs <mot-cle> -> recherche les flatpak contenant <mot cle>                       |
|   finstall    |   flatpak install flathub -y   |   finstall <ID> -> installe le flatpak avec l'identifiant <ID> depuis flathub     |
|   fremove     |   flatpak remove -y            |   fremove <ID> -> supprime le flatpak avec l'identifiant <ID>                     | 
|               |                                |                                                                                   |
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||




=======================================================================================================================================

                                                        Personnalisation de Ubuntu

=======================================================================================================================================


Pour les fonds d'écrans, un dossier wallpapers à été crée dans ~/Images/
Dans ce même dossier, vous allez trouver un dossier screenshots_dynamic_wallpapers qui contient les présentations des fonds d'écrans au fil de la journée.

Vous pouvez choisir un fond d'écran dynamique :
    - clic droit sur le bureau
    - modifier le fond d'écran 
    - sélectionnez un fond d'écran avec une horloge en bas à droite de l'image pour sélectionnez un fond d'écran dynamique


Si vous souhaitez personnalisez Ubuntu plus en profondeur, regardez cette playlist : 
https://youtube.com/playlist?list=PL-xp5bZmT8148dNSbLTQBhEntfp_HeXfu&si=HTQfktPsC7zkXVnr
