#!/bin/bash

# Function
check_nvim() {
  if [ -d "~/.config/nvim" ] 
  then
    echo "Directory ~/.config/nvim exists." 
  else
    echo "Error: Directory ~/.config/nvim does not exists. Creating..."
    mkdir -p ~/.config/nvim
  fi
}

sync_remote_local() {
  rsync -avuh --delete ./dot_config/nvim 
}

sync_local_remote() {
  rsync -avuh --delete ~/.config ./dot_config/nvim
}

basic_select() {
  PS3="Select your action please: "
  
  select action in sync_remote_local sync_local_remote Quit
  do
    case $action in
      "sync_remote_local")
        printf ".\n.\n.\n Changes from git are put to local"
        check_nvim
        sync_remote_local
        break;;
      "sync_local_remote")
        printf ".\n.\n.\n Changes from local are push to git"
        sync_local_remote
        break;;
      "Quit")
        echo "We're done"
        break;;
      *)
        echo "Ooops";;
    esac
  done
}


# MAIN
basic_select