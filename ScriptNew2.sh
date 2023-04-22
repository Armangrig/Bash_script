#!/bin/bash

function get_dir_file(){
        if [[ ! -d $1 ]]; then
                echo "No such directory"
                exit 1
        fi
}
function dir_ls(){
        if [[ ! -f $2 ]]; then
                touch $2
        else
                >$2
        fi

        ls $1 >> $2
}

get_dir_file $1
dir_ls $1 $2
