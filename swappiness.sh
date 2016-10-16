#!/usr/bin/sh

echo -e "vm.swappiness=0" | sudo tee -a /etc/sysctl.conf
