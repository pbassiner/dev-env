#!/bin/bash
set -euo pipefail

TEMPLATE=$1

ansible-playbook $TEMPLATE -i hosts --ask-sudo-pass
