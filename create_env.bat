cd /D %~dp0

conda create --name vopt --yes python=2 pip menuinst
call activate vopt

REM Windows only. Numpy and related packages must be installed using pip
pip install windows_packages\numpy-1.12.0+mkl-cp27-cp27m-win_amd64.whl
pip install windows_packages\scipy-0.19.0-cp27-cp27m-win_amd64.whl
pip install windows_packages\cvxopt-1.1.9-cp27-cp27m-win_amd64.whl
pip install windows_packages\CVXcanon-0.1.1-cp27-cp27m-win_amd64.whl
pip install windows_packages\cvxpy-0.4.9-py2-none-any.whl
pip install matplotlib pandas seaborn statsmodels

conda install --yes --quiet coverage dateutil django ipython nose notebook psycopg2 qtconsole xlrd xlwt

call deactivate
cmd.exe /K