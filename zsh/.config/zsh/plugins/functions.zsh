dim(){
    if [ "$1" ]; then
        docker images -a | grep $1 | awk '{print $3}' | xargs docker rmi -f
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
cc() { find ~/.dots -type d \( -name autoload -o -name .git \) -prune -o -type f -print | fzf | xargs -r $EDITOR }
