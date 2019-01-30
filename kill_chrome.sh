!#/bin/bash

sudo apt-get update
ps aux | grep chrome | awk '{print $2}' | xargs kill

