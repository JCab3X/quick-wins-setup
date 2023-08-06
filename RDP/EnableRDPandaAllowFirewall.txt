:: Needs to be executed as administrator Info from: https://pureinfotech.com/enable-remote-desktop-command-prompt-windows-10

:: Enable remote desktop
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

:: Optional, enable it through the firewall
:: netsh advfirewall firewall set rule group="remote desktop" new enable=Yes

