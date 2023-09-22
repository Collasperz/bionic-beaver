if [ -d "./sys" ]
then
chroot $HOME/ubuntu /bin/bash
else
echo "======================================"
echo "Ubuntu Bionic Beaver 32-bit Installer"
echo "======================================"
echo "=== Installing Ubuntu ==="
sleep 2s
clear
mkdir ubuntu
cd ubuntu
wget http://cdimage.ubuntu.com/ubuntu-base/releases/18.04.5/release/ubuntu-base-18.04.5-base-i386.tar.gz -o ubuntu.tar.gz
tar -xvf ubuntu.tar.gz
rm ubuntu.tar.gz
clear
cat /etc/os-release
chroot $HOME/ubuntu /bin/bash
fi
