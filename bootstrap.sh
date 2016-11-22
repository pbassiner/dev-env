#!/bin/bash

# DEFAULTS
BRANCH="master"

# Use -gt 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use -gt 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to -gt 0 the /etc/hosts part is not recognized ( may be a bug )
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -b|--branch)
    BRANCH="$2"
    shift # past argument
    ;;
    *)
            # unknown option
    ;;
esac
shift # past argument or value
done

# BOOTSTRAP
sudo apt-add-repository ppa:ansible/ansible
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get --assume-yes upgrade
sudo apt-get --assume-yes install ansible
sudo apt-get --assume-yes install git
git clone https://github.com/pbassiner/dev-env.git .dev-env
cd .dev-env
git checkout ${BRANCH}
bash run.sh
