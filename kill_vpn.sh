#!/bin/bash

sudo ps aux | grep forticlient | awk '{print $2}' | xargs kill
