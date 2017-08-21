#!/usr/bin/env bash

export COIN_INSTALL_DIR=/usr/local/src/Cbc-2.9.9
export LD_LIBRARY_PATH="/usr/local/src/Cbc-2.9.9/lib:$LD_LIBRARY_PATH"
export GLPK_LIB_DIR=/usr/local/lib
export GLPK_INC_DIR=/usr/local/include
export BUILD_GLPK=1

echo "Python package installing..."
source activate vopt && \
conda install --yes --quiet \
anaconda coverage django=1.10 flask gevent greenlet gunicorn markdown psycopg2 sphinx_rtd_theme && \
conda update --yes --quiet libgcc && \
conda install --yes --quiet -c conda-forge fabric3 && \
pip install \
cvxopt cvxpy \
awscli coreapi django-crispy-forms django-filter django-guardian django-jinja djangorestframework \
eve flask-restplus flask-security flask_sqlalchemy json-rpc SQLAlchemy-Continuum tushare uwsgi \
&& echo

echo "CyLP package for Python3 installing..."
cd ~ && \
mkdir -p Code && \
cd Code && \
rm -rf CyLP && \
git clone https://github.com/jjhelmus/CyLP.git &&
cd CyLP/ && \
git checkout py3 && \
python setup.py install && \
cd ~ && \
echo

source deactivate
