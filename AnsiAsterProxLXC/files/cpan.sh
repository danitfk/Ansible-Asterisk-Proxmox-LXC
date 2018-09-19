#!/bin/bash
export PERL_MM_USE_DEFAULT=1

if [[ -d "/var/www/html/trunk2" ]]
then
cd /var/www/html/trunk2
/bin/cp perl_config/Config.pm `find /usr/ -name Config.pm|grep -v CPANPLUS|grep CPAN` -f
wget -O /root/cpan.tar.gz "https://github.com/danitfk/Ansible-Asterisk-Proxmox-LXC/raw/master/AnsiAsterProxLXC/files/cpan.tar.gz"
cd /root/
tar -xf cpan.tar.gz
else
echo "Directory not found"
exit 1

fi
