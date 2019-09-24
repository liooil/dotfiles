# configs
configs for sync

# Windows
```PowerShell
# Set Execution Policy
Set-ExecutionPolicy AllSigned 
# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Install Windows Terminal
choco install microsoft-windows-terminal
# Install python
choco install python
```

# Linux
```bash
apt update
apt install zsh git
# install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
