cd /D %~dp0

conda create --name vopt --yes python=3.5 pip menuinst
call activate vopt

conda install --yes --quiet anaconda coverage django markdown psycopg2

call deactivate
cmd.exe /K