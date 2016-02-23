#!/bin/bash

cd {{WT_HOME}}/{{PROJ_NAME}}
source ./venv/bin/activate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('{{WT_USER}}', 'WT_USER@example.com', '{{WT_PASSWD}}')" | ./manage.py shell

exit $?
