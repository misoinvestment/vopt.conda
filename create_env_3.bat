cd /D %~dp0

call activate vopt

pip install windows_packages\numpy-1.12.1+mkl-cp35-cp35m-win_amd64.whl
pip install windows_packages\cvxopt-1.1.9-cp35-cp35m-win_amd64.whl
pip install windows_packages\CVXcanon-0.1.1-cp35-cp35m-win_amd64.whl
pip install windows_packages\fastcache-1.0.2-cp35-cp35m-win_amd64.whl
pip install windows_packages\scs-1.2.6-cp35-cp35m-win_amd64.whl
pip install windows_packages\multiprocess-0.70.5-cp35-cp35m-win_amd64.whl
pip install windows_packages\ecos-2.0.4-cp35-cp35m-win_amd64.whl
pip install windows_packages\cvxpy-0.4.10-py3-none-any.whl

pip install coreapi django-crispy-forms django-filter django-guardian django-jinja djangorestframework json-rpc

call deactivate
cmd.exe /K