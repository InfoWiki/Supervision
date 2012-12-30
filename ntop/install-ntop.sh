#!/bin/bash
# INSTALLATION AUTOMATISER DE NTOP - DEBIAN
# Script dev. par Mickael Stanislas pour Infowiki
# http://mickael-stanislas.com/
# https://github.com/InfoWiki
# http://infowiki.fr
#
# Version = 1.1
# Synthaxe: bash ./Autoinstall-ntop.sh
# Synthaxe: sudo bash ./Autoinstall-ntop.sh

# On ajoute les sources
echo "" >> /etc/apt/sources.list
echo "# SOURCE POUR NTOP" >> /etc/apt/sources.list
echo deb http://backports.debian.org/debian-backports squeeze-backports main >> /etc/apt/sources.list
# On fait les mises � jours
apt-get update
apt-get upgrade -y
# On install Ntop
apt-get install -y ntop
# ON RECUPERE L'ADRESSE IP DANS UNE VARIABLE
ADDRIP=$(ifconfig eth0 | grep "inet addr" | cut -d " " -f 12 | cut -d : -f 2)
clear
echo ""
echo "Installation terminé !"
echo "Connectez vous" "http://""$ADDRIP"":3000"
