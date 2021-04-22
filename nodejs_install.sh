#!/bin/bash

function program_doesnt_exist {
  local return_=1
  type $1 >/dev/null 2>&1 || { local return_=0; }
  return $return_
}

# install nodejs lts
if program_doesnt_exist node; then
  curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
  sudo apt install -y nodejs
fi