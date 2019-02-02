#!/bin/bash
set -euo pipefail

ansible-playbook arch.yml -i hosts --ask-sudo-pass
