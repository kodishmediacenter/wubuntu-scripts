
# Script APT para Instalar Kodi Completo via ppa em sistemas baseados do Ubuntu
# Fabio L M Goncalves
# 24/03/2024

echo "deb https://ppa.launchpadcontent.net/team-xbmc/ppa/ubuntu jammy main" >> /etc/apt/sources.list
apt-get update >> /dev/null 2> /tmp/${NAME}_apt_add_key.txt
key=`cat /tmp/${NAME}_apt_add_key.txt | cut -d":" -f6 | cut -d" " -f3`
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key
rm -rf /tmp/${NAME}_apt_add_key.txt
sudo apt-get install update
sudo apt install kodi
sudo apt-get install kodi-pvr-*
sudo apt-get install kodi-audioencoder-*