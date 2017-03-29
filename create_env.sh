#!/usr/bin/env bash

conda create --name vopt --yes pip python && \
source activate vopt && \
conda install --yes --quiet -c conda-forge cvxopt && \
conda install --yes --quiet -c cvxgrp cvxpy && \
conda install --yes --quiet matplotlib pandas seaborn statsmodels && \
conda install --yes --quiet django ipython nose notebook psycopg2 qtconsole xlrd xlwt && \
source deactivate
