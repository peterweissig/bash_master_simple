#!/bin/bash

#***************************[check if already sourced]************************
# 2019 12 01

if [ "$SOURCED_BASH_MASTER_BASHONLY" != "" ]; then

    return
    exit
fi

if [ "$SOURCED_BASH_LAST" == "" ]; then
    export SOURCED_BASH_LAST=1
else
    export SOURCED_BASH_LAST="$(expr "$SOURCED_BASH_LAST" + 1)"
fi

export SOURCED_BASH_MASTER_BASHONLY="$SOURCED_BASH_LAST"



#***************************[paths and files]*********************************
# 2020 12 27

export MASTER_PATH_SCRIPT="$(realpath "$(dirname "${BASH_SOURCE}")" )/"
export MASTER_PATH_WORKSPACE="$(realpath "${MASTER_PATH_SCRIPT}../../.." )/"



#***************************[repository]**************************************
# 2021 01 10

. ${MASTER_PATH_SCRIPT}scripts/repository.sh

if [ "${REPO_BASH_REPO[0]}" != "" ] && \
  [ -d "${REPO_BASH_REPO[0]}" ]; then
    export REPO_PATH_WORKSPACE="${MASTER_PATH_WORKSPACE}"
    . ${REPO_BASH_REPO[0]}bashrc.sh
fi



#***************************[repo config]*************************************
# 2021 01 10

if [ "${REPO_BASH_CONFIG[0]}" != "" ] && \
  [ -d "${REPO_BASH_CONFIG[0]}" ]; then
    . ${REPO_BASH_CONFIG[0]}bashrc.sh
fi



#***************************[repo network]************************************
# 2018 11 30

if [ "${REPO_BASH_NETWORK[0]}" != "" ] && \
  [ -d "${REPO_BASH_NETWORK[0]}" ]; then
    . ${REPO_BASH_NETWORK[0]}bashrc.sh
fi



#***************************[repo multimedia]*********************************
# 2018 11 30

if [ "${REPO_BASH_MULTIMEDIA[0]}" != "" ] && \
  [ -d "${REPO_BASH_MULTIMEDIA[0]}" ]; then
    . ${REPO_BASH_MULTIMEDIA[0]}bashrc.sh
fi



#***************************[repo file]***************************************
# 2018 11 30

if [ "${REPO_BASH_FILE[0]}" != "" ] && \
  [ -d "${REPO_BASH_FILE[0]}" ]; then
    . ${REPO_BASH_FILE[0]}bashrc.sh
fi



#***************************[backwards compatibility]*************************
# 2021 01 03

. ${MASTER_PATH_SCRIPT}scripts/backward.sh
