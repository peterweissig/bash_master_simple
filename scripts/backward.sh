#!/bin/bash

#***************************[bug in bash master server]**********************
# 2021 01 03

if [ "$REPO_BASH_MASTER_SERVER" != "" ] && \
  [ "$(basename "$REPO_BASH_MASTER_SERVER")" == "bash_only" ]; then

    temp="$(dirname "$REPO_BASH_MASTER_SERVER")/server/"
    echo -n "warning: there was a typo/bug in bash master repo \"server\" "
    echo "before 01.03.2021!"
    echo "  You should update the repository manually:"
    echo "    $ cd \"$temp\""
    echo "    $ git pull"
fi
