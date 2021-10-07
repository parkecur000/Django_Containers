#!bin/bash

cd django_app
virtualenv -p python3 venv
source venv/bin/activate
pip3 install -r requirements.txt
pip3 install django
python3 manage.py migrate
python3 manage.py collectstatic --no-input

sudo service apache2 restart