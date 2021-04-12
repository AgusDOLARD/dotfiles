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
cc() { find $HOME/.dots -type d \( -name autoload -o -name .git \) -prune -o -type f -print | fzf --height 40% --reverse | xargs -r $EDITOR }
