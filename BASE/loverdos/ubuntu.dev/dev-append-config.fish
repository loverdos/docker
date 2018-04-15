# general
function have
  type -q $argv[1]
end

# linuxbrew
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx PATH ~/.linuxbrew/bin $PATH
set -gx MANPATH ~/.linuxbrew/share/man $MANPATH
set -gx INFOPATH ~/.linuxbrew/share/info $INFOPATH

alias bs 'brew search'
alias bh 'brew home'
alias bi 'brew info'
alias biv 'brew install -v'
alias bup 'brew update'
alias bug 'brew upgrade -v'
alias b brew
alias bout 'brew outdated'

# git
alias cst 'clear; git st'
abbr -a gd git diff
abbr -a clone git clone
abbr -a pull git pull
abbr -a fetch git fetch

function git-select-branch
  have fzy; and begin
    git checkout (git branch | cut -c 3- | fzy)
  end
end

function git-repack
  du -sh
  git repack -ad
  git gc
  du -sh
end

# nix
if test -e ~/.nix-profile/bin; 
  set -l NIX_LINK ~/.nix-profile
  
  set -gx PATH $NIX_LINK/sbin $PATH
  set -gx PATH $NIX_LINK/bin  $PATH
  set -gx MANPATH $NIX_LINK/share/man $MANPATH

  set -gx NIX_PATH "nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs"

  # debian, ubuntu
  set -x NIX_SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt
end