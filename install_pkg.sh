#!/usr/bin/env bash

# set environment
export COIN_INSTALL_DIR=/usr/local/src/Cbc-2.8.9
export LD_LIBRARY_PATH="/usr/local/src/Cbc-2.8.9.9/lib:$LD_LIBRARY_PATH"
export GLPK_LIB_DIR=/usr/local/lib
export GLPK_INC_DIR=/usr/local/include
export BUILD_GLPK=1

echo "Python package installing..."
source activate vopt && \
conda install --yes --quiet \
anaconda coverage ecos django=1.10 flask gevent greenlet markdown psycopg2 sphinx_rtd_theme && \
conda install --yes --quiet -c conda-forge fabric3 && \
conda update --yes --quiet libgcc && \
pip install \
gunicorn pudb uwsgi \
&& \
pip install \
awscli coreapi cvxopt cvxpy django-crispy-forms django-filter django-guardian django-jinja djangorestframework \
eve flask-restplus flask-security flask_sqlalchemy json-rpc SQLAlchemy-Continuum tushare \
&& echo

echo "CyLP package for Python3 installing..."
pip install git+https://github.com/jjhelmus/CyLP.git@py3

source deactivate
