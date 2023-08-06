:: Needs to be executed as administrator Info from: https://pureinfotech.com/enable-remote-desktop-command-prompt-windows-10

:: Disables remote desktop
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f

:: Disable it through the firewall
:: netsh advfirewall firewall set rule group="remote desktop" new enable=No

