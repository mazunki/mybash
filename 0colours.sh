export RESTORE=$(echo -en '\001\033[0m\002')
export RED=$(echo -en '\001\033[00;31m\002')
export GREEN=$(echo -en '\001\033[00;32m\002')
export YELLOW=$(echo -en '\001\033[00;33m\002')
export MYYELLOW=$(echo -en '\001\033[2;00;33m\002')
export BLUE=$(echo -en '\001\033[00;34m\002')
export MAGENTA=$(echo -en '\001\033[00;35m\002')
export PURPLE=$(echo -en '\001\033[00;35m\002')
export CYAN=$(echo -en '\001\033[00;36m\002')
export LIGHTGRAY=$(echo -en '\001\033[00;37m\002')
export LRED=$(echo -en '\001\033[01;31m\002')
export LGREEN=$(echo -en '\001\033[01;32m\002')
export LYELLOW=$(echo -en '\001\033[01;33m\002')
export LBLUE=$(echo -en '\001\033[01;34m\002')
export LMAGENTA=$(echo -en '\001\033[01;35m\002')
export LPURPLE=$(echo -en '\001\033[01;35m\002')
export LCYAN=$(echo -en '\001\033[01;36m\002')
export WHITE=$(echo -en '\001\033[01;37m\002')

function stipledline() {
	let fillsize=${COLUMNS}-9
	fill="${MYYELLOW}"
	while [ "$fillsize" -gt "0" ]; do
		fill="-${fill}"
		let fillsize=${fillsize}-1
	done
	fill="${fill}${LRESTORE}$(date +" %H:%M:%S")"
	LINE="${fill}"

	echo -en ${LINE}
}

### export LINE=$(echo "${MYYELLOW}$(printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -)${LRESTORE}")


