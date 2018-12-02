#!/bin/bash

#***************************[check if already sourced]************************
# 2018 11 30

if [ "$SOURCED_BASH_MASTER_BASHONLY" != "" ]; then

    return
    exit
fi

export SOURCED_BASH_MASTER_BASHONLY=1


#***************************[paths and files]*********************************
# 2018 11 30

export MASTER_PATH_SCRIPT="$(cd "$(dirname "${BASH_SOURCE}")" && pwd )/"
export MASTER_PATH_WORKSPACE="$(cd "${MASTER_PATH_SCRIPT}../../../" && \
  pwd )/"


#***************************[repository]**************************************
# 2018 11 30

. ${MASTER_PATH_SCRIPT}scripts/repository.sh

if [ -d "${REPO_BASH_REPO[0]}" ]; then
    export REPO_PATH_WORKSPACE="${MASTER_PATH_WORKSPACE}"
    . ${REPO_BASH_REPO[0]}bashrc.sh
fi


#***************************[config]******************************************
# 2018 11 30

if [ -d "${REPO_BASH_CONFIG[0]}" ]; then
    . ${REPO_BASH_CONFIG[0]}bashrc.sh
fi


#***************************[network]*****************************************
# 2018 11 30

if [ "${REPO_BASH_NETWORK[0]}" != "" ] && \
  [ -d "${REPO_BASH_NETWORK[0]}" ]; then
    . ${REPO_BASH_NETWORK[0]}bashrc.sh
fi


#***************************[multimedia]**************************************
# 2018 11 30

if [ "${REPO_BASH_MULTIMEDIA[0]}" != "" ] && \
  [ -d "${REPO_BASH_MULTIMEDIA[0]}" ]; then
    . ${REPO_BASH_MULTIMEDIA[0]}bashrc.sh
fi


#***************************[file]********************************************
# 2018 11 30

if [ "${REPO_BASH_FILE[0]}" != "" ] && \
  [ -d "${REPO_BASH_FILE[0]}" ]; then
    . ${REPO_BASH_FILE[0]}bashrc.sh
fi

