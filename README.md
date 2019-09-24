# configs
configs for sync

# Windows 10.1903
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

# Linux Ubuntu.18.04
```bash
apt update
apt install zsh git wget
# install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Override default zsh config
wget https://raw.githubusercontent.com/liooil/configs/master/zsh/.zshrc -O /tmp/.zshrc
# install neovim
apt install neovim
```
