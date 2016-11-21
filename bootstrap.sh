#!/bin/bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get --assume-yes upgrade
sudo apt-get --assume-yes install ansible
sudo apt-get --assume-yes install git
git clone https://github.com/pbassiner/dev-env.git .dev-env
cd .dev-env
bash run.sh
