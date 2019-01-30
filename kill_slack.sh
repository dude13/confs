#!/bin/bash


sudo apt-get update
ps aux | grep slack | awk '{print $2]' | xargs kill
