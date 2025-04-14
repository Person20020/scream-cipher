#!/bin/bash
sleep 10
source /home/$USER/scream-cipher-venv/bin/activate
cd /home/$USER/scream-cipher-venv/scream-cipher/
exec gunicorn -w 1 -b 127.0.0.1:2001 --access-logfile /home/$USER/scream-cipher-venv/logs/access.log --error-logfile /home/$USER/scream-cipher-venv/logs/error.log app:app
