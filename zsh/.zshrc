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

# Partial search up arrow
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
