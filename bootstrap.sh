!# /bin/sh

apt update
apt install debootstrap debian-archive-keyring
mkdir bullseye
debootstrap bullseye ./bullseye  http://deb.debian.org/debian/
mount proc bullseye/proc -t proc
mount sysfs bullseye/sys -t sysfs
cp /etc/hosts bullseye/etc/hosts
chroot bullseye /bin/bash

apt install binutils
objdump -x /usr/lib/
ldd `which awk`
ldd `which bash`
ldd --version
ldd --version | head -1
apt install wget
wget https://ftp.gnu.org/gnu/bash/bash-5.1.16.tar.gz
tar -xzf bash-5.1.16.tar.gz 
less bash-5.1.16/INSTALL 
cd bash-5.1.16/
apt install gcc make
./configure 
make