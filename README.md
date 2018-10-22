# Asterisk Playbook

A simple Ansible playbook to install Asterisk on server.


- Prepare system for Asterisk and badhi
- Install and configure Asterisk (with modules,addons and cdr_mysql)
- Install MySQL and configure for Asterisk
- Configure trunk2 sciprt on system

# How to use:
Clone repository from Git and adjust hosts in playbook.yaml

```sh
$ git clone https://github.com/danitfk/Ansible-Asterisk-Proxmox-LXC
$ cd Ansible-Asterisk-Proxmox-LXC
$ ./run-playbook.sh CONTAINER-IP
```

![Ansible Asterisk automated deployment](https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Asterisk_Logo.svg/1200px-Asterisk_Logo.svg.png)

