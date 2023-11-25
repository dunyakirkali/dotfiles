# tmux
if [ -z "$TMUX" ]
then
  tmux attach || tmux new
fi

. /opt/homebrew/opt/asdf/libexec/asdf.sh    			# asdf

eval "$(zoxide init zsh)"                   			# zoxide
eval "$(direnv hook zsh)"                   			# direnv
eval "$(starship init zsh)"                 			# starship
# eval "$(zellij setup --generate-auto-start zsh)"	# zellij

export EDITOR=nvim

# VIM Mode
bindkey -v

# History
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Nix
 if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
 fi
 # End Nix
