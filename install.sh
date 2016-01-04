#!/bin/sh
sudo apt-get install python-pip
sudo apt-get install python-dateutil
sudo pip install iso8601
sudo pip install pytz
sudo pip install requests
SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
PATH=$PATH:$SCRIPT_DIR
echo "export PATH" >> /etc/profile
