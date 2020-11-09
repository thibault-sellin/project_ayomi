#!/bin/sh
python manage.py migrate
python manage.py add_user
exec "$@"