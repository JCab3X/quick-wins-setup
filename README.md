# Quick Win(dow)s Setup

These are scripts to get a fresh installation of windows ready to work. Can be useful for a new desktop computer, or, especially, for a cloud-based computer to quickly use.

It includes a script based on *winget*, and one based on  *chocolatey*.

See the patterns and software listed and tweak it to your own preferences.


## Winget option

If your system has winget installed you can directly use the script "Winget-QuickWins-InstallSoftware.bat"

First, open it with *notepad.exe* (or any other text editor), and remove the two colons `::` in front of software lines that you want to install and save the file.

If you want to look for additional software id's an easy way is using https://winstall.app/ but you may also use `winget search "Name of your software"`

The first time you use winget, you may need to accept license terms.

Once your list of desired software is ready, you can open the script as an administrator (right click - Run as administrator), or first open *cmd* as an administrator (right click - Run as administrator), and then run it from there.

## Chocolatey option

### Install chocolatey (~30 secs + installation time)

Open *PowerShell* as an administrator (right click - Run as administrator).

By default, executing powershell scripts (.ps1) is disabled in windows. 

Adapted from https://chocolatey.org/install :

* You must ensure Get-ExecutionPolicy is not Restricted. 
Run `Get-ExecutionPolicy`. If it returns Restricted then:

* Run `Set-ExecutionPolicy AllSigned` (more secure) or 
`Set-ExecutionPolicy Bypass -Scope Process`.

* Run the following command

```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

In their webpage there is more information about security, ways to install it as a non-administrative user, and details about the script.

### Use the script

First, open the script with *notepad.exe* (or any other text editor), and remove the two colons `::` in front of software lines that you want to install and save the file.

If you want to look for additional software id's an easy way is using https://community.chocolatey.org/packages (Note: the chocolateygui package (it is the first installed software in the script) allows you to find and install sofware using a graphical interface (i.e. similar to an app store). This can also be useful for finding the package names for future tweaking of the script to your needs.)

Still within powershell, run either `.\Chocolatey-QuickWins-InstallSoftware` (if you are in the same directory where the script is located) or `C:\absolute\path\to\Chocolatey-QuickWins-InstallSoftware` (you can check it in windows explorer *with shift + right click* and then selecting *"Copy as path"*)

Alternatively, you can simply open the script as an administrator (right click - Run as administrator), or first open *cmd* as an administrator (right click - Run as administrator), and then run it from there.







