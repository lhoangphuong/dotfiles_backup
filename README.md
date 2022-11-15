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
#### Very simple, init everything using [chezmoi](https://www.chezmoi.io/)
```bash
#Install/Init chezmoi the first time
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply lhoangphuong

#Updating your dotfiles on any machine is a single command
./bin/chezmoi update
```

#### To push new dotfiles to git
```bash
#Open a shell in the source chezmoi directory
./bin/chezmoi cd

#Sync the changes
rsync -avuh  ~/.config/nvim ./dot_config

#Commit your changes
git add .
git commit -m "update dotfiles"
git push
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
