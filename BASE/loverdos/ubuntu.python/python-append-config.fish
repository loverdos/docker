# pyenv
set -gx PATH ~/.pyenv/bin $PATH

status --is-interactive; and begin
  source (pyenv init - fish |psub)
  source (pyenv virtualenv-init - fish |psub)
end
