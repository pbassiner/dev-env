#!/bin/bash
set -euo pipefail

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

# Determine OS

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
case $(uname -m) in
x86_64)
    BITS=64
    ;;
i*86)
    BITS=32
    ;;
*)
    BITS=?
    ;;
esac

# Install requirements

case $machine in
    Linux)
        case "$(lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1 || uname -om)" in
            Manjaro*|Arch*)
                sudo pacman -S git --noconfirm --needed
                sudo pacman -S ansible --noconfirm --needed
                TEMPLATE=arch.yml
                ;;
        esac
        ;;
    Mac)
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew install git
        brew install ansible
        TEMPLATE=macos.yml
        ;;
    Cygwin)            exit 1;;
    MinGw)             exit 1;;
    UNKNOWN*)          exit 1
esac


# Bootstrap

if [ ! -d ~/.ansible/plugins/modules/aur ]; then
    git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur
fi
if [ ! -d ~/.dev-env ]; then
  git clone https://github.com/aserrallerios/dev-env.git ~/.dev-env
fi

cd ~/.dev-env
git checkout ${BRANCH}
git pull

./run.sh $TEMPLATE
