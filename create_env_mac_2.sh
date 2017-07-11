#!/usr/bin/env bash

source activate vopt && \
conda install --yes --quiet anaconda coverage django=1.10 flask markdown psycopg2 && \
conda install --yes --quiet -c cvxgrp cvxopt cvxpy && \
pip install \
coreapi django-crispy-forms django-filter django-guardian django-jinja djangorestframework \
eve flask-restplus flask-security flask_sqlalchemy json-rpc SQLAlchemy-Continuum tushare \
&& echo
source deactivate
