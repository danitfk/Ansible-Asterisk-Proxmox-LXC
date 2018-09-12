#!/bin/bash
echo "SELINUX=disabled" >/etc/selinux/config
echo "127.0.0.1 mysql" >> /etc/hosts
