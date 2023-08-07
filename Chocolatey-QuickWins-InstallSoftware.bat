:::: Uncomment a line by removing the initial two colons to install it. Or add additional lines following the same pattern if needed.
:::: Check the README file for info on how to find the names of the packages
:::: If you are using notepad.exe to edit this file, you can use replace all searching for ":: " (keep the space at the end!) for "" (an empty string) to uncomment all packages, the code comments themselves will be spared.
:::: Some packages have a portable version, examples: rclone.portable peazip.portable rustdesk.portable

:::: GUI for chocolatey
choco install -y chocolateygui

:::: Examples of remote access software
:: choco install -y rustdesk
:: choco install -y parsec
:: choco install -y teamviewer
:: choco install -y teamviewer.host
:: choco install -y nomachine

:::: Utilities
:: choco install -y winget-cli
:: choco install -y powertoys
:: choco install -y Everything
:: choco install -y wox
:: choco install -y peazip
:: choco install -y 7zip
:: choco install -y trayit

:::: Basic software to work with documents
:: choco install -y libreoffice-fresh
:: choco install -y adobereader
:: choco install -y FoxitReader

:::: Web browser
:: choco install -y GoogleChrome
:: choco install -y firefox

:::: Overlay network / VPN managers
:: choco install -y tailscale
:: choco install -y zerotier-one

:::: Cloud storage access
:: choco install -y googledrive
:: choco install -y dropbox
:: choco install -y rclone

:::: Password Managers
:: choco install -y 1password4
:: choco install -y bitwarden
:: choco install -y lastpass

:::: Development tools - for Python, double check the version you need
:: choco install -y python3
:: choco install -y vscode
choco install -y git


