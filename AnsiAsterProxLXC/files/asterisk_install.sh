#!/bin/bash
# Author: "Daniel Gordi"
# Date: "21/Oct/2018"
# Version definations
ASTERISK_VERSION="11.17.1"
IMAGEMAGICK_VERSION="6.9.10-12"
# functions for script
function download {
wget --continue http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-${ASTERISK_VERSION}.tar.gz
wget --continue http://www.imagemagick.org/download/ImageMagick-${IMAGEMAGICK_VERSION}.tar.gz
wget --continue http://soft-switch.org/downloads/spandsp/spandsp-0.0.6pre21.tgz
}
function decompress {
echo "Decompress Source files"
tar -zxf spandsp-0.0.6pre21.tgz
tar -zxf ImageMagick-${IMAGEMAGICK_VERSION}.tar.gz
tar -zxf asterisk-${ASTERISK_VERSION}.tar.gz
}
function download_asterisk_addons {
cd asterisk-${ASTERISK_VERSION}
./contrib/scripts/get_ilbc_source.sh
./contrib/scripts/get_mp3_source.sh
}

function install {
cd ../ImageMagick-${IMAGEMAGICK_VERSION}
./configure && make all && make install
cd ../spandsp-0.0.6
./configure && make all && make install
cd ../asterisk-${ASTERISK_VERSION}
./configure && make all && make menuselect.makeopts && menuselect/menuselect --enable cdr_mysql && make install && make samples && make config && make install-logrotate
cp ./contrib/scripts/astcli /usr/local/bin/
service asterisk enable
service asterisk start
}
cd /usr/local/src
download
decompress
download_asterisk_addons
install
echo "Done"
