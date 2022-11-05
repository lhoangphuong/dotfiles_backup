# TheRock's dotfiles

Just an effort to make my work funnier + easier :smiley:

## Setup

I figure out the best combo so far  

[Alacritty](https://alacritty.org/) A fast, cross-platform, OpenGL terminal emulator  
[Neovim](https://neovim.io/) Hyperextensible Vim-based text editor  
[Tmux](https://github.com/tmux/tmux/wiki) A terminal multiplexer 

## Installation
1/ Install Alacritty using chocolatey
```
choco install Alacritty
```

2/ Install Neovim using [snapd](https://snapcraft.io/nvim)
```bash
#Install snap
sudo apt install snapd

#Add snap to $PATH (if not already exist)
grep -qxF 'export PATH="$PATH:/snap/bin"' ~/.zshrc || echo 'export PATH="$PATH:/snap/bin"' >> ~/.zshrc

#Install latest Neovim with snap
sudo snap install --classic nvim

```

## Usage

```bash
To be added
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
