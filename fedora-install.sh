#!bin/sh


sudo dnf copr enable jgillich/brackets helber/atom timlau/yumex-dnf piqus/gnome-builder leigh123linux/libreoffice gnumdk/lollypop
LIST_OF_APPS="pulseaudio-module-zeroconf paprefs VirtualBox-5.0 dkms kernel-devel gcc audacity-freeworld mixxx jack-audio-connection-kit-dbus transmission lollypop libreoffice blender gnome-builder gimp gpick calligra-krita inkscape corebird filezila gparted easytag vsftpd polari converseen atom brackets pitivi kolourpaint unetbootin nmap-frontend yumex-dnf wine"
sudo dnf update -y
sudo dnf install -y LIST_OF_APPS

#Oracle Virtual Box (modules for kernel)
echo export KERN_DIR=/usr/src/kernels/`uname -r` >> ~/.bashrc

# FTP aka. vsftpd configuration: vim /etc/vsftpd/vsftpd.conf
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --reload
