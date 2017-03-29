#!/usr/bin/env bash

conda create --name vopt --yes python && \
source activate vopt && \
conda install --yes --quiet -c conda-forge cvxopt && \
conda install --yes --quiet -c cvxgrp cvxpy && \
conda install --yes --quiet django ipython matplotlib nose notebook pandas psycopg2 qtconsole scipy statsmodels xlrd xlwt && \
source deactivate
