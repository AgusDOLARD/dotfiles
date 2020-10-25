dim(){
    if [ "$1" ]; then
		docker images -a | awk '/^[^REPOSITORY]/ { print $1, $2, $3 }' | fzf --height 40% --reverse -m | awk '{ print $3 }' | xargs -r docker rmi -f
    else
        docker images -a
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
cc() { find $HOME/.dots -type d \( -name autoload -o -name .git \) -prune -o -type f -print | fzf | xargs -r $EDITOR }
