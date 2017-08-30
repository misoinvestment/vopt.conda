cd /D %~dp0

set BUILD_GLPK=1

call activate vopt

conda install --yes --quiet ^
anaconda coverage ecos django=1.10 flask gevent greenlet markdown psycopg2 sphinx_rtd_theme && ^
conda install --yes --quiet cvxopt && ^
conda install --yes --quiet -c conda-forge fabric3 && ^
pip install ^
awscli coreapi cvxpy django-crispy-forms django-filter django-guardian django-jinja djangorestframework ^
eve flask-restplus flask-security flask_sqlalchemy json-rpc SQLAlchemy-Continuum tushare && ^
call deactivate
cmd.exe /K
