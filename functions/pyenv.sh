# load pyenv on demand

function loadpyenv() {
    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin;$PATH"
    eval "$(pyenv init - bash)"
}
