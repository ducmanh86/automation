#!/bin/bash
echo "Please enter your hostname?"
read hostname
echo "Please enter your iMSCP version?"
read version
passwd
hostname $hostname
echo $hostname > /etc/hostname
sed -i "s/masehub.com masehub/$hostname.masehub.com $hostname/g" /etc/hosts
apt-get update && apt-get dist-upgrade
apt-get install whiptail perl
cd /usr/local/src
wget https://github.com/i-MSCP/imscp/archive/$version.tar.gz
tar xzf $version.tar.gz
cd imscp-$version
perl ./imscp-autoinstall -d
