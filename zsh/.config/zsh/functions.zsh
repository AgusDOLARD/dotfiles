dim(){
    if [ "$1" ]; then
        docker images -a | grep $1 | awk '{print $3}' | xargs docker rmi -f
    else
        docker images -a
    fi
}
gitpush() {
    git add .
    git commit -m "$*"
    git pull
    git push
}
