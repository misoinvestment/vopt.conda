#!/usr/bin/env bash

conda create --name vopt --yes python=2 pip && \
source activate vopt && \
conda install --yes --quiet -c conda-forge cvxopt && \
conda install --yes --quiet -c cvxgrp cvxpy && \
conda install --yes --quiet matplotlib pandas seaborn statsmodels && \
conda install --yes --quiet coverage dateutil django ipython nose notebook psycopg2 qtconsole xlrd xlwt && \
source deactivate
