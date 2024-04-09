@echo off
:: Set execution policy to bypass for the current process
PowerShell -Command "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass"

:: Run the PowerShell script
PowerShell -File ".\mlis.ps1"
