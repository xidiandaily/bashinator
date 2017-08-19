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
	while getopts ':ab:q' opt; do
		case "${opt}" in
			## option a
			a)
				declare -i A=1
				;;
			## option b
			b)
				B="${OPTARG}"
				;;
			## quiet operation
			q)
				declare -i __MsgQuiet=1
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
	## check if command line options were given at all
	if [[ ${OPTIND} == 1 ]]; then
		__die 2 "no command line option specified" # TODO FIXME: switch to __msg err
	fi
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
    declare -i num=0
    for i in _msg_test msg_test cmd_test echo_color_text_test;
    do
        __Echo_White_On_Red "test case[$num]:$i";
        eval "$i";
        num=$(($num+1))
    done
	return 0 # success

	## -- END YOUR OWN APPLICATION MAIN CODE HERE --
}

function Help(){
    echo "Usage: ${__ScriptFile}  [OPTION...] [dst]"
    echo ""
    echo " [OPTION]"
    echo "     balabalabala ..     balabalabala ...."
    echo ""
    echo " [EXAMPLE]"
    echo "   ${__ScriptFile} option...."
    echo ""
    echo " [AUTHOR]"
    echo "   lawrencechi 2017.03.17"
}

function _msg_test()
{
    local i
    for i in debug info notice warning err crit alert emerg; do
        __msg ${i} "this is a ${i} test"
    done
}

function msg_test()
{
    local i
    for i in msg msg_status msg_emergency msg_alert msg_critical msg_error msg_warning msg_notice msg_info msg_debug msg_ok msg_not_ok msg_failed msg_success msg_passed;do
        eval $i "$i"
    done
}

function cmd_test()
{
    # 这里有个bug，array_append 第一个值数不能有空格,有空格加多引号
    array_append testcmd "\"ls -alh\"" "/sbin/ping -c 3 8.8.8.8" "whoami" "id" "touch chiyl && ls chiyl && rm -f chiyl"
    local i
    __msg info "call cmd without show result"
    for i in "${testcmd[@]}";do
        eval "cmd \"$i\""
    done
}

function cmd_whit_output_test()
{
    # 这里有个bug，array_append 第一个值数不能有空格,有空格加多引号
    array_append testcmd "\"ls -alh\"" "/sbin/ping -c 3 8.8.8.8" "whoami" "id" "touch chiyl && ls chiyl && rm -f chiyl"
    local i
    for i in "${testcmd[@]}";do
        eval "cmd \"$i\" 1"
    done
}

function echo_color_text_test()
{
    local i
    for i in __Echo_Red __Echo_Green __Echo_Yellow __Echo_Blue __Echo_Yellow_On_Red __Echo_White_On_Red __Echo_White_On_Magenta __Echo_Normal;
    do
        eval "$i \"$i\""
    done
}

##
## application worker functions
##

