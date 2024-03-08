# cat install.bat 
@echo off
powershell -Command "if ((Get-ExecutionPolicy) -eq 'Restricted') {Set-ExecutionPolicy RemoteSigned -Scope Process -Force}"
powershell -ExecutionPolicy Bypass -File "%~dp0install_chocolatey.ps1"
powershell -Command "Set-ExecutionPolicy Restricted -Scope Process -Force"
pause
