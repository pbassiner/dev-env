#!/bin/bash
sudo apt-get update
sudo apt-get --assume-yes install git
git clone https://github.com/pbassiner/dev-env.git .dev-env
cd .dev-env
bash run.sh