# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git asdf brew fzf zoxide starship dotenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliasses
alias ls="eza -a --icons --no-user --no-time"
alias ll="eza -alh"
alias tree="eza --tree"
alias cd="z"
alias zz="z -"
alias cat="bat --plain --wrap character"
alias mt="mix test --trace"
alias mf="mix format"
alias lg="lazygit"
alias vim="nvim"
alias ze="zed ."
alias nv="nvim ."
alias nm="noemutt"
alias be="bundle exec"

export PATH=$PATH:/usr/local/bin
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

source <(fzf --zsh)
eval "$(atuin init zsh)"

export PATH="/opt/homebrew/opt/libpng/bin:$PATH"
