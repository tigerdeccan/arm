Get-WinEvent -LogName "Microsoft-Windows-Dsc/Operational"

Wevtutil.exe set-log "Microsoft-Windows-Dsc/Analytic" /q:true /e:true


Wevtutil.exe set-log "Microsoft-Windows-Dsc/Debug" /q:true /e:true