# vopt.conda

## Description

vopt.conda is a conda virtual enviroment for vopt(Veranos Optimizer)

* Python 3.5 and other basic packages
* read vopt-environment.yml


## Prerequisite

* You need Anaconda or Miniconda. Any version is OK.
    * https://www.continuum.io/downloads
    * https://conda.io/miniconda.html

* For linux, install libgl1-mesa-glx
   ```
   $ sudo apt install libgl1-mesa-glx
   ```

* For Mac and Windows, recommend to use Docker-Toolbox 
  and the `veranostech/vopt` docker image in which `vopt` enviroment is already installed.


## Installation

You can create or delete a conda environment named `vopt` for vopt python package.

### On Linux

1. `$ source create_env.sh`
1. `$ source install_pkg.sh`

### On Mac and Windows Docker-Toolbox

1. Install docker-toolbox
1. Start a docker machine using Docker QuicStart Terminal or type:
1. Pull a docker image from dockerhub
   ```
   $ docker pull veranostech/vopt
   ``` 
1. Run the docker image
   ``` 
   $ docker run -Pit --name vopt veranostech/vopt
   ```    

### On Mac (Local Installation)

1. `$ source install_lib.sh` (install CBC and GLPK)
1. `$ source create_env.sh`
1. `$ source install_pkg_mac.sh`

### On Windows (Local Installation)

1. Download and install 7zip. Add path to ``7z.exe``.
    * download 7zip at http://www.7-zip.org/download.html
1. Execute `create_env.bat` as administrator.
1. Execute `remove_numpy.bat` as administrator. (Remove Non-MKL NumPy)
1. Execute `install_pkg.bat` as administrator. (Re-install MKL NumPy)


## Uninstallation

### On Linux, Mac

1. `$ source delete_env.sh`

### On Windows

1. Execute `delete_env.bat` as administrator.


## Activation

### On Linux, Mac

1. `$ source activate vopt`

### On Windows

1. `$ activate vopt`


## Deactivation

### On Linux, Mac

1. `$ source deactivate`

### On Windows

1. `$ activate vopt`

