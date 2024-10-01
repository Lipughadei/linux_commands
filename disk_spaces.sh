#!/bin/bash
set -x #debug mode
set -e #when the error is occuring the is going to stop immediatly
set -o pipefail

df -h

free -h

free

top

nproc

ps -ef | grep amazon | awk -F " " '{print }'
