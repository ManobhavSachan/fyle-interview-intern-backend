@echo off
rem To stop on the first error
setlocal enabledelayedexpansion

rem Delete older .pyc files
rem for /r %%i in (*.pyc) do del "%%i"

rem Run required migrations
set FLASK_APP=core\server.py

rem flask db init -d core\migrations\
rem flask db migrate -m "Initial migration." -d core\migrations\
rem flask db upgrade -d core\migrations\

rem Run server
gunicorn -c gunicorn_config.py core.server:app
