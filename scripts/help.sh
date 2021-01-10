#!/bin/bash


#***************************[helper scripts]**********************************

# 2021 01 10
function _master_help_wrapper() {

    echo -n "  "; echo "master_help                 #no help"
    if [ "$SOURCED_BASH_MASTER_SERVER" != "" ]; then
        echo -n "  "; echo "server_help                 #no help"
    fi
}

# 2021 01 10
function _master_help_submodules() {

    any=0
    if [ "$SOURCED_BASH_REPO" != "" ]; then
        any=1
        echo -n "  "; echo "repo_help                   #no help"
    fi
    if [ "$SOURCED_BASH_CONFIG" != "" ]; then
        any=1
        echo -n "  "; echo "config_help                 #no help"
    fi
    if [ "$SOURCED_BASH_FILE" != "" ]; then
        any=1
        echo -n "  "; echo "file_help                   #no help"
    fi
    if [ "$SOURCED_BASH_MULTIMEDIA" != "" ]; then
        any=1
        echo -n "  "; echo "multimedia_help             #no help"
    fi
    if [ "$SOURCED_BASH_NETWORK" != "" ]; then
        any=1
        echo -n "  "; echo "network_help                #no help"
    fi

    if [ $any -ne 1 ]; then
        return -1
    fi
}

# 2021 01 10
function _master_help_robo() {

    any=0
    # check roboag
    if [ "$REPO_ROBOAG_LIB" != "" ] && [ -d "$REPO_ROBOAG_LIB" ]; then
        any=1
        if [ "$(type -t robo_help)" == "function" ]; then
            echo -n "  "; echo "robo_help                   #no help"
        elif [ "$(type -t robo_source)" != "" ]; then
            echo -n "  "; echo "robo_source && robo_help    #no help"
        else
            echo -n "  "; echo "#robo_help                  #no help"
        fi
    fi
    # check robolib
    if [ "$REPO_ROBOAG_LIB" != "" ] && [ -d "$REPO_ROBOAG_LIB" ]; then
        any=1
        if [ "$(type -t robolib_help)" == "function" ]; then
            echo -n "  "; echo "robolib_help                #no help"
        elif [ "$(type -t robo_source)" != "" ]; then
            echo -n "  "; echo "robo_source && robolib_help #no help"
        else
            echo -n "  "; echo "#robolib_help               #no help"
        fi
    fi

    if [ $any -ne 1 ]; then
        return -1
    fi
}

#***************************[help]********************************************
# 2021 01 10

function master_help() {

    echo ""
    echo "### $FUNCNAME ###"

    echo ""
    echo "repo wrapper"
    _master_help_wrapper

    echo ""
    echo "loaded repos"
    _master_help_submodules
    if [ $? -ne 0 ]; then echo "  <none>"; fi

    echo ""
    echo "additional repos"
    _master_help_robo
    if [ $? -ne 0 ]; then echo "  <none>"; fi

    echo ""
}
