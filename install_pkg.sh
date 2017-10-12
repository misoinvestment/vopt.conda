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

#!/usr/bin/env bash

case `uname` in

  Linux)
    if type lsb_release >/dev/null 2>&1; then
      OS=$(lsb_release -si)
      VER=$(lsb_release -sr)

      if [ "$OS" == "Ubuntu" ] && [ "$VER" == "16.04" ]; then
	  pip install py3_ortools-6.4.4495-cp35-cp35m-manylinux1_x86_64.whl
	  return
      else
          echo "Error! Support Ubuntu 16.04 only."
          return
      fi

    else
       echo "Error! Cannot find linux version."
       return
    fi
    ;;

  Darwin)
     pip install py3_ortools-6.4.4495-cp35-cp35m-macosx_10_6_intel.whl
     return
     ;;

  *)
     echo "Error! Unsupported OS."
     return
     ;;

esac

source deactivate
