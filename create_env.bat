cd /D %~dp0

conda create --name vopt --yes
call activate vopt

pip install windows_packages\numpy-1.12.0+mkl-cp27-cp27m-win_amd64.whl
pip install windows_packages\cvxopt-1.1.9-cp27-cp27m-win_amd64.whl
pip install windows_packages\cvxpy-0.4.9-py2-none-any.whl

conda install --yes --quiet django ipython matplotlib nose notebook pandas psycopg2 qtconsole scipy statsmodels xlrd xlwt
call deactivate
cmd.exe /K
