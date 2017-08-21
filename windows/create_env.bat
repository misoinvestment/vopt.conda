cd /D %~dp0

conda create --name vopt --yes python=3.5 pip menuinst
call activate vopt

conda install --yes --quiet ^
anaconda coverage django=1.10 flask gevent greenlet gunicorn markdown psycopg2 sphinx_rtd_theme

call deactivate
cmd.exe /K
