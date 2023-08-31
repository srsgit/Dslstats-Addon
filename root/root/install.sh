#!/bin/sh
set -e

apt-get update
apt-get install -y --force-yes --no-install-recommends    supervisor 
apt-get install -y --force-yes --no-install-recommends    xinetd 
apt-get install -y --force-yes --no-install-recommends    x11vnc 
apt-get install -y --force-yes --no-install-recommends    xvfb 
apt-get install -y --force-yes --no-install-recommends    tinywm 
apt-get install -y --force-yes --no-install-recommends    openbox 
apt-get install -y --force-yes --no-install-recommends    xdotool 
apt-get install -y --force-yes --no-install-recommends    wmctrl 
apt-get install -y --force-yes --no-install-recommends    x11-utils 
apt-get install -y --force-yes --no-install-recommends    xterm 
apt-get install -y --force-yes --no-install-recommends    libgtk2.0-0 
apt-get install -y --force-yes --no-install-recommends    libssl-dev 
apt-get install -y --force-yes --no-install-recommends    wget 
apt-get install -y --force-yes --no-install-recommends    curl
apt-get autoclean && apt-get autoremove && rm -rf /var/lib/apt/lists/*
cd /root/
wget -O dslstats.tar.gz http://dslstats.me.uk/files/dslstats64L-6.5.9.tar.gz
tar -zxvf dslstats.tar.gz
rm dslstats.tar.gz
mv dslstats64L-6.5.9 dslstats
chmod +x dslstats/dslstats

echo "Europe/London" > /etc/timezone
rm /etc/localtime || true
dpkg-reconfigure -f noninteractive tzdata

mkdir ~/.vnc
