#!/bin/sh
echo "adding ppa's..."
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:dimula73/krita
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y ppa:kilian/f.lux
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository -y ppa:mixxx/mixxx
sudo add-apt-repository -y ppa:caffeine-developers/ppa
sudo add-apt-repository -y ppa:noobslab/themes
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:paolorotolo/android-studio
sudo add-apt-repository -y ppa:pinta-maintainers/pinta-stable
sudo add-apt-repository -y ppa:thomas-schiex/blender
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo add-apt-repository -y ppa:ubuntu-sdk-team/ppa
sudo add-apt-repository -y ppa:xorg-edgers/ppa
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:audacity-team/daily
sudo add-apt-repository -y ppa:kxstudio-team/ppa
sudo add-apt-repository -y ppa:vikoadi/ppa
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:gnome3-team/gnome3-staging
sudo apt-add-repository -y ppa:ricotz/testing
sudo add-apt-repository -y ppa:ubuntuhandbook1/corebird
sudo add-apt-repository -y ppa:tomahawk/ppa
sudo add-apt-repository -y ppa:yorba/daily-builds
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:deity/sid
sudo add-apt-repository -y ppa:plushuang-tw/uget-stable
sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release
sudo add-apt-repository -y ppa:gnumdk/lollypop

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'


echo "updating..."
sudo apt-get update

LIST_OF_APPS="pulseaudio-module-zeroconf paprefs lollypop darktable uget apt python-software-properties grub-customizer simplescreenrecorder fluxgui inkscape  krita-2.9 mixxx caffeine numix-icon-theme-circle numix-icon-theme numix-gtk-theme android-studio pinta blender wine1.7 android-tools-adb android-tools-fastboot phablet-tools ubuntu-sdk nvidia-346 vlc google-chrome-stable audacity ardour3 steam indicator-kdeconnect kdeconnect jackd2 patchage gnome-subtitles youtube-dl haroopad git corebird tomahawk geary y-ppa-manager oracle-java8-installer "

LIBRARIES_FOR_STEAM=" libgtk2.0-0:i386 libnss3-1d:i386 libnspr4-0d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386"

echo "installing apps..."
sudo apt install -y $LIST_OF_APPS $LIBRARIES_FOR_STEAM
sudo update-alternatives --config java
sudo update-alternatives --config javac
echo "done."


#  > /dev/null 2>&1
