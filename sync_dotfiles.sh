#!/bin/bash

mkdir -p ~/.config/nvim
rsync -avuh --delete ./dot_config/nvim ~/.config