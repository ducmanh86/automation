apt-get update && apt-get dist-upgrade
apt-get install whiptail perl
cd /usr/local/src
wget https://github.com/i-MSCP/imscp/archive/1.2.12.tar.gz
tar xzf 1.2.12.tar.gz
cd imscp-1.2.12
perl ./imscp-autoinstall -d
