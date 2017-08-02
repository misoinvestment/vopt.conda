#!/usr/bin/env bash

source activate vopt && \
conda install --yes --quiet anaconda coverage django=1.10 flask markdown psycopg2 && \
conda install --yes --quiet -c conda-forge fabric3 && \
conda update --yes --quiet libgcc && \
pip install \
cvxopt cvxpy \
coreapi django-crispy-forms django-filter django-guardian django-jinja djangorestframework \
eve flask-restplus flask-security flask_sqlalchemy json-rpc SQLAlchemy-Continuum tushare \
&& echo

cd ~ && \
mkdir -p Code && \
cd Code && \
rm -rf CyLP && \
git clone https://github.com/jjhelmus/CyLP.git &&
cd CyLP/ && \
git checkout py3 && \
python setup.py install && \
echo

source deactivate
