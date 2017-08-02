cd /D %~dp0

conda create --name vopt --yes python=3.5 pip menuinst
call activate vopt

conda install --yes --quiet anaconda coverage django=1.10 flask markdown psycopg2
conda update --yes --quiet libgcc

call deactivate
cmd.exe /K
