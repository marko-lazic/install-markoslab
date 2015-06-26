#!bin/sh

#Oracle Virtual Box
sudo dnf install virtualbox-4.2 dkms kernel-devel gcc
echo export KERN_DIR=/usr/src/kernels/`uname -r` >> ~/.bashrc
