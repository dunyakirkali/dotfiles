# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git asdf brew direnv fzf ripgrep zoxide starship)

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

# Nix
 if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
 fi

 . /opt/homebrew/opt/asdf/libexec/asdf.sh

 export PATH="/opt/homebrew/bin:$PATH"

