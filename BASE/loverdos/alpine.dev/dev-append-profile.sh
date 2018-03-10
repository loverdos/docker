# linuxbrew
export HOMEBREW_NO_ANALYTICS=1
export PATH=~/.linuxbrew/bin:$PATH
export MANPATH=~/.linuxbrew/share/man:$MANPATH
export INFOPATH=~/.linuxbrew/share/info:$INFOPATH

# pyenv
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"