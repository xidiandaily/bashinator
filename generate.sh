#!/bin/bash
echo $0
#export SCRIPTPATH=$(realpath $0); SCRIPTPATH=${SCRIPTPATH%/*}
export PROJECTDIR="./build"

function Help(){
    echo "Usage: $0  projectname"
    echo ""
    echo " [OPTION]"
    echo "     projectname "
    echo ""
    echo " [EXAMPLE]"
    echo "   $0 test"
    echo ""
    echo " [AUTHOR]"
    echo "   lawrencechi 2017.03.25"
}

function generate
{
    projectname=$1
    if [[ ! -d $PROJECTDIR ]];then
        mkdir "$PROJECTDIR"
    fi
    if [[ ! -d $PROJECTDIR ]];then
        echo "PROJECTDIR NOT FOUND"
        exit 1
    fi

    local path="${PROJECTDIR}/${projectname}"
    if [[ -d $path ]];then
        echo "'${projectname}' exits, generate failed!"
        exit 1
    fi

    mkdir "$path"
    cp "bashinator.lib.0.sh" "$path/bashinator.lib.0.sh"
    cp "example/example.sh" "$path/$projectname.sh"
    cp "example/example.lib.sh" "$path/$projectname.lib.sh"
    cp "example/example.cfg.sh" "$path/$projectname.cfg.sh"
    cp "example/bashinator.cfg.sh" "$path/bashinator.cfg.sh"

    echo "generate sucess!"
    echo "Dest:${path}"
}

if [[ $# -eq 1 ]];then
    generate "${@}"
else
    Help;
fi

