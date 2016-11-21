#!/bin/bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk selfupdate force
sdk install sbt
sdk install maven
