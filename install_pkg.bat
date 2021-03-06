cd /D %~dp0

# environment variables
set GLPK_LIB_DIR=C:\Anaconda3\envs\vopt\Library\lib
set GLPK_INC_DIR=C:\Anaconda3\envs\vopt\Library\include
set BUILD_GLPK=1

echo "Python package installing..."
call activate vopt

echo "Common Anaconda Packages:" && ^
conda install --yes --quiet -c anaconda ^
anaconda ^
alembic ^
beautifulsoup4 ^
constantly ^
coverage ^
cvxcanon ^
cvxopt ^
django ^
ecos ^
flask ^
gevent ^
greenlet ^
hyperlink ^
incremental ^
ipyparallel ^
krb5 ^
line_profiler ^
matplotlib ^
markdown ^
nose ^
pymongo ^
psycopg2 ^
requests ^
scikit-learn ^
scrapy ^
seaborn ^
simplejson ^
sphinx ^
sphinx_rtd_theme ^
toolz ^
twisted ^
werkzeug ^
lxml ^
cython ^
&& ^
echo "Common Anaconda Packages in Conda-Forge:" && ^
conda install --yes --quiet -c conda-forge ^
aniso8601 ^
awscli ^
fabric3 ^
fastparquet ^
feather-format ^
glpk ^
jupyter_nbextensions_configurator ^
multiprocess ^
pyarrow ^
&& ^
echo "Common pip Packages:" && ^
pip install ^
autopep8 ^
coreapi ^
cvxpy ^
django-crispy-forms ^
django-filter ^
django-guardian ^
django-jinja ^
djangorestframework ^
eve ^
flask-restplus ^
flask-security ^
flask_sqlalchemy ^
json-rpc ^
nbsphinx ^
scrapyd ^
SQLAlchemy-Continuum ^
tushare ^
&& ^
echo "Jupyter notebook setting:" && ^
ipcluster nbextension enable --user && ^
jupyter nbextensions_configurator enable --user && ^

call deactivate
cmd.exe /K
