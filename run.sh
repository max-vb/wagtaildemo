#!/bin/bash

ansible-playbook -i hosts site.yaml --tags nginx
