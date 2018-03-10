alias ty type

# linuxbrew
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx PATH ~/.linuxbrew/bin $PATH
set -gx MANPATH ~/.linuxbrew/share/man $MANPATH
set -gx INFOPATH ~/.linuxbrew/share/info $INFOPATH

alias bs 'brew search'
alias bi 'brew info'
alias biv 'brew install -v'

# pyenv
set -gx PATH ~/.pyenv/bin $PATH

status --is-interactive; and begin
  source (pyenv init - fish |psub)
  source (pyenv virtualenv-init - fish |psub)
end
