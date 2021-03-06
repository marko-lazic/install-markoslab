#!/bin/sh

#Commands used to install packages:
sudo add-apt-repository ppa:kxstudio-debian/kxstudio
sudo apt-get update
sudo apt-get install kxstudio-repos
sudo apt-get update
sudo apt-get install libjack-jackd2-0
sudo apt-get install jackd2
sudo apt-get install qjackctl
sudo apt-get install wineasio:i386

#Commands to add your user to audio and disk groups:
sudo adduser $(whoami) audio
sudo adduser $(whoami) disk

#wineasio.dll.so location:
#/usr/lib/i386-linux-gnu/wine/

#Command for registrering wineasio.dll in PlayOnLinux:
regsvr32 wineasio.dll.so

