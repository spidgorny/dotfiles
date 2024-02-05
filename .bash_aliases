function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls -l | head
}

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias log="tail -f /var/log/apache2/error.log | sed 's/\\\\n/\\n/g'"
alias composer="php ~/dev/composer.phar"
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export PS1="$PS1\n> "
