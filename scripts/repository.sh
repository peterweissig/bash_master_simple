#!/bin/bash

#***************************[needed external variables]***********************
# 2018 11 30

# MASTER_PATH_WORKSPACE


#***************************[server]******************************************
# 2018 11 30

# note: this is already set in file bash/repo/list.sh
export REPO_ROOT_GITHUB_URL="https://github.com/peterweissig/"


#***************************[bash]********************************************
# 2018 11 30

# paths
# note: this is already set in file bash/repo/list.sh
export REPO_BASH_PATH="${MASTER_PATH_WORKSPACE}bash/"

# repos
# note: this is already set in file bash/repo/list.sh
export REPO_BASH_REPO=("${REPO_BASH_PATH}repo/" \
  "${REPO_ROOT_GITHUB_URL}bash_repo.git")

alias git_clone_bash_repo="_repo_git_clone ${REPO_BASH_REPO[*]}"
alias git_pull_bash_repo="_repo_git_pull \"${REPO_BASH_REPO[0]}\""
alias git_push_bash_repo="_repo_git_push \"${REPO_BASH_REPO[0]}\""
alias git_status_bash_repo="_repo_git_st \"${REPO_BASH_REPO[0]}\""

# main scripts
# note: this is already set in file bash/repo/list.sh
export REPO_BASH_MASTER_BASHONLY=("${REPO_BASH_MASTER_PATH}bash_only/" \
  "${REPO_ROOT_GITHUB_URL}bash_master.git")

alias git_clone_bash_master="_repo_git_clone \
  ${REPO_BASH_MASTER_BASHONLY[*]}"
alias git_pull_bash_master="_repo_git_pull \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\""
alias git_push_bash_master="_repo_git_push \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\""
alias git_status_bash_master="_repo_git_st \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\""


#***************************[global update and stat]**************************
# 2018 11 30

alias master_repo_update="repo_pull_all"
alias master_repo_status="repo_status_all"

