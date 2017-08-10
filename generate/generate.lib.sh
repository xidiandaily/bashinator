## vim:ts=4:sw=4:tw=200:nu:ai:nowrap:
##
## application library for bashinator example application
##
## Created by Wolfram Schlich <wschlich@gentoo.org>
## Licensed under the GNU GPLv3
## Web: http://www.bashinator.org/
## Code: https://github.com/wschlich/bashinator/
##

##
## REQUIRED PROGRAMS
## =================
## - rm
## - mkdir
## - ls
##

##
## application initialization function
## (command line argument parsing and validation etc.)
##

function __init() {

	## -- BEGIN YOUR OWN APPLICATION INITIALIZATION CODE HERE --

	## parse command line options
	while getopts 'xcp' opt; do
		case "${opt}" in
            x)
                EnableDebugMode;
                __Echo_Green "EnableDebugMode"
                ;;
			c)
                export __CleanMode=1
				;;
			p)
                export __OnefileMode=1
				;;
			## option without a required argument
			:)
				__die 2 "option -${OPTARG} requires an argument" # TODO FIXME: switch to __msg err
				;;
			## unknown option
			\?)
				__die 2 "unknown option -${OPTARG}" # TODO FIXME: switch to __msg err
				;;
			## this should never happen
			*)
				__die 2 "there's an error in the matrix!" # TODO FIXME: switch to __msg err
				;;
		esac
		__msg debug "command line argument: -${opt}${OPTARG:+ '${OPTARG}'}"
	done
	## shift off options + arguments
	let OPTIND--; shift ${OPTIND}; unset OPTIND
	args="${@}"
	set -- 

	return 0 # success

	## -- END YOUR OWN APPLICATION INITIALIZATION CODE HERE --
}

##
## application main function
##

function __main() {
	## -- BEGIN YOUR OWN APPLICATION MAIN CODE HERE --
    set -- $args
    if [[ -z $1 ]];then
        __print debug "projectname empty $1"
        Help
        exit
    fi

    export SourceBashinatorPath="./"
    export BUILDDIR="./build"
    export PROJECTNAME="$1"
    export PROJECTDIR="./build/${PROJECTNAME}"

    if [[ ${__CleanMode:-0} -eq 1 ]];then
        Generate_Clean
        exit
    fi

    if [[ ${__OnefileMode:-0} -eq 1 ]];then
        Generate_Onefile
        exit
    fi

    Generate_Normal 
    __Echo_Green "Generate Sucess :${PROJECTDIR}"
	## -- END YOUR OWN APPLICATION MAIN CODE HERE --
}

function EnableDebugMode()
{
    export __LogDebug=1     # default: 0
    export __LogInfo=1      # default: 1
    export __LogNotice=1    # default: 1
    export __LogWarning=1   # default: 1
    export __LogErr=1       # default: 1
    export __LogCrit=1      # default: 1
    export __LogAlert=1     # default: 1
    export __LogEmerg=1     # default: 1

    export __PrintDebug=1   # default: 0
    export __PrintInfo=1    # default: 1
    export __PrintNotice=1  # default: 1
    export __PrintWarning=1 # default: 1
    export __PrintErr=1     # default: 1
    export __PrintCrit=1    # default: 1
    export __PrintAlert=1   # default: 1
    export __PrintEmerg=1   # default: 1
}

function Help()
{
    echo "Usage: ${__ScriptFile}  [OPTION...] projectname"
    echo ""
    echo " [OPTION]"
    echo "     -x debug mode"
    echo "     -c Clean Exist Project"
    echo "     -p Packet Exist Project,all in one file"
    echo ""
    echo " [EXAMPLE]"
    echo "   ${__ScriptFile} test  ;generate 'test' project"
    echo "   ${__ScriptFile} -c test  ;clean 'test' project whithout note"
    echo "   ${__ScriptFile} -p test  ;Packet 'test'"
    echo ""
    echo " [AUTHOR]"
    echo "   lawrencechi 2017.03.25"
}

##
## application worker functions
##

function Copy()
{
    if cp "$1" "$2" >>"${_L:-/dev/null}" 2>&1;then
        __Echo_Green "cp $1 to $2 Done!"
    else
        __Echo_Red "cp $1 to $2 Faied!"
        exit
    fi
}

function Clean()
{
    if ! cat "$1" | grep -v '^##' > "${1}.clean";then
        __Echo_Red "clean $1 Failed!"
        exit
    fi

    if ! mv "${1}.clean" "$1";then
        __Echo_Red "clean $1 Failth!"
        exit
    fi
    __Echo_Green "clean $1 Done!"
}

function Merge()
{
    echo "## =========Merge file: ${1} =========" >> "$2"
    if ! cat "$1" >>"$2";then
        __Echo_Red "Merget $1 $2 Failed"
    fi
    __Echo_Green "Merget $1 $2 Successed"
}

function Generate_Normal
{
    if [[ ! -d $BUILDDIR ]];then
        if ! mkdir "$BUILDDIR" >> "${_L:-/dev/null}" 2>&1;then
            __Echo_Green "Create Build Directory:${BUILDDIR} Done!"
        fi
    fi

    if [[ -d $PROJECTDIR ]];then
        __Echo_Red "'${PROJECTDIR}' exits, generate failed!"
        exit 1
    fi

    if ! mkdir "$PROJECTDIR" >> "${_L:-/dev/null}" 2>&1;then
        __Echo_Green "Create Project Directory:${path} Done!"
    fi

    Copy "${SourceBashinatorPath}/bashinator.lib.0.sh"       "$PROJECTDIR/bashinator.lib.0.sh"
    Copy "${SourceBashinatorPath}/example/example.sh"        "$PROJECTDIR/$PROJECTNAME.sh"
    Copy "${SourceBashinatorPath}/example/example.lib.sh"    "$PROJECTDIR/$PROJECTNAME.lib.sh"
    Copy "${SourceBashinatorPath}/example/example.cfg.sh"    "$PROJECTDIR/$PROJECTNAME.cfg.sh"
    Copy "${SourceBashinatorPath}/example/bashinator.cfg.sh" "$PROJECTDIR/bashinator.cfg.sh"
}

function Generate_Clean()
{
    if [[ ! -d $PROJECTDIR ]];then
        __Echo_Red "'${PROJECTDIR}' Not exits, Packet Failed!"
        exit 1
    fi

    Clean "$PROJECTDIR/bashinator.lib.0.sh"
    Clean "$PROJECTDIR/$PROJECTNAME.sh"
    Clean "$PROJECTDIR/$PROJECTNAME.lib.sh"
    Clean "$PROJECTDIR/$PROJECTNAME.cfg.sh"
    Clean "$PROJECTDIR/bashinator.cfg.sh"

    __Echo_Green "Generate_Clean"
}

function Generate_Onefile()
{
    if [[ ! -d $PROJECTDIR ]];then
        __Echo_Red "'${PROJECTDIR}' Not exits, Packet Failed!"
        exit 1
    fi

    echo "#!/bin/bash" >  "$PROJECTDIR/law.tmp.sh"
    Merge "$PROJECTDIR/bashinator.cfg.sh"   "$PROJECTDIR/law.tmp.sh"
    Merge "$PROJECTDIR/bashinator.lib.0.sh" "$PROJECTDIR/law.tmp.sh"
    Merge "$PROJECTDIR/$PROJECTNAME.lib.sh" "$PROJECTDIR/law.tmp.sh"
    Merge "$PROJECTDIR/$PROJECTNAME.cfg.sh" "$PROJECTDIR/law.tmp.sh"
    Merge "$PROJECTDIR/$PROJECTNAME.sh"     "$PROJECTDIR/law.tmp.sh"

    if cat "$PROJECTDIR/law.tmp.sh" | sed 's/^__requireSource/##__requireSource/' > "$PROJECTDIR/${PROJECTNAME}.packet.sh";then
        cmd "dos2unix ${PROJECTDIR}/${PROJECTNAME}.packet.sh" 1
        __Echo_Green "rename $PROJECTDIR/law.tmp.sh $PROJECTDIR/${PROJECTNAME}.packet.sh Success!"
    fi
    if rm -f "$PROJECTDIR/law.tmp.sh" ;then
        __Echo_Green "rm $PROJECTDIR/law.tmp.sh Sucessed"
    fi
    __Echo_Green "Generate_Onefile Sucess,packet file:${PROJECTNAME}.packet.sh"
}

