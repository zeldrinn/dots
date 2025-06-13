# add homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv setup (including add to PATH)
eval "$(pyenv init -)"
# pretty sure the below inits aren't needed
#eval "$(pyenv virtualenv-init -)"
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
