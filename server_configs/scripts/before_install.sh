#!/bin/bash
echo "TEST"
cd /home/ubuntu
touch test.txt
DIR="/home/ubuntu/django_app"
if [ -d "$DIR" ]; then
    echo "$DIR exists"
else
    echo "Creating $DIR directory"
    mkdir $DIR
fi

sudo apt-get update
sudo apt-get install python3-pip apache2 libapache2-mod-wsgi-py3 libmysqlclient-dev
sudo pip3 install virtualenv
