#!/bin/bash

echo "Building Crontab for every Sunday Midnight unifi update script"
crontab /tmp/build/crontab 2>/dev/null
