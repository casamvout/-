@echo off

:: Set registry key to disable Task Manager
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Task Manager is disabled.
) else (
    echo Error setting registry key to disable Task Manager.
)

:: Set registry key to disable Registry Editor
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Registry Editor is disabled.
) else (
    echo Error setting registry key to disable Registry Editor.
)

:: Set registry key to disable Command Prompt
reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Command Prompt is disabled.
) else (
    echo Error setting registry key to disable Command Prompt.
)

:: Set registry key to hide drives
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDrives /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Drives are hidden.
) else (
    echo Error setting registry key to hide drives.
)

:: Set registry key to restrict access to snap-ins
reg add "HKCU\Software\Policies\Microsoft\MMC" /v Restrict_Run /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Access to snap-ins is restricted.
) else (
    echo Error setting registry key to restrict access to snap-ins.
)

:: Set registry key to disable Control Panel
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Control Panel is disabled.
) else (
    echo Error setting registry key to disable Control Panel.
)

:: Set registry key to disable Run command
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Run command is disabled.
) else (
    echo Error setting registry key to disable Run command.
)

:: Set registry key to disable Find command
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFind /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Find command is disabled.
) else (
    echo Error setting registry key to disable Find command.
)

:: Set registry key to disable Windows keys
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Windows keys are disabled.
) else (
    echo Error setting registry key to disable Windows keys.
)

:: Set registry key to disable Logoff functionality
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLogoff /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo Logoff functionality is disabled.
) else (
    echo Error setting registry key to disable Logoff functionality.
)

:: Set registry key to disable System Restore
reg add "HKLM\Software\Policies\Microsoft\Windows NT\SystemRestore" /v DisableSR /t REG_DWORD /d 1 /f
if %errorlevel% equ 0 (
    echo System Restore is disabled.
) else (
    echo Error setting registry key to disable System Restore.
)

pause
