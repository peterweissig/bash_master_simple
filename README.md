# bash_master_simple
Simple master scripts for collection of daily scripts.

## Setup for linux (Ubuntu)
create workspace directory

    mkdir -p ~/workspace
    cd ~/workspace


download scripts

    wget -nv https://raw.githubusercontent.com/PeterWeissig/bash_master_simple/master/checkout.sh
    bash ./checkout.sh


checkout additionals repositories (e.g. common bash scripts)

    repo_clone_bash
    repo_help #list of all referenced repositories

## build state
[![Build Status](https://travis-ci.org/peterweissig/bash_master_simple.svg?branch=master)](https://travis-ci.org/peterweissig/bash_master_simple)
