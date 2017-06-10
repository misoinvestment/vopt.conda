cd /D %~dp0

conda create --name vopt --yes python=3.5 pip menuinst
call activate vopt

call create_env_1.bat
call create_env_2.bat
call create_env_3.bat

call deactivate
cmd.exe /K