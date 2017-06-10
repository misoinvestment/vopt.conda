#!/usr/bin/env bash

conda create --name vopt --yes python=3.5 pip && \
source activate vopt && \
conda install --yes --quiet -c cvxgrp cvxopt cvxpy && \
pip install coreapi django django-crispy-forms django-filter django-guardian django-jinja djangorestframework json-rpc && \
conda install --yes --quiet anaconda coverage markdown psycopg2 && \
source deactivate
