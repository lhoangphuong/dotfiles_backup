# TheRock's dotfiles

Just an effort to make my work funnier + easier :smiley:

## Setup
[Neovim](https://neovim.io/) Hyperextensible Vim-based text editor  
[Tmux](https://github.com/tmux/tmux/wiki) A terminal multiplexer  

## Installation

#### Install Neovim from source
```bash
#Get Build prerequisites
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen

#Clone the source code
git clone --depth 1 --branch stable https://github.com/neovim/neovim.git

#Compile
make CMAKE_BUILD_TYPE=Release
sudo make install

#Optional - install ripgrep to use with Telescope
sudo apt install ripgrep
```
#### Install Neovim using Debian Package
```bash
#Download stable Debian Package
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb

#Install the package
sudo apt install ./nvim-linux64.deb

#Optional - install ripgrep to use with Telescope
sudo apt install ripgrep
```
#### Or install Neovim using [snapd](https://snapcraft.io/nvim)
```bash
#Install snap
sudo apt install snapd

#Add snap to $PATH (if not already exist)
grep -qxF 'export PATH="$PATH:/snap/bin"' ~/.zshrc || echo 'export PATH="$PATH:/snap/bin"' >> ~/.zshrc

#Install latest Neovim with snap
sudo snap install --classic nvim

#Optional - install ripgrep to use with Telescope
sudo apt install ripgrep
```

## Usage
#### To sync dotfiles from remote to local
```bash
#Sync the changes
mkdir -p ~/.config/nvim
rsync -avuh --delete ./dot_config/nvim ~/.config
```

#### How to use the Windows clipboard from WSL?
```bash
#If Neovim is only installed within our WSL distribution, we can just install win32yank.exe manually:
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)


