#!/bin/bash
if [[ "$1" == "" ]];
then
echo "Help:"
echo "      ./run-playbook.sh 192.168.1.1"
exit 1
else
	if [[ ! -f ./playbook.yml ]];
	then
	echo "Playbook file not exists"
	fi
echo "Detect current IP"
sleep 0.4
OLDIP=`cat playbook.yml | grep hosts | cut -d":" -f2 | sed 's/ //g'`
echo "Current IP in Playbook is $OLDIP"
sleep 0.1
echo "Replace IP in Playbook"
sed -i "s/$OLDIP/$1/g" playbook.yml
sleep 0.2
echo "Add IP in Ansible"
echo "$1" >> /etc/ansible/hosts
sleep 0.2
echo "Run Playbook"
ansible-playbook playbook.yml
fi
