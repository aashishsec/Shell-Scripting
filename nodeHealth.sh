#!/bin/bash

###########
# Author: Aashishsec
# Date: 29/01/2024
# This Script Check the node Health
# Version 1.0.0
###########

set -x #Debug Mode

set -e # exit the script when there is a error

set -o pipefail # exit when pipefail

df -h

free -g

nproc

echo "Printing the PIDs"

ps -ef | awk -F " " '{print $2}'


