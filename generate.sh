#!/bin/bash
## =========Merge file: ./build/generate/bashinator.cfg.sh =========



export __ScriptSubCommandLog=0 # default: 0
export __ScriptSubCommandLogDir="/tmp" # default: /var/log

export __ScriptLock=0 # default: 0
export __ScriptLockDir="/tmp" # default: /var/lock

#export __ScriptUseSafePathEnv=0 # default: 1

export __ScriptUmask=022 # default: 077

#export __ScriptGenerateStackTrace=0 # default: 1


#export __MsgQuiet=1 # default: 0

export __MsgTimestampFormat="[%Y-%m-%d %H:%M:%S %Z]" # with brackets
#export __MsgTimestampFormat="[%Y-%m-%d %H:%M:%S.%N %Z]" # with brackets and nanoseconds


export __PrintDebug=0   # default: 0
export __PrintInfo=0    # default: 1
export __PrintNotice=0  # default: 1
export __PrintWarning=0 # default: 1
export __PrintErr=0     # default: 1
export __PrintCrit=0    # default: 1
export __PrintAlert=0   # default: 1
export __PrintEmerg=0   # default: 1

#export __PrintPrefixScriptNamePid=0 # default: 1
#export __PrintPrefixTimestamp=0 # default: 1
#export __PrintPrefixSeverity=0 # default: 1
#export __PrintPrefixSource=0 # default: 1

#export __PrintPrefixSeverity7=">>> [____DEBUG]" # LOG_DEBUG
#export __PrintPrefixSeverity6=">>> [_____INFO]" # LOG_INFO
#export __PrintPrefixSeverity5=">>> [___NOTICE]" # LOG_NOTICE
#export __PrintPrefixSeverity4="!!! [__WARNING]" # LOG_WARNING
#export __PrintPrefixSeverity3="!!! [____ERROR]" # LOG_ERR
#export __PrintPrefixSeverity2="!!! [_CRITICAL]" # LOG_CRIT
#export __PrintPrefixSeverity1="!!! [____ALERT]" # LOG_ALERT
#export __PrintPrefixSeverity0="!!! [EMERGENCY]" # LOG_EMERG

#export __PrintColorSeverity7="1;34"    # LOG_DEBUG:   blue on default
#export __PrintColorSeverity6="1;36"    # LOG_INFO:    cyan on default
#export __PrintColorSeverity5="1;32"    # LOG_NOTICE:  green on default
#export __PrintColorSeverity4="1;33"    # LOG_WARNING: yellow on default
#export __PrintColorSeverity3="1;31"    # LOG_ERR:     red on default
#export __PrintColorSeverity2="1;37;41" # LOG_CRIT:    white on red
#export __PrintColorSeverity1="1;33;41" # LOG_ALERT:   yellow on red
#export __PrintColorSeverity0="1;37;45" # LOG_EMERG:   white on magenta


export __LogDebug=0   # default: 0
export __LogInfo=0    # default: 1
export __LogNotice=0  # default: 1
export __LogWarning=0 # default: 1
export __LogErr=0     # default: 1
export __LogCrit=0    # default: 1
export __LogAlert=0   # default: 1
export __LogEmerg=0   # default: 1

#export __LogPrefixScriptNamePid=0 # default: 1
#export __LogPrefixTimestamp=0 # default: 1
#export __LogPrefixSeverity=0 # default: 1
#export __LogPrefixSource=0 # default: 1

#export __LogPrefixSeverity7=">>> [____DEBUG]" # LOG_DEBUG
#export __LogPrefixSeverity6=">>> [_____INFO]" # LOG_INFO
#export __LogPrefixSeverity5=">>> [___NOTICE]" # LOG_NOTICE
#export __LogPrefixSeverity4="!!! [__WARNING]" # LOG_WARNING
#export __LogPrefixSeverity3="!!! [____ERROR]" # LOG_ERR
#export __LogPrefixSeverity2="!!! [_CRITICAL]" # LOG_CRIT
#export __LogPrefixSeverity1="!!! [____ALERT]" # LOG_ALERT
#export __LogPrefixSeverity0="!!! [EMERGENCY]" # LOG_EMERG

#export __LogTarget="syslog:user"
#export __LogTarget="file:/var/log/${__ScriptName}.log"
#export __LogTarget="file:/var/log/${__ScriptName}.log:append"
#export __LogTarget="file:/var/log/${__ScriptName}.log:overwrite"
#export __LogTarget="file:/var/log/${__ScriptName}.log:append,syslog:user"
#export __LogTarget="file:/var/log/${__ScriptName}.log:overwrite,syslog:user"
#export __LogTarget="file:/var/log/${__ScriptName}.log:append,file:/var/log/${__ScriptName}-current.log:overwrite"
#export __LogTarget="file:/var/log/${__ScriptName}.$(date +"%Y%m%d-%H%M%S").log"
export __LogTarget="file:${__ScriptPath}/${__ScriptName}.log.$(date +"%Y%m%d"):append"


export __MailDebug=0   # default: 0
export __MailInfo=0    # default: 1
export __MailNotice=0  # default: 1
export __MailWarning=0 # default: 1
export __MailErr=0     # default: 1
export __MailCrit=0    # default: 1
export __MailAlert=0   # default: 1
export __MailEmerg=0   # default: 1

#export __MailPrefixScriptNamePid=1 # default: 0
#export __MailPrefixTimestamp=0 # default: 1
#export __MailPrefixSeverity=0 # default: 1
#export __MailPrefixSource=0 # default: 1

#export __MailPrefixSeverity7="[____DEBUG]" # LOG_DEBUG
#export __MailPrefixSeverity6="[_____INFO]" # LOG_INFO
#export __MailPrefixSeverity5="[___NOTICE]" # LOG_NOTICE
#export __MailPrefixSeverity4="[__WARNING]" # LOG_WARNING
#export __MailPrefixSeverity3="[____ERROR]" # LOG_ERR
#export __MailPrefixSeverity2="[_CRITICAL]" # LOG_CRIT
#export __MailPrefixSeverity1="[____ALERT]" # LOG_ALERT
#export __MailPrefixSeverity0="[EMERGENCY]" # LOG_EMERG

#export __MailAppendScriptSubCommandLog=0 # default: 1

#export __MailFrom="${USER} <${USER}@${__ScriptHost}>"
#export __MailEnvelopeFrom="${USER}@${__ScriptHost}"
#export __MailRecipient="${USER}@${__ScriptHost}"
#export __MailSubject="Messages from ${__ScriptFile} running on ${__ScriptHost}"
## =========Merge file: ./build/generate/bashinator.lib.0.sh =========




export __BashinatorRequiredBashVersion=3.2.0


function __boot() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   initializes bashinator
	##
	## ARGUMENTS:
	##   /
	##
	## GLOBAL VARIABLES USED:
	##   __BashinatorRequiredBashVersion (default: 0.0.0)
	##   __ScriptUseSafePathEnv (default: 1)
	##   __ScriptUmask (default: 077)
	##   BASH_VERSINFO
	##   EUID
	##   PATH
	##

	## check for required bash version
	IFS='.'
	set -- ${__BashinatorRequiredBashVersion:-0.0.0}
	unset IFS
	local -i requiredBashMajorVersion=${1}
	local -i requiredBashMinorVersion=${2}
	local -i requiredBashPatchLevel=${3}
	set --
	## create sets of version component numbers to compare
	## one by one, starting with the major version
	local -a versionsToCompare=(
		${BASH_VERSINFO[0]}:${requiredBashMajorVersion}
		${BASH_VERSINFO[1]}:${requiredBashMinorVersion}
		${BASH_VERSINFO[2]}:${requiredBashPatchLevel}
	)
	## loop through sets of version component numbers
	local versionSet
	for versionSet in "${versionsToCompare[@]}"; do
		IFS=':'
		set -- ${versionSet}
		unset IFS
		currentVersion=${1}
		requiredVersion=${2}
		set --
		## check whether current version > required version
		if [[ ${currentVersion} -gt ${requiredVersion} ]]; then
			## version requirements are completely satisfied,
			## so we finish overall comparison
			break
		## check whether current version < required version
		elif [[ ${currentVersion} -lt ${requiredVersion} ]]; then
			## version requirements are not satisfied at all,
			## so we error out
			echo "!!! FATAL: bashinator requires at least bash version ${__BashinatorRequiredBashVersion}" 1>&2
			exit 2 # error
		## check whether current version == required version
		## (this is implicitly true, it's just here for clarity)
		elif [[ ${currentVersion} -eq ${requiredVersion} ]]; then
			## version requirements are satisfied up to the
			## current version number component, so we
			## compare the next versionSet (if any)
			continue
		fi
	done

	## use a safe PATH environment variable by default
	if [[ ${__ScriptUseSafePathEnv:-1} -eq 1 ]]; then
		## default PATH when running as a non-root user
		export PATH="/bin:/usr/bin"
		## extend PATH if we are running as root
		if [[ ${EUID} -eq 0 ]]; then
			export PATH="/sbin:/usr/sbin:${PATH}"
		fi
	fi

	## use a secure umask by default
	umask ${__ScriptUmask:-077}

	## basic shell settings
	shopt -s extglob  # enable extended globbing (required for pattern matching)
	shopt -s extdebug # enable extended debugging (required for function stack trace)
	hash -r           # reset hashed command paths
	set +m            # disable monitor mode (job control)

	return 0 # success

} # __boot()

function __dispatch() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   dispatches the application.
	##   calls the __init() and __main()
	##   functions that have to be defined by the user.
	##
	## ARGUMENTS:
	##   *: all arguments of the originally executed script
	##
	## GLOBAL VARIABLES USED:
	##   __ScriptExitCode: can be set to a custom exit code from within
	##   the user functions
	##

	## check for user defined __init() function
	if ! declare -F __init &>/dev/null; then
		__die ${__DieExitCode:-2} "function __init() does not exist, unable to dispatch application"
	fi

	## check for user defined __main() function
	if ! declare -F __main &>/dev/null; then
		__die ${__DieExitCode:-2} "function __main() does not exist, unable to dispatch application"
	fi

	## ----- main -----

	## init application function
	__init "${@}" || __die ${?} "__init() failure"

	## main application pre-processing (create lockfile and subcommand logfile)
	__prepare || __die ${__DieExitCode:-2} "__prepare() failure"

	## main application function
	__main || __die ${?} "__main() failure"

	## main application post-processing (remove lockfile and subcommand logfile)
	__cleanup || __die ${__DieExitCode:-2} "__cleanup() failure"

	## backwards compatibility for user specified exit code
	if [[ -n "${Exit}" ]]; then
		exit ${Exit}
	fi

	## exit script with optional user specified exit code
	exit ${__ScriptExitCode:-0}

} # __dispatch()

function __prepare() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   run application main pre-processing tasks
	##
	## ARGUMENTS:
	##   /
	##
	## GLOBAL VARIABLES USED:
	##   __ScriptSubCommandLog (default: 0)
	##   __ScriptSubCommandLogFile
	##   __ScriptLock (default: 0)
	##   __ScriptLockFile
	##

	## ----- main -----

	## handle script subcommand logfile
	if [[ ${__ScriptSubCommandLog:-0} == 1 ]]; then
		## create temporary logfile
		__ScriptSubCommandLogFile=$(mktemp -q -t -p "${__ScriptSubCommandLogDir:-/var/log}" ${__ScriptName:-${0##*/}}.log.XXXXXX)
		if [[ -z "${__ScriptSubCommandLogFile}" ]]; then
			__msg alert "failed to create temporary script subcommand logfile in script logdir '${__ScriptSubCommandLogDir:-/var/log}'"
			return 2 # error
		else
			__msg debug "successfully created temporary script subcommand logfile '${__ScriptSubCommandLogFile}'"
		fi
	else
		## if sub command logging is disabled, set logfile to
		## /dev/null to make redirections work nevertheless.
		__ScriptSubCommandLogFile="/dev/null"
	fi
	export __ScriptSubCommandLogFile _L=${__ScriptSubCommandLogFile} # use _L as a shorthand
	__msg debug "script subcommand logfile: '${__ScriptSubCommandLogFile}'"

	## handle script lockfile
	if [[ ${__ScriptLock:-0} == 1 ]]; then
		__ScriptLockFile="${__ScriptLockDir:-/var/lock}/${__ScriptName:-${0##*/}}.lock"
		## check/create lockfile
		if [[ -e "${__ScriptLockFile}" ]]; then
			__msg alert "script lockfile '${__ScriptLockFile}' already exists"
			return 2 # error
		elif ! touch "${__ScriptLockFile}" >>"${_L}" 2>&1; then
			__msg alert "failed to create script lockfile '${__ScriptLockFile}'"
			return 2 # error
		else
			__msg debug "successfully created script lockfile '${__ScriptLockFile}'"
		fi
	fi

	return 0 # success

} # __prepare()

function __cleanup() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   run application main post-processing tasks
	##
	## ARGUMENTS:
	##   /
	##
	## GLOBAL VARIABLES USED:
	##   __ScriptSubCommandLog (default: 0)
	##   __ScriptSubCommandLogFile
	##   __ScriptLock (default: 0)
	##   __ScriptLockFile
	##

	## ----- main -----

	## remove script subcommand logfile
	if [[ ${__ScriptSubCommandLog:-0} == 1 && "${__ScriptSubCommandLogFile}" != /dev/null ]]; then
		__msg debug "removing script subcommand logfile '${__ScriptSubCommandLogFile}'"
		if ! rm -f "${__ScriptSubCommandLogFile}" &>/dev/null; then
			__msg alert "failed to remove script subcommand logfile '${__ScriptSubCommandLogFile}'"
			return 2 # error
		else
			__msg debug "successfully removed script subcommand logfile '${__ScriptSubCommandLogFile}'"
		fi
	fi

	## remove script lockfile
	if [[ ${__ScriptLock:-0} == 1 ]]; then
		__msg debug "removing script lockfile '${__ScriptLockFile}'"
		if ! rm -f "${__ScriptLockFile}" &>/dev/null; then
			__msg alert "failed to remove script lockfile '${__ScriptLockFile}'"
			return 2 # error
		else
			__msg debug "successfully removed script lockfile '${__ScriptLockFile}'"
		fi
	fi

	return 0 # success

} # __cleanup()

function __die() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   terminate the currently executing script
	##
	## ARGUMENTS:
	##   1: exit code (opt, default: 1)
	##   2: message (opt): the message explaining the termination
	##
	## GLOBAL VARIABLES USED:
	##   /
	##

	local -i exitCode="${1}"; shift
	local message="${1}"; shift

	## ----- main -----

	## check for exit code
	if [[ -z "${exitCode}" ]]; then
		let exitCode=1
	fi

	## check for error message
	if [[ -z "${message}" ]]; then
		message="<called ${FUNCNAME[0]}() without message>"
	fi

	## display main error message
	__msg alert "${message}"

	## generate stack trace
	if [[ "${__ScriptGenerateStackTrace:-1}" -eq 1 ]]; then

		## number of functions involved
		local -i numberOfFunctions=$((${#FUNCNAME[@]} - 1))

		## skip this number of functions from the bottom of the call stack
		## 1 == only skip this function itself
		local -i skipNumberOfFunctions=1

		## display function call stack (if any functions are involved)
		if [[ "${numberOfFunctions}" > "${skipNumberOfFunctions}" ]]; then

			__msg alert "function call stack (most recent last):"

			## n: current function array pointer (initially the last element of the FUNCNAME array)
			## p: current parameter pointer (initially the last element of the BASH_ARGV array)
			## bashFileName: source file of previous function that called the current function
			## bashLineNumber: line in file that called the function
			## functionName: name of called function
			local -i n=0 p=0 bashLineNumber=0
			local bashFileName= functionName=

			for ((n = ${#FUNCNAME[@]} - 1, p = ${#BASH_ARGV[@]} - 1; n >= ${skipNumberOfFunctions}; n--)) ; do

				bashFileName="${BASH_SOURCE[n + 1]##*/}"
				bashLineNumber="${BASH_LINENO[n]}"
				functionName="${FUNCNAME[n]}"

				## get function arguments (bash3 only)
				if [[ ${#BASH_ARGC[n]} -gt 0 ]]; then
					## argList: list of quoted arguments of current function
					## arg: next argument
					local argList= arg=
					## a: current function argument count pointer
					local -i a=0
					for ((a = 0; a < ${BASH_ARGC[n]}; ++a)); do
						arg="${BASH_ARGV[p - a]}"
						argList="${argList:+${argList},}'${arg}'"
					done
					## decrement parameter pointer by the count of parameters of the current function
					(( p -= ${BASH_ARGC[n]} ))
				fi

				## skip main function
				if [[ ${FUNCNAME[n]} == "main" ]]; then
					continue
				fi

				## print function information
				__msg alert "--> ${functionName}(${argList:+${argList}}) called in '${bashFileName}' on line ${bashLineNumber}"

			done
		fi
	
	fi

	## mention path to script subcommand log if enabled and not empty
	if [[ ${__ScriptSubCommandLog:-0} -eq 1 \
		&& ${__ScriptSubCommandLogFile} != /dev/null \
		&& -s ${__ScriptSubCommandLogFile} ]]; then
		__msg alert "please check script subcommand log '${__ScriptSubCommandLogFile}' for details"
	fi

	__msg alert "terminating script"

	exit ${exitCode}

} # __die()


function __msgPrint() {
	
	## ----- head -----
	##
	## DESCRIPTION:
	##   prints a message.
	##   this function is NOT intended to be called by the user!
	##
	## ARGUMENTS:
	##   1: timestamp (req): timestamp of the message
	##   2: severity (req): severity of the message
	##   3: source (req): source of the message (file, line, function)
	##   4: message (req): the message to print
	##
	## GLOBAL VARIABLES USED:
	##   __PrintDebug (default: 0)
	##   __PrintInfo (default: 1)
	##   __PrintNotice (default: 1)
	##   __PrintWarning (default: 1)
	##   __PrintErr (default: 1)
	##   __PrintCrit (default: 1)
	##   __PrintAlert (default: 1)
	##   __PrintEmerg (default: 1)
	##   __PrintPrefixScriptNamePid (default: 1)
	##   __PrintPrefixTimestamp (default: 1)
	##   __PrintPrefixSeverity (default: 1)
	##   __PrintPrefixSource (default: 1)
	##   __PrintPrefixSeverity7 (default: >>> [____DEBUG])
	##   __PrintPrefixSeverity6 (default: >>> [_____INFO])
	##   __PrintPrefixSeverity5 (default: >>> [___NOTICE])
	##   __PrintPrefixSeverity4 (default: !!! [__WARNING])
	##   __PrintPrefixSeverity3 (default: !!! [____ERROR])
	##   __PrintPrefixSeverity2 (default: !!! [_CRITICAL])
	##   __PrintPrefixSeverity1 (default: !!! [____ALERT])
	##   __PrintPrefixSeverity0 (default: !!! [EMERGENCY])
	##   __PrintColorSeverity7 (default: 1;34)
	##   __PrintColorSeverity6 (default: 1;36)
	##   __PrintColorSeverity5 (default: 1;32)
	##   __PrintColorSeverity4 (default: 1;33)
	##   __PrintColorSeverity3 (default: 1;31)
	##   __PrintColorSeverity2 (default: 1;37;41)
	##   __PrintColorSeverity1 (default: 1;33;41)
	##   __PrintColorSeverity0 (default: 1;37;45)
	##   TERM (used to determine if we are running inside a terminal supporting colors)
	##

	local timestamp="${1}"; shift
	local severity="${1}"; shift
	local source="${1}"; shift
	local message="${1}"; shift

	## ----- main -----

	## check whether message is to be printed at all
	case ${severity} in
		  debug|7) if [[ ${__PrintDebug:-0}   -ne 1 ]]; then return 0; fi ;;
		   info|6) if [[ ${__PrintInfo:-1}    -ne 1 ]]; then return 0; fi ;;
		 notice|5) if [[ ${__PrintNotice:-1}  -ne 1 ]]; then return 0; fi ;;
		warning|4) if [[ ${__PrintWarning:-1} -ne 1 ]]; then return 0; fi ;;
		    err|3) if [[ ${__PrintErr:-1}     -ne 1 ]]; then return 0; fi ;;
		   crit|2) if [[ ${__PrintCrit:-1}    -ne 1 ]]; then return 0; fi ;;
		  alert|1) if [[ ${__PrintAlert:-1}   -ne 1 ]]; then return 0; fi ;;
		  emerg|0) if [[ ${__PrintEmerg:-1}   -ne 1 ]]; then return 0; fi ;;
	esac

	## determine whether we can show colors
	local -i colorTerm=0
	case "${TERM}" in
		rxvt*|screen*|xterm*) let colorTerm=1 ;;
		*) let colorTerm=0 ;;
	esac

	## show colors on stdout/stderr only if
	## on a terminal (not redirected)
	local -i colorStdout=0 colorStderr=0
	if [[ -t 1 && ${colorTerm} -eq 1 ]]; then
		let colorStdout=1
	fi
	if [[ -t 2 && ${colorTerm} -eq 1 ]]; then
		let colorStderr=1
	fi

	## mapping severity -> stderr/severityPrefix/color
	local severityPrefix= color=
	local -i stderr=0
	case ${severity} in
		debug|7)
			severityPrefix="${__PrintPrefixSeverity7:->>> [____DEBUG]}"
			color="1;34" # blue on default
			let stderr=0
			;;
		info|6)
			severityPrefix="${__PrintPrefixSeverity6:->>> [_____INFO]}"
			color="1;36" # cyan on default
			let stderr=0
			;;
		notice|5)
			severityPrefix="${__PrintPrefixSeverity5:->>> [___NOTICE]}"
			color="1;32" # green on default
			let stderr=0
			;;
		warning|4)
			severityPrefix="${__PrintPrefixSeverity4:-!!! [__WARNING]}"
			color="1;33" # yellow on default
			let stderr=1
			;;
		err|3)
			severityPrefix="${__PrintPrefixSeverity3:-!!! [____ERROR]}"
			color="1;31" # red on default
			let stderr=1
			;;
		crit|2)
			severityPrefix="${__PrintPrefixSeverity2:-!!! [_CRITICAL]}"
			color="1;37;41" # white on red
			let stderr=1
			;;
		alert|1)
			severityPrefix="${__PrintPrefixSeverity1:-!!! [____ALERT]}"
			color="1;33;41" # yellow on red
			let stderr=1
			;;
		emerg|0)
			severityPrefix="${__PrintPrefixSeverity0:-!!! [EMERGENCY]}"
			color="1;37;45" # white on magenta
			let stderr=1
			;;
	esac

	##
	## final message structure in order (components can be disabled):
	##   timestamp severityPrefix source message
	##

	local messagePrefix

	## 1. prefix message with source?
	if [[ -n ${source} ]]; then
		case ${__PrintPrefixSource:-1} in
			1) messagePrefix="${source}: ${messagePrefix}" ;;
			*) ;;
		esac
	fi

	## 2. prefix message with severity?
	case ${__PrintPrefixSeverity:-1} in
		1) messagePrefix="${severityPrefix} ${messagePrefix}" ;;
		*) ;;
	esac

	## 3. prefix message with timestamp?
	case ${__PrintPrefixTimestamp:-1} in
		1) messagePrefix="${timestamp} ${messagePrefix}" ;;
		*) ;;
	esac

	## 4. prefix message with script name + pid?
	case ${__PrintPrefixScriptNamePid:-1} in
		1) messagePrefix="${__ScriptName:-${0##*/}}[${$}] ${messagePrefix}" ;;
		*) ;;
	esac

	## print message
	case ${stderr} in
		## print message to stdout
		0)
			if [[ ${colorStdout} -eq 1 ]]; then
					## print colored message
					echo -e "\033[${color}m${messagePrefix}${message}\033[m"
			else
					## print plain message
					echo "${messagePrefix}${message}"
			fi
			;;
		## print message to stderr
		1)
			if [[ ${colorStderr} -eq 1 ]]; then
					## print colored message
					echo -e "\033[${color}m${messagePrefix}${message}\033[m" 1>&2
			else
					## print plain message
					echo "${messagePrefix}${message}" 1>&2
			fi
			;;
	esac

	return 0 # success

} # __msgPrint()

function __print() {
	
	## ----- head -----
	##
	## DESCRIPTION:
	##   prints a message
	##
	## ARGUMENTS:
	##   1: severity (req): severity of the message
	##   2: message (req): the message to print
	##
	## GLOBAL VARIABLES USED:
	##   __MsgTimestampFormat
	##

	local severity="${1}"; shift
	local message="${1}"; shift

	## ----- main -----

	## get current timestamp
	local timestamp=$(date "+${__MsgTimestampFormat:-%Y-%m-%d %H:%M:%S %Z}" 2>/dev/null)

	## print message
	__msgPrint "${timestamp}" "${severity}" "" "${message}"

	return 0 # success

} # __print()

function __msgLog() {
	
	## ----- head -----
	##
	## DESCRIPTION:
	##   logs a message (or stdin).
	##   this function is NOT intended to be called by the user!
	##
	## ARGUMENTS:
	##   1: timestamp (req): timestamp of the message
	##   2: severity (req): severity of the message
	##   3: source (req): source of the message (file, line, function)
	##   4: message (opt): the message to log (else stdin is read and logged)
	##
	## GLOBAL VARIABLES USED:
	##   __LogDebug (default: 0)
	##   __LogInfo (default: 1)
	##   __LogNotice (default: 1)
	##   __LogWarning (default: 1)
	##   __LogErr (default: 1)
	##   __LogCrit (default: 1)
	##   __LogAlert (default: 1)
	##   __LogEmerg (default: 1)
	##   __LogPrefixScriptNamePid (default: 1)
	##   __LogPrefixTimestamp (default: 1)
	##   __LogPrefixSeverity (default: 1)
	##   __LogPrefixSource (default: 1)
	##   __LogPrefixSeverity7 (default: >>> [____DEBUG])
	##   __LogPrefixSeverity6 (default: >>> [_____INFO])
	##   __LogPrefixSeverity5 (default: >>> [___NOTICE])
	##   __LogPrefixSeverity4 (default: !!! [__WARNING])
	##   __LogPrefixSeverity3 (default: !!! [____ERROR])
	##   __LogPrefixSeverity2 (default: !!! [_CRITICAL])
	##   __LogPrefixSeverity1 (default: !!! [____ALERT])
	##   __LogPrefixSeverity0 (default: !!! [EMERGENCY])
	##   __LogTarget (fallback: syslog.user)
	##   __LogFileHasBeenWrittenTo (helper variable)
	##   _L
	##

	local timestamp="${1}"; shift
	local severity="${1}"; shift
	local source="${1}"; shift
	local message="${1}"; shift

	## ----- main -----

	## check whether message is to be logged at all
	case ${severity} in
		  debug|7) if [[ ${__LogDebug:-0}   -ne 1 ]]; then return 0; fi ;;
		   info|6) if [[ ${__LogInfo:-1}    -ne 1 ]]; then return 0; fi ;;
		 notice|5) if [[ ${__LogNotice:-1}  -ne 1 ]]; then return 0; fi ;;
		warning|4) if [[ ${__LogWarning:-1} -ne 1 ]]; then return 0; fi ;;
		    err|3) if [[ ${__LogErr:-1}     -ne 1 ]]; then return 0; fi ;;
		   crit|2) if [[ ${__LogCrit:-1}    -ne 1 ]]; then return 0; fi ;;
		  alert|1) if [[ ${__LogAlert:-1}   -ne 1 ]]; then return 0; fi ;;
		  emerg|0) if [[ ${__LogEmerg:-1}   -ne 1 ]]; then return 0; fi ;;
	esac

	## mapping severity -> severityPrefix
	local severityPrefix
	case ${severity} in
		  debug|7) severityPrefix="${__LogPrefixSeverity7:->>> [____DEBUG]}" ;;
		   info|6) severityPrefix="${__LogPrefixSeverity6:->>> [_____INFO]}" ;;
		 notice|5) severityPrefix="${__LogPrefixSeverity5:->>> [___NOTICE]}" ;;
		warning|4) severityPrefix="${__LogPrefixSeverity4:-!!! [__WARNING]}" ;;
		    err|3) severityPrefix="${__LogPrefixSeverity3:-!!! [____ERROR]}" ;;
		   crit|2) severityPrefix="${__LogPrefixSeverity2:-!!! [_CRITICAL]}" ;;
		  alert|1) severityPrefix="${__LogPrefixSeverity1:-!!! [____ALERT]}" ;;
		  emerg|0) severityPrefix="${__LogPrefixSeverity0:-!!! [EMERGENCY]}" ;;
	esac

	##
	## final message structure in order (components can be disabled):
	##   timestamp severityPrefix source message
	##

	## we have to use different prefixes for file and syslog targets)
	local fileTargetMessagePrefix syslogTargetMessagePrefix

	## 1. prefix message with source? (for file and syslog targets)
	if [[ -n ${source} ]]; then
		case ${__LogPrefixSource:-1} in
			1) fileTargetMessagePrefix="${source}: ${fileTargetMessagePrefix}"
			   syslogTargetMessagePrefix="${source}: ${syslogTargetMessagePrefix}" ;;
			*) ;;
		esac
	fi

	## 2. prefix message with severity? (for file target only)
	case ${__LogPrefixSeverity:-1} in
		1) fileTargetMessagePrefix="${severityPrefix} ${fileTargetMessagePrefix}" ;;
		*) ;;
	esac

	## 3. prefix message with timestamp? (for file target only)
	case ${__LogPrefixTimestamp:-1} in
		1) fileTargetMessagePrefix="${timestamp} ${fileTargetMessagePrefix}" ;;
		*) ;;
	esac

	## 4. prefix message with script name + pid? (for file target only)
	case ${__LogPrefixScriptNamePid:-1} in
		1) fileTargetMessagePrefix="${__ScriptName:-${0##*/}}[${$}] ${fileTargetMessagePrefix}" ;;
		*) ;;
	esac

	## loop through list of log targets
	IFS=','
	local -a logTargetArray=( ${__LogTarget:-syslog:user} )
	unset IFS
	local -i l=0
	for ((l = 0; l < ${#logTargetArray[@]}; l++)); do
		local logTarget=${logTargetArray[l]}
		case ${logTarget} in
			## log to a file
			file:*)
				## parse log target setting
				IFS=':'
				set -- ${logTarget}
				unset IFS
				local logFile=${2} # /path/to/logfile
				local logMode=${3:-overwrite} # overwrite|append, default: overwrite
				set --

				## write log message to file
				## if message is empty, we read stdin
				if [[ -z ${message} ]]; then
					if [[ ${logMode} == 'append' || ${__LogFileHasBeenWrittenTo} -eq 1 ]]; then
						## TODO FIXME: check return value?
						sed -e "s/^/${fileTargetMessagePrefix}/" >>${logFile} 2>>"${_L:-/dev/null}"
					else
						## TODO FIXME: check return value?
						sed -e "s/^/${fileTargetMessagePrefix}/" >${logFile} 2>>"${_L:-/dev/null}"
					fi
				else
					if [[ ${logMode} == 'append' || ${__LogFileHasBeenWrittenTo} -eq 1 ]]; then
						## TODO FIXME: check return value?
						echo "${fileTargetMessagePrefix}${message}" >>${logFile} 2>>"${_L:-/dev/null}"
					else
						## TODO FIXME: check return value?
						echo "${fileTargetMessagePrefix}${message}" >${logFile} 2>>"${_L:-/dev/null}"
					fi
				fi
				## global helper variable to determine if logfile
				## has already been opened / written to before
				## during the current execution of the script,
				## needed to support "append" mode.
				declare -i __LogFileHasBeenWrittenTo=1
				;;
			## log via syslog
			syslog:*)
				## parse log target setting
				IFS=':'
				set -- ${logTarget}
				unset IFS
				local syslogFacility=${2:-user}
				local syslogPri="${syslogFacility}.${severity}"
				local syslogTag="${__ScriptName:-${0##*/}}[${$}]" # scriptname[PID]
				set --
				## send log message to syslog
				if [[ -z ${message} ]]; then
					## log stdin
					logger -p "${syslogPri}" -t "${syslogTag}" >>"${_L:-/dev/null}" 2>&1
				else
					## log passed message
					logger -p "${syslogPri}" -t "${syslogTag}" -- "${syslogTargetMessagePrefix}${message}" >>"${_L:-/dev/null}" 2>&1
				fi
				;;
			## any other (invalid) log target
			*)
				return 2 # error
				;;
		esac
	done

	return 0 # success

} # __msgLog()

function __log() {
	
	## ----- head -----
	##
	## DESCRIPTION:
	##   logs a message (or stdin).
	##
	## ARGUMENTS:
	##   1: severity (req): severity of the message
	##   2: message (opt): the message to log (else stdin is read and logged)
	##
	## GLOBAL VARIABLES USED:
	##   __MsgTimestampFormat
	##

	local severity="${1}"; shift
	local message="${1}"; shift

	## ----- main -----

	## get current timestamp
	local timestamp=$(date "+${__MsgTimestampFormat:-%Y-%m-%d %H:%M:%S %:z}" 2>/dev/null)

	## log message
	__msgLog "${timestamp}" "${severity}" "" "${message}"

	return 0 # success

} # __log()

function __msg() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   processes a message (or stdin) for logging/printing/later mailing.
	##
	## ARGUMENTS:
	##   0: -q (opt): quiet (do not print message, required for print functions)
	##   1: severity (req): severity of the message
	##   2: message (opt): the message to log (else stdin is read and logged)
	##
	## GLOBAL VARIABLES USED:
	##   __MsgArray
	##   __MsgQuiet
	##   __MsgTimestampFormat
	##

	local quiet=0
	if [[ ${1} == "-q" ]]; then
		let quiet=1; shift
	fi
	local severity="${1}"; shift
	local message="${1}"; shift

	## ----- main -----

	## get current timestamp
	local timestamp=$(date "+${__MsgTimestampFormat:-%Y-%m-%d %H:%M:%S %Z}" 2>/dev/null)

	## check for global quiet operation setting
	if [[ ${__MsgQuiet} -eq 1 ]]; then
		let quiet=1
	fi

	## determine the line number and file name
	## of the current script file and the
	## calling function
	local callingFunction=
	local -i bashLineNumber=0
	local bashFileName=
	case "${FUNCNAME[1]}" in
		## we were called by __die()
		__die)
			## use the info of the function that called __die()
			bashFileName=${BASH_SOURCE[2]} # the file name where the function that called __die was called
			let bashLineNumber=${BASH_LINENO[1]} # the line number where __die was called
			callingFunction=${FUNCNAME[2]} # the name of the function that called __die
			;;
		## we were called by any other function
		*)
			## use the info of the function that called __msg()
			bashFileName=${BASH_SOURCE[1]} # the file name where the function that called __msg was called
			let bashLineNumber=${BASH_LINENO[0]} # the line number where __msg was called
			callingFunction=${FUNCNAME[1]} # the name of the function that called __msg
			;;
	esac
	bashFileName=${bashFileName##*/} # strip leading path

	## build message source string based on calling function
	local source=
	case "${callingFunction}" in
		## main execution/no function
		main)
			source="{${bashFileName}:${bashLineNumber}}"
			;;
		## __die function
		#__die)
		#	source="{${bashFileName}:${bashLineNumber}}, ${callingFunction}()"
		#	;;
		## we were called by any other function
		*)
			## use the calling function as message prefix
			source="{${bashFileName}:${bashLineNumber}}, ${callingFunction}()"
			;;
	esac

	## populate local messsage array
	local -a messageArray=()
	if [[ -z ${message} ]]; then
		## no message argument given, so read stdin
		## and append every line to the message array
		while read; do
			messageArray+=( "${REPLY}" )
		done
	else
		## single message argument
		messageArray=( "${message}" )
	fi

	## loop through local message array
	## and process messages:
	## - add message to global message array
	## - print message
	## - log message
	local -i m=0
	for ((m = 0; m < ${#messageArray[@]}; m++)); do

		## current message
		local currentMessage=${messageArray[m]}

		## append current message to the global message array
		__MsgArray+=( "${timestamp}|${severity}|${source}|${currentMessage}" )

		## only print current message if quiet operation isn't enabled
		if [[ ${quiet} -ne 1 ]]; then
			__msgPrint "${timestamp}" "${severity}" "${source}" "${currentMessage}"
		fi

		## log current message
		__msgLog "${timestamp}" "${severity}" "${source}" "${currentMessage}"

	done

	return 0 # success

} # __msg()

function __msgMail() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   sends all saved messages (and script subcommand log, if enabled) via mail
	##   this function is NOT intended to be called by the user!
	##
	## ARGUMENTS:
	##   /
	##
	## GLOBAL VARIABLES USED:
	##   __MailDebug (default: 0)
	##   __MailInfo (default: 1)
	##   __MailNotice (default: 1)
	##   __MailWarning (default: 1)
	##   __MailErr (default: 1)
	##   __MailCrit (default: 1)
	##   __MailAlert (default: 1)
	##   __MailEmerg (default: 1)
	##   __MailPrefixScriptNamePid (default: 0)
	##   __MailPrefixTimestamp (default: 1)
	##   __MailPrefixSeverity (default: 1)
	##   __MailPrefixSource (default: 1)
	##   __MailPrefixSeverity7 (default: [____DEBUG])
	##   __MailPrefixSeverity6 (default: [_____INFO])
	##   __MailPrefixSeverity5 (default: [___NOTICE])
	##   __MailPrefixSeverity4 (default: [__WARNING])
	##   __MailPrefixSeverity3 (default: [____ERROR])
	##   __MailPrefixSeverity2 (default: [_CRITICAL])
	##   __MailPrefixSeverity1 (default: [____ALERT])
	##   __MailPrefixSeverity0 (default: [EMERGENCY])
	##   __MailFrom
	##   __MailEnvelopeFrom
	##   __MailRecipient
	##   __MailSubject
	##   __MsgArray
	##   __ScriptFile
	##   __ScriptHost
	##

	local mailFrom=${__MailFrom:-${USER} <${USER}@${__ScriptHost}>}
	local mailEnvelopeFrom=${__MailEnvelopeFrom:-${USER}@${__ScriptHost}}
	local mailRecipient=${__MailRecipient:-${USER}@${__ScriptHost}}
	local mailSubject=${__MailSubject:-Messages from ${__ScriptFile} running on ${__ScriptHost}}

	## ----- main -----

	## check whether the global message array contains any messages at all
	if [[ ${#__MsgArray[@]} -eq 0 ]]; then
		return 0
	fi

	## initialize mail message array
	local -a mailMessageArray=()

	## loop through global message array
	local -i i=0
	for ((i = 0; i < ${#__MsgArray[@]}; i++)); do
		IFS='|'
		set -- ${__MsgArray[i]}
		unset IFS
		local timestamp=${1}; shift
		local severity=${1}; shift
		local source=${1}; shift
		local message=${@}
		set --

		## check whether message is to be mailed at all
		case ${severity} in
			  debug|7) if [[ ${__MailDebug:-0}   -ne 1 ]]; then continue; fi ;;
			   info|6) if [[ ${__MailInfo:-1}    -ne 1 ]]; then continue; fi ;;
			 notice|5) if [[ ${__MailNotice:-1}  -ne 1 ]]; then continue; fi ;;
			warning|4) if [[ ${__MailWarning:-1} -ne 1 ]]; then continue; fi ;;
			    err|3) if [[ ${__MailErr:-1}     -ne 1 ]]; then continue; fi ;;
			   crit|2) if [[ ${__MailCrit:-1}    -ne 1 ]]; then continue; fi ;;
			  alert|1) if [[ ${__MailAlert:-1}   -ne 1 ]]; then continue; fi ;;
			  emerg|0) if [[ ${__MailEmerg:-1}   -ne 1 ]]; then continue; fi ;;
		esac

		## mapping severity -> severityPrefix
		local severityPrefix=
		case ${severity} in
			  debug|7) severityPrefix="${__MailPrefixSeverity7:-[____DEBUG]}" ;;
			   info|6) severityPrefix="${__MailPrefixSeverity6:-[_____INFO]}" ;;
			 notice|5) severityPrefix="${__MailPrefixSeverity5:-[___NOTICE]}" ;;
			warning|4) severityPrefix="${__MailPrefixSeverity4:-[__WARNING]}" ;;
			    err|3) severityPrefix="${__MailPrefixSeverity3:-[____ERROR]}" ;;
			   crit|2) severityPrefix="${__MailPrefixSeverity2:-[_CRITICAL]}" ;;
			  alert|1) severityPrefix="${__MailPrefixSeverity1:-[____ALERT]}" ;;
			  emerg|0) severityPrefix="${__MailPrefixSeverity0:-[EMERGENCY]}" ;;
		esac

		##
		## final message structure in order (components can be disabled):
		##   timestamp severityPrefix source message
		##

		local messagePrefix=

		## 1. prefix message with source?
		if [[ -n ${source} ]]; then
			case ${__MailPrefixSource:-1} in
				1) messagePrefix="${source}: ${messagePrefix}" ;;
				*) ;;
			esac
		fi

		## 2. prefix message with severity?
		case ${__MailPrefixSeverity:-1} in
			1) messagePrefix="${severityPrefix} ${messagePrefix}" ;;
			*) ;;
		esac

		## 3. prefix message with timestamp?
		case ${__MailPrefixTimestamp:-1} in
			1) messagePrefix="${timestamp} ${messagePrefix}" ;;
			*) ;;
		esac

		## 4. prefix message with script name + pid?
		case ${__MailPrefixScriptNamePid:-1} in
			1) messagePrefix="${__ScriptName:-${0##*/}}[${$}] ${messagePrefix}" ;;
			*) ;;
		esac

		## push final message into array
		mailMessageArray+=( "${messagePrefix}${message}" )
	done

	## check whether the mail message array contains any messages at all
	if [[ ${#mailMessageArray[@]} -eq 0 ]]; then
		return 0
	fi

	## send mail
	{
		## print all messages that are to be mailed
		for ((i = 0; i < ${#mailMessageArray[@]}; i++)); do
			echo "${mailMessageArray[i]}"
		done
		## append script subcommand log?
		if [[ ${__MailAppendScriptSubCommandLog:-1} -eq 1 \
			&& ${__ScriptSubCommandLog:-0} -eq 1 \
			&& ${__ScriptSubCommandLogFile} != /dev/null \
			&& -s ${__ScriptSubCommandLogFile} ]]; then
			echo
			echo "--8<--[ start of script subcommand log (${__ScriptSubCommandLogFile}) ]--8<--"
			cat "${__ScriptSubCommandLogFile}" 2>/dev/null
			echo "--8<--[ end of script subcommand log ]--8<--"
		fi
	} | __mail \
		"${mailFrom}" \
		"${mailEnvelopeFrom}" \
		"${mailRecipient}" \
		"${mailSubject}"
	local -i returnValue=${?}
	case ${returnValue} in
		0)
			__msg debug "successfully sent mail"
			;;
		2)
			__msg err "failed sending mail"
			return 2 # error
			;;
		*)
			__msg err "undefined return value: ${returnValue}"
			return 2 # error
			;;
	esac

	return 0 # success

} # __msgMail()

function __mail() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   sends the contents of stdin via mail
	##
	## ARGUMENTS:
	##   1: mailFrom (req): Some User <some.user@example.com>
	##   2: mailEnvelopeFrom (req): some.user@example.com
	##   3: mailRecipient (req): some.user@example.com
	##   4: mailSubject (req): Messages from thisscript
	##
	## GLOBAL VARIABLES USED:
	##   __ScriptFile
	##   __ScriptHost
	##   __SendmailBin (default: /usr/sbin/sendmail)
	##   __SendmailArgs (default: -t)
	##

	local mailFrom=${1}
	if [[ -z "${mailFrom}" ]]; then
		__msg err "argument 1 (mailFrom) missing"
		return 2 # error
	fi
	__msg debug "mailFrom: ${mailFrom}"

	local mailEnvelopeFrom=${2}
	if [[ -z "${mailEnvelopeFrom}" ]]; then
		__msg err "argument 2 (mailEnvelopeFrom) missing"
		return 2 # error
	fi
	__msg debug "mailEnvelopeFrom: ${mailEnvelopeFrom}"

	local mailRecipient=${3}
	if [[ -z "${mailRecipient}" ]]; then
		__msg err "argument 3 (mailRecipient) missing"
		return 2 # error
	fi
	__msg debug "mailRecipient: ${mailRecipient}"

	local mailSubject=${4}
	if [[ -z "${mailSubject}" ]]; then
		__msg err "argument 4 (mailSubject) missing"
		return 2 # error
	fi
	__msg debug "mailSubject: ${mailSubject}"

	## ---- main -----

	## get current timestamp
	local timestamp=$(date "+%Y-%m-%d %H:%M:%S" 2>/dev/null)

	## read stdin and append every line to the body array
	local -a mailBodyArray=()
	while read; do
		mailBodyArray+=( "${REPLY}" )
	done

	## sendmail arguments
	local sendmailArgs="${__SendmailArgs:--t}"

	## send mail via sendmail
	{
		echo "From: ${mailFrom}"
		echo "To: ${mailRecipient}"
		echo "Subject: ${mailSubject}"
		echo
		local -i i=0
		for ((i = 0; i < ${#mailBodyArray[@]}; i++)); do
			echo "${mailBodyArray[i]}"
		done
		echo
		echo "-- "
		echo "sent by ${__ScriptFile} running on ${__ScriptHost} at ${timestamp}"
	} | "${__SendmailBin:-/usr/sbin/sendmail}" -f "${mailEnvelopeFrom}" ${sendmailArgs} >>"${_L:-/dev/null}" 2>&1
	local -i sendmailExitCode=${?}
	case ${sendmailExitCode} in
		0)
			__msg debug "successfully sent mail via sendmail"
			;;
		*)
			__msg err "failed sending mail via sendmail (sendmail exit code: ${sendmailExitCode})"
			return 1
			;;
	esac

	return 0 # success

} # __mail()


function __trapExit() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   trap function for script exits
	##
	## ARGUMENTS:
	##   /
	##
	## GLOBAL VARIABLES USED:
	##   /
	##

	## ----- main -----

	## mail saved messages
	__msgMail
	local -i returnValue=${?}
	case ${returnValue} in
		0)
			__msg -q debug "successfully mailed saved messages"
			;;
		2)
			__msg -q err "failed mailing saved messages"
			return 2 # error
			;;
		*)
			__msg -q err "unexpected __msgMail() return value: ${returnValue}"
			return 2 # error
			;;
	esac

	return 0 # success

} # __trapExit()

trap "__trapExit" EXIT

function __trapSignals() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   trap function for script signals
	##
	## ARGUMENTS:
	##   1: signal (req): signal that was trapped
	##
	## GLOBAL VARIABLES USED:
	##   /
	##

	local signal=${1}
	if [[ -z "${signal}" ]]; then
		__msg err "argument 1 (signal) missing"
		return 2 # error
	fi
	__msg debug "signal: ${signal}"

	## ----- main -----

	## check for a user-defined trap function and call it
	if declare -F __trap${signal} &>/dev/null; then
		__trap${signal}
		return ${?}
	fi

	## default: generate a message and die on certain signals
	local -i die=0
	case ${signal} in
		 SIGHUP) die=1; msg="received hangup signal" ;;
		 SIGINT) die=1; msg="received interrupt from keyboard" ;;
		SIGQUIT) die=1; msg="received quit from keyboard" ;;
		SIGABRT) die=1; msg="received abort signal" ;;
		SIGPIPE) die=1; msg="broken pipe" ;;
		SIGALRM) die=1; msg="received alarm signal" ;;
		SIGTERM) die=1; msg="received termination signal" ;;
		      *) die=0; msg="trapped signal ${signal}" ;;
	esac
	if [[ ${die} -ne 0 ]]; then
		__msg err "${msg}"
		exit 2 # error
	else
		__msg notice "${msg}"
	fi

	return 0 # success

} # __trapSignals()

declare -a __TrapSignals=(
	SIGHUP  # 1
	SIGINT  # 2 (^C)
	SIGQUIT # 3 (^\)
	SIGABRT # 6
	SIGPIPE # 13
	SIGALRM # 14
	SIGTERM # 15
)
for signal in "${__TrapSignals[@]}"; do
	trap "__trapSignals ${signal}" "${signal}"
done


function __includeSource() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   source a file
	##
	## ARGUMENTS:
	##   1: file (req): the file to include
	##
	## GLOBAL VARIABLES USED:
	##   _L
	##

	local file=${1}
	if [[ -z "${file}" ]]; then
		__msg err "argument 1 (file) missing"
		return 2 # error
	fi

	## ----- main -----

	if ! source "${file}" >>"${_L:-/dev/null}" 2>&1; then
		__msg crit "failed to include source file '${file}'"
		return 2 # error
	fi

	return 0 # success

} # __includeSource()

function __requireSource() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   source a file and die on failure
	##
	## ARGUMENTS:
	##   1: file (req): the file to include
	##
	## GLOBAL VARIABLES USED:
	##   _L
	##

	local file=${1}
	if [[ -z "${file}" ]]; then
		__die ${__DieExitCode:-2} "argument 1 (file) missing"
	fi

	## ----- main -----

	if ! source "${file}" >>"${_L:-/dev/null}" 2>&1; then
		__die ${__DieExitCode:-2} "failed to include required source file '${file}'"
	fi
	return 0 # success

} # __requireSource()

function __requireCommand() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   check if a required command is found in PATH and die on failure
	##
	## ARGUMENTS:
	##   1: command (req): the program to check for
	##
	## GLOBAL VARIABLES USED:
	##   /
	##

	local command=${1}
	if [[ -z "${command}" ]]; then
		__msg err "argument 1 (command) missing"
		return 2 # error
	fi
	__msg debug "command: ${command}"

	## ----- main -----

	if ! type -P "${command}" &>/dev/null; then
		__die ${__DieExitCode:-2} "required command '${command}' not found in PATH"
	fi

	return 0 # success

} # __requireCommand()

function __addPrefix() {

	## ----- head -----
	##
	## DESCRIPTION:
	##   add a prefix to a line of text read from stdin
	##
	## ARGUMENTS:
	##   *: prefix (req): the prefix to add
	##
	## GLOBAL VARIABLES USED:
	##   /
	##

	local prefix=${@}
	if [[ -z "${prefix}" ]]; then
		__msg -q err "argument 1 (prefix) missing"
		return 2 # error
	fi
	__msg -q debug "prefix: ${prefix}"

	## ----- main -----

	prefix=${prefix//\\/\\\\} # escape \
	prefix=${prefix//:/\\:}   # escape :
	sed -e "s:^:${prefix}:g"

} # __addPrefix()

function __Download_Files()
{
	## ----- head -----
	##
	## DESCRIPTION:
	##   Down load a files from web
	##
	## ARGUMENTS:
	##   *: url (req): download url
	##   *: name (req): download filename
	##
	## GLOBAL VARIABLES USED:
	##   /
	##

    local URL=$1
    local FileName=$2
    if [ -s "${FileName}" ]; then
        echo "${FileName} [found]"
    else
        echo "Notice: ${FileName} not found!!!download now..."
        wget -c --progress=bar:force ${URL}
    fi
} #__Download_Files

function __Color_Text()
{
    ## determine whether we can show colors
    local -i colorTerm=0
    case "${TERM}" in
        rxvt*|screen*|xterm*) let colorTerm=1 ;;
        *) let colorTerm=0 ;;
    esac

    if [[ ${colorTerm} -eq 0 ]];then
        echo -e "$1"
    else
        echo -e "\033[$2m${1}\033[m"
    fi
}

function __Echo_Red()
{
    echo $(__Color_Text "$1" "31")
}

function __Echo_Green()
{
    echo $(__Color_Text "$1" "32")
}

function __Echo_Yellow()
{
    echo $(__Color_Text "$1" "33")
}

function __Echo_Blue()
{
    echo $(__Color_Text "$1" "34")
}

function __Echo_Normal()
{
    echo ${1}

}

function __SelectExample()
{
    __Echo_Normal "==========================="

    YourSelect="3"
    __Echo_Yellow "You have 6 options for your Select."
    __Echo_Normal "1: Option 1"
    __Echo_Normal "2: Option 2"
    __Echo_Blue   "3: Install PHP 5.4.45 (Default)"
    __Echo_Normal "4: Option 4"
    __Echo_Normal "5: Option 5"
    __Echo_Normal "6: Option 6"
    read -p "Enter your choice (1, 2, 3, 4, 5 or 6): " YourSelect

    case "${YourSelect}" in
        1)
            echo "Option 1"
            ;;
        2)
            echo "Option 2"
            ;;
        3)
            echo "Option 3"
            ;;
        4)
            echo "Option 4"
            ;;
        5)
            echo "Option 5"
            ;;
        6)
            echo "Option 6"
            ;;
        *)
            echo "No input,Option 3"
            YourSelect="3"
    esac
}

function __SelectExample2
{
    local oldifs=IFS
    declare -a options
    while ISF='\n' read  -r file;do
        options+=("$file");
    done <${__TIMESTAMEFILE}
    unset IFS

    __Echo_Normal "==========================="
    __Echo_Yellow "选择你想要上传的时间点："
    __Echo_Blue   "打包时间 0:当前时间"
    local idx=0
    while [[ $idx -lt ${#options[@]} ]];do
        __Echo_Normal "打包时间 "$(($idx+1))":${options[$idx]}"
        idx=$(($idx+1))
    done

    read -p "Enter your choice: " YourSelect
    __msg debug "choice ${YourSelect}"

    if [[ ${YourSelect} -gt 0 && ${YourSelect} -le ${#options[@]} ]];then
        idx=$(($YourSelect-1));
        local timestamp="${options[$idx]}"
        timestamp=${timestamp:1:19}
        local tst=${timestamp:2:2}
        tst=${tst}${timestamp:5:2}
        tst=${tst}${timestamp:8:2}
        tst=${tst}${timestamp:11:2}
        tst=${tst}${timestamp:14:2}
        tst=${tst}.${timestamp:17:2}
        touch -t "${tst}" ${__TIMESTAMEFILE}
        __msg debug "choice timestamp:${timestamp}"
    else
        export __ChoiceExit=1;
        __msg debug "export __ChoiceExit=1"
    fi
}

## =========Merge file: ./build/generate/generate.lib.sh =========



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
        __Echo_Green "rename $PROJECTDIR/law.tmp.sh $PROJECTDIR/${PROJECTNAME}.packet.sh Success!"
    fi
    if rm -f "$PROJECTDIR/law.tmp.sh" ;then
        __Echo_Green "rm $PROJECTDIR/law.tmp.sh Sucessed"
    fi
    __Echo_Green "Generate_Onefile Sucess,packet file:${PROJECTNAME}.packet.sh"
}

## =========Merge file: ./build/generate/generate.cfg.sh =========



## =========Merge file: ./build/generate/generate.sh =========
#!/bin/bash



export __ScriptFile=${0##*/} # evaluates to "example.sh"
export __ScriptName=${__ScriptFile%.sh} # evaluates to "example"
export __ScriptPath=${0%/*}; __ScriptPath=${__ScriptPath%/} # evaluates to /path/to/example/example.sh
export __ScriptHost=$(hostname -f) # evaluates to the current hostname, e.g. host.example.com


export __BashinatorConfig="${__BashinatorConfig:-${__ScriptPath}/bashinator.cfg.sh}"
export __BashinatorLibrary="${__BashinatorLibrary:-${__ScriptPath}/bashinator.lib.0.sh}" # APIv0
#export __BashinatorConfig="/etc/${__ScriptName}/bashinator.cfg.sh"
#export __BashinatorLibrary="/usr/share/bashinator/bashinator.lib.0.sh" # bashinator API v0

#export __BashinatorConfig="${__ScriptPath}/bashinator.cfg.sh"
#export __BashinatorLibrary="${__ScriptPath}/bashinator.lib.0.sh" # bashinator API v0

if [[ -f ${__BashinatorConfig} ]] && ! source "${__BashinatorConfig}"; then
    echo "!!! FATAL: failed to source bashinator config '${__BashinatorConfig}'" 1>&2
    exit 2
fi

if [[ -f ${__BashinatorConfig} ]] && ! source "${__BashinatorLibrary}"; then
    echo "!!! FATAL: failed to source bashinator library '${__BashinatorLibrary}'" 1>&2
    exit 2
fi


__boot


export ApplicationConfig="${ApplicationConfig:-${__ScriptPath}/${__ScriptName}.cfg.sh}"
export ApplicationLibrary="${ApplicationLibrary:-${__ScriptPath}/${__ScriptName}.lib.sh}"
#export ApplicationConfig="/etc/${__ScriptName}/${__ScriptName}.cfg.sh"
#export ApplicationLibrary="/usr/share/${__ScriptName}/${__ScriptName}.lib.sh"

#export ApplicationConfig="${__ScriptPath}/${__ScriptName}.cfg.sh"
#export ApplicationLibrary="${__ScriptPath}/${__ScriptName}.lib.sh"

##__requireSource "${ApplicationConfig}"
##__requireSource "${ApplicationLibrary}"


__dispatch "${@}"
