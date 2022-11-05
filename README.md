# TheRock's dotfiles

Just an effort to make my work funnier + easier :D

## Installation

Use the package manager [snapd](https://snapcraft.io/nvim) to install Neovim.

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
