# Asterisk Playbook

A simple Ansible playbook to install Asteriskon server.

- Add Asterisk release repository (v3.4)
- Install latest Asterisk 
- Enable Asteriskat boot

# How to use:
Before run the playbook, change some variables in main.yaml.
```
Asteriskserver: 172.20.10.8
```
after changing localhost to desired IP of Asterisk Server / Asterisk proxy then run the playbook.


```sh
$ git clone https://git.cafebazaar.ir/ict/Ansible-Asterisk-.git
$ cd Ansible-Asterisk-
$ ansible-playbook main.yml 
```
