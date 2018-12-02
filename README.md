# bash_roboag
Simple master scripts for collection of daily scripts.

## Setup for linux (Ubuntu)
create workspace directory

    mkdir -p ~/workspace
    cd ~/workspace


download scripts

    wget -nv https://raw.githubusercontent.com/PeterWeissig/bash_master/master/checkout.sh
    bash ./checkout.sh


checkout additionals repositories (e.g. robolib)

    repo_clone_bash
    repo_help #list of all referenced repositories

## build state
[![Build Status](https://travis-ci.org/peterweissig/bash_master.svg?branch=master)](https://travis-ci.org/peterweissig/bash_master)
