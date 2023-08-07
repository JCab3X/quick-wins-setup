# Quick Win(dow)s Setup

These are scripts to get a fresh installation of windows ready to work. Can be useful for a new desktop computer, or, especially, for a cloud-based computer to quickly use.

This repository includes:

* A script based on *winget*, and one based on  *chocolatey* for installing packages. See the patterns and software listed and tweak it to your own preferences.

* Miniscripts/code snippets to setup an administrative user
* Miniscripts/code to activate or deactivate Windows Remote Desktop Protocol (RDP) for remote access to the graphical interface.

**Note:** Another quick way to install software is by visiting https://ninite.com/ - It has a good selection of sofware and a simple web interface. The current scripts structure allow for a larger selection of software (through the winget or chocolatey repositories) and a way to tweak them for a repeatable use tailored to your needs. 



## Winget option

If your system has winget installed you can directly use the script "Winget-QuickWins-InstallSoftware.bat" (and if it isn't installed but you want to have it, the chocolatey script from the next section can install it for you).

> **Here is a one-liner** to download and install only *git*, and to clone this repository
```Batch  
cd %USERPROFILE% && curl https://raw.githubusercontent.com/JCab3X/quick-wins-setup/main/Winget-QuickWins-InstallSoftware.bat -o wingetscript.bat && wingetscript.bat && refreshenv && git clone https://github.com/JCab3X/quick-wins-setup.git  && cd quick-wins-setup && explorer .
```  
 To use it, open cmd as an administrator and paste it, it will change directory to your user's home directory, download the script and execute it (the script will first install *git*, download this repository and open the newly created folder to allow you to easily tweak the scripts).

To tweak the software you want to install, open the script with *notepad.exe* (or any other text editor), and remove the two colons `::` in front of software lines that you want to install and save the file. If you want to look for additional software id's an easy way is using https://winstall.app/ but you may also use `winget search "Name of your software"`in cmd or powershell.

The first time you use winget, you may need to accept license terms.

Once your list of desired software is ready, you can open the script as an administrator (right click - Run as administrator), or first open *cmd* as an administrator (right click - Run as administrator), and then run it from there.

## Chocolatey option

Chocolatey is a package manager for windows, it is not installed by default in Windows but you can easily install it in a few commands.

> **Here is a one-liner** to download and install *chocolatey* and its GUI (graphic user interface), then install only *git* through chocolatey, and clone this repository: 
``` Powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); cd ~; Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JCab3X/quick-wins-setup/main/Chocolatey-QuickWins-InstallSoftware.bat" -OutFile chocolateyscript.bat; .\chocolateyscript.bat;  $Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine"); git clone https://github.com/JCab3X/quick-wins-setup.git ; cd quick-wins-setup ; explorer.exe .
```  
  To use it, open powershell as an administrator and paste it, it will first install chocolatey and its GUI, then change directory to your user's home directory, download the script and execute it (the script will install *chocolatey* and *git*, download this repository and open the newly created folder to allow you to easily tweak the scripts).


Additional information on how to do this process manually, and things to take into account when using *chocolatey* is available in the following sections 

### Installing chocolatey manually

Open *PowerShell* as an administrator (right click - Run as administrator).

*Adapted from https://chocolatey.org/install :*

Note that, by default, executing powershell scripts (.ps1) is disabled in windows. 

* You must ensure Get-ExecutionPolicy is not Restricted. 
Run `Get-ExecutionPolicy`. If it returns Restricted then:

* Run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.

* Run the following command

```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

In their webpage there is more information about security, ways to install it as a non-administrative user, and details about the script.

### Tweak and use the script

First, open the script with *notepad.exe* (or any other text editor), and remove the two colons `::` in front of software lines that you want to install and save the file.

If you want to look for additional software ID's an easy way is using https://community.chocolatey.org/packages (Note: the chocolateygui package (it is the first installed software in the script) allows you to find and install sofware using a graphical interface (i.e. similar to an app store). This can also be useful for finding the package names for future tweaking of the script to your needs.)

In powershell, run either `.\Chocolatey-QuickWins-InstallSoftware.bat` (if you are in the same directory where the script you tweaked is located) or `C:\absolute\path\to\Chocolatey-QuickWins-InstallSoftware.bat` (you can check it in windows explorer *with shift + right click* and then selecting *"Copy as path"*)

Alternatively, you can simply open the script as an administrator (right click - Run as administrator), or first open *cmd* as an administrator (right click - Run as administrator), and then run it from there.


## Optional snippets:

### Cloning the github repository

If you did not use any of the one-line options above and want to clone this repository, you can install *git* (through the scripts or manually and use  `git clone https://github.com/JCab3X/quick-wins-setup.git` in cmd or powershell

### Adding an user 

The script in the "Users" folder can help you to quickly create a local user for the computer, just tweak it (you need to specify a username and password to add to the local machine), and run it as administrator.

### Activating Windows Remote Desktop (RDP)

To have remote access to the graphical user interface of your computer, you can use Windows Remote Desktop. It is installed by default and allows configuring remote access in several (but not all) Windows versions. 

To quickly setup RDP, you can download the script in the in the "RDP" folder, and run either the *"Enable"* or *"Disable"* scripts as an administrator.

To use RDP, you need a way to be able to communicate with the machine, some options are: 

* **A local ip address** - You already have one if the computer is reachable through your local network, check it using `ipconfig /all`.
* **An ip reachable over a VPN** - Two extremely easy to use are Tailscale and ZeroTier (in the *"Overlay network / VPN managers"* section in the scripts), check their webpages for further information. Other popular tools include *Wireguard, OpenVPN, NetMaker, and Nebula*. You can look for more information or tutorials online.
* **A public ip address** - Usually easy to do if you are using a cloud computer. In this case, follow your providers instructions, and make sure to have a strong password. Note that while the RDP protocol is encrypted, because a public ip address is usually reachable from anywhere on the internet, it might not be the most secure. Consider tweaking your firewall settings and researching more about security options if you decide to go with this option. 

**Note:** If your Windows version does not allow activating remote access through RDP, or you prefer other options, popular remote desktop software for this purpose is included in the scrips from the previous step, in the *Examples of remote access software* section. Cloud providers also sometimes offer their own options to access (either through a web browser or through dedicated sofware client), check their documentation to learn more.


## Next steps:

After the previous steps, you are likely ready to use your computer as you normally would. You can install additional packages as needed through winget or chocolatey, or through other means (downloading and installing, or other package managers such as *Scoop*). You may also want to manage the computer through more advanced solutions such as *Ansible, Chef or Puppet*
