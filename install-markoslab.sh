#!/bin/sh
echo "adding ppa's..."
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer > /dev/null 2>&1
sudo add-apt-repository -y ppa:dimula73/krita > /dev/null 2>&1
sudo add-apt-repository -y ppa:inkscape.dev/stable > /dev/null 2>&1
sudo add-apt-repository -y ppa:kilian/f.lux > /dev/null 2>&1
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder > /dev/null 2>&1
sudo add-apt-repository -y ppa:mixxx/mixxx > /dev/null 2>&1
sudo add-apt-repository -y ppa:caffeine-developers/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:noobslab/themes > /dev/null 2>&1
sudo add-apt-repository -y ppa:numix/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:paolorotolo/android-studio > /dev/null 2>&1
sudo add-apt-repository -y ppa:pinta-maintainers/pinta-stable > /dev/null 2>&1
sudo add-apt-repository -y ppa:thomas-schiex/blender > /dev/null 2>&1
sudo add-apt-repository -y ppa:ubuntu-wine/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:ubuntu-sdk-team/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:xorg-edgers/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:videolan/stable-daily > /dev/null 2>&1
sudo add-apt-repository -y ppa:audacity-team/daily > /dev/null 2>&1
sudo add-apt-repository -y ppa:kxstudio-team/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:vikoadi/ppa > /dev/null 2>&1
sudo add-apt-repository -y ppa:nilarimogard/webupd8 > /dev/null 2>&1
sudo add-apt-repository -y ppa:gnome3-team/gnome3-staging > /dev/null 2>&1

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - > /dev/null 2>&1
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' > /dev/null 2>&1


echo "updating..."
sudo apt-get update > /dev/null 2>&1

LIST_OF_APPS="grub-customizer simplescreenrecorder fluxgui inkscape  krita-2.9 mixxx caffeine numix-icon-theme-circle numix-icon-theme numix-gtk-theme android-studio pinta blender wine1.7 android-tools-adb android-tools-fastboot phablet-tools ubuntu-sdk nvidia-346 vlc google-chrome-stable audacity ardour3 steam indicator-kdeconnect kdeconnect jackd2 patchage gnome-subtitles youtube-dl haroopad"

echo "installing apps..."
sudo apt-get install -y $LIST_OF_APPS

echo "done."


