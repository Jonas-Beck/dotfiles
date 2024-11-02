#!/bin/bash

## TODO Check brew -v if missing install

## TODO Check ansible -v if missing install using brew

## This should cd into the ansible directory
## cd "$(dirname "$0")/ansible"

# Run the Ansible playbook
ansible-playbook ansible/playbook.yml --ask-become-pass
