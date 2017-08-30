# vopt.conda

## Description

`vopt.conda` repository provides the scripts to install
a conda virtual enviroment named `vopt` for `vopt` Veranos Optimizer 

`vopt` virtual enviroment consist of:

* Python 3.5 and other python packages
* for package details, read `vopt-environment.yml`


## Prerequisite

* OS

  * Ubuntu 16.04
  * Mac OS X with Docker Toolbox

* You need to install Anaconda or Miniconda. 

  Download 64-bit Python 3.6 version from
    * https://www.continuum.io/downloads
    * https://conda.io/miniconda.html

  and execute:
  ```
  $ bash Anaconda3-4.4.0-Linux-x86_64.sh
  ```
  or
  ```
  $ bash Miniconda3-latest-Linux-x86_64.sh
  ```


## Installation

### Linux/MacOSX

1. `$ source install_lib.sh` : install linux libraries
1. `$ source create_env.sh` : create virtual environment
1. `$ source install_pkg.sh` : install Python packages


### Windows (No GLPK/CBC library)

1. `$ create_env.bat` : create virtual environment
1. `$ install_pkg.bat` : install Python packages


## Using Environment

* activate the environment.
  ```
  $ source activate vopt
  ```

* deactivate the environment.
  ```
  $ source deactivate
  ```

## Uninstallation

### Linux/MacOSX

```
$ source delete_env.sh
```

### on Windows

```
$ delete_env.bat
```

## Using Docker Image with Pre-Installed Enviroment

1. (Optionally on Mac/Windows) Install docker-toolbox
1. (Optionally on Mac/Windows) Start a docker machine using Docker QuickStart Terminal
1. Download a docker image from dockerhub
   ```
   $ docker pull veranostech/vopt
   ``` 
   
   or you can build the docker image on you computer.
   
   For details, read https://github.com/VeranosTech/vopt.docker
 
1. Run the docker image
   ``` 
   $ docker run -Pit --name vopt veranostech/vopt
   ```    


