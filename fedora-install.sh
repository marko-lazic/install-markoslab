#!bin/sh


<<<<<<< HEAD
sudo dnf copr enable -y jgillich/brackets
sudo dnf copr enable -y helber/atom
sudo dnf copr enable -y timlau/yumex-dnf
#sudo dnf copr enable -y piqus/gnome-builder
sudo dnf copr enable -y leigh123linux/libreoffice
sudo dnf copr enable -y gnumdk/lollypop
sudo dnf config-manager --add-repo http://download.opensuse.org/repositories/home:ztefn/Fedora_22/home:ztefn.repo

LIST_OF_NOT_FOUND="VirtualBox-5.0 "

LIST_OF_APPS="f23-backgrounds-extras-gnome yumex-dnf feedreader preload nautilus-open-terminal htop thunderbird haguichi android-tools uget mpv alacarte grub-customizer dkms kernel-devel gcc audacity-freeworld mixxx jack-audio-connection-kit-dbus qjackctl pulseaudio-module-jack transmission lollypop libreoffice blender gnome-builder gimp gpick calligra-krita inkscape corebird filezilla gparted easytag vsftpd polari converseen atom brackets pitivi kolourpaint unetbootin nmap-frontend yumex-dnf wine vlc"
=======
sudo dnf copr enable jgillich/brackets helber/atom timlau/yumex-dnf piqus/gnome-builder leigh123linux/libreoffice gnumdk/lollypop
LIST_OF_APPS="pulseaudio-module-zeroconf paprefs VirtualBox-5.0 dkms kernel-devel gcc audacity-freeworld mixxx jack-audio-connection-kit-dbus transmission lollypop libreoffice blender gnome-builder gimp gpick calligra-krita inkscape corebird filezila gparted easytag vsftpd polari converseen atom brackets pitivi kolourpaint unetbootin nmap-frontend yumex-dnf wine"
>>>>>>> 054ea62b98b13345c28c11eaf9288f82715f89ef
sudo dnf update -y
sudo dnf install -y LIST_OF_APPS

#Oracle Virtual Box (modules for kernel)
echo export KERN_DIR=/usr/src/kernels/`uname -r` >> ~/.bashrc

# FTP aka. vsftpd configuration: vim /etc/vsftpd/vsftpd.conf
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --reload

# /etc/fstab
# UUID=f7d72391-285f-44b8-922a-99764fa2fe35 /mnt/Backstage          ext4    defaults        1 2



mount --bind /mnt/backstage/IGRICE               /home/marko/IGRICE
mount --bind /mnt/backstage/INSTALACIJE          /home/marko/INSTALACIJE
mount --bind /mnt/backstage/Music                /home/marko/Music
mount --bind /mnt/backstage/STUDIJSKI\040MATERIJAL /home/marko/STUDIJSKI\040MATERIJAL
mount --bind /mnt/backstage/Videos               /home/marko/Videos

UUID=f7d72391-285f-44b8-922a-99764fa2fe35 /mnt/backstage                        ext4    defaults,noatime,nodiratime        1 2
UUID=c063275c-273d-44a8-b782-7fa178f9e603 /mnt/WDC                              ext4    defaults,noatime,nodiratime        1 2
/mnt/backstage/IGRICE                     /home/marko/IGRICE                    none    bind                               0 0
/mnt/backstage/INSTALACIJE                /home/marko/INSTALACIJE               none    bind                               0 0
/mnt/backstage/Music                      /home/marko/Music                     none    bind                               0 0
/mnt/backstage/STUDIJSKI\040MATERIJAL     /home/marko/STUDIJSKI\040MATERIJAL    none    bind                               0 0
/mnt/backstage/Videos                     /home/marko/Videos                    none    bind                               0 0
tmpfs /tmp tmpfs defaults 0 0
tmpfs /var/tmp tmpfs defaults 0 0

# Do this after feddy installing java
sudo update-alternatives --config java
sudo update-alternatives --config javac

# Photoshop
# winetricks atmlib gdiplus msxml3 msxml6 vcrun2005 vcrun2005sp1 vcrun2008 ie6 fontsmooth-rgb gecko

# Disables automatic updates
sudo systemctl disable dnf-makecache.timer
gsettings set org.gnome.software download-updates false
