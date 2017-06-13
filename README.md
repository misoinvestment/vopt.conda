# vopt.conda

Anaconda environment tools for `vopt` python package


## Installation

You can create or delete a conda environment named `vopt` for vopt python package.

### On Windows

1. Install Anaconda 4.4.0 or Minicoda. Any python version is ok.
    * https://www.continuum.io/downloads
    * https://conda.io/miniconda.html
1. Using 7zip, join `windows_packages\numpy-1.12.1+mkl-cp35-cp35m-win_amd64.7z.001` and `windows_packages\numpy-1.12.1+mkl-cp35-cp35m-win_amd64.7z.002`.
1. Execute `create_env1.bat` as administrator.
1. Execute `create_env2.bat` as administrator.
1. Execute `create_env3.bat` as administrator.

### On Linux, Mac

1. Install Anaconda 4.4.0 or Minicoda. Any python version is ok.
    * https://www.continuum.io/downloads
    * https://conda.io/miniconda.html
1. Execute `create_env.sh`.


## Uninstallation

### On Windows

1. Execute `delete_env.bat` as administrator.

### On Linux, Mac

1. Execute `delete_env.sh`.


## Activation

### On Windows

1. Execute `activate vopt`.

### On Linux, Mac

1. Execute `source activate vopt`.


## Deactivation

### On Windows

1. Execute `deactivate`.

### On Linux, Mac

1. Execute `source deactivate`.
