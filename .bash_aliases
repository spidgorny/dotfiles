function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls -l | head
}

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

