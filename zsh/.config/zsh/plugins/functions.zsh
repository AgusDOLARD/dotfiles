dvim(){
	docker run -it -v ${@:-$(pwd)}:/workspace -e HOST_USER_ID=$(id -u $USER) -e HOST_GROUP_ID=$(id -g $USER) dolard/vim:latest
}
dim(){
    if [ "$1" ]; then
        docker images -a | grep $1 | awk '{print $3}' | xargs docker rmi -f
    else
        docker images 
    fi
}
md() {
	mkdir -p "$@" && cd "$@"
}
gitpush() {
    git add .
    git commit -m "$*"
    git pull
    git push
}
cc() { find "${DOTS:-$HOME/.dots}" -type d \( -name autoload -o -name .git \) -prune -o -type f -print | fzf | xargs -r $EDITOR }
fkill() {
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}

if (( $+commands[pacman] )); then
	command_not_found_handler() {
		local pkgs cmd="$1" files=()
		printf 'zsh: command not found: %s' "$cmd" # print command not found asap, then search for packages
		files=(${(f)"$(pacman -F --machinereadable -- "/usr/bin/${cmd}")"})
		if (( ${#files[@]} )); then
			printf '\r%s may be found in the following packages:\n' "$cmd"
			local res=() repo package version file
			for file in "$files[@]"; do
				res=("${(0)file}")
				repo="$res[1]"
				package="$res[2]"
				version="$res[3]"
				file="$res[4]"
				printf '  %s/%s %s: /%s\n' "$repo" "$package" "$version" "$file"
			done
		else
			printf '\n'
		fi
		return 127
	}
fi
