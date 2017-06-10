cd /D %~dp0

call activate vopt

conda remove --yes --quiet --force numpy

call deactivate
cmd.exe /K