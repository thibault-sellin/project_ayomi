#!/bin/sh
python manage.py add_user
python manage.py migrate
exec "$@"