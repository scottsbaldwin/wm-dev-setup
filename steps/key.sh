#!/bin/sh
mkdir -p $HOME/.ssh
ssh-keygen -t rsa -C "dev@wellmatchhealth.com" -q -f $HOME/.ssh/id_rsa -N ''
