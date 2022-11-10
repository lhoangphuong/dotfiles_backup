# TheRock's dotfiles

Just an effort to make my work funnier + easier :smiley:

## Setup

I figure out the best combo so far  

[Neovim](https://neovim.io/) Hyperextensible Vim-based text editor  
[Tmux](https://github.com/tmux/tmux/wiki) A terminal multiplexer  
[Chezmoi](https://www.chezmoi.io/) Manage dotfiles across multiple diverse machines, securely

## Installation

#### Install Neovim using Debian Package
```bash
#Download stable Debian Package
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb

#Install the package
sudo apt install ./nvim-linux64.deb
```
#### Or install Neovim using [snapd](https://snapcraft.io/nvim)
```bash
#Install snap
sudo apt install snapd

#Add snap to $PATH (if not already exist)
grep -qxF 'export PATH="$PATH:/snap/bin"' ~/.zshrc || echo 'export PATH="$PATH:/snap/bin"' >> ~/.zshrc

#Install latest Neovim with snap
sudo snap install --classic nvim
```

## Usage

Very simple, init everything using [chezmoi](https://www.chezmoi.io/)
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply lhoangphuong
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
