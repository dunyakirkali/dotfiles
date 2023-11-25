# tmux
if [ -z "$TMUX" ]
then
  tmux attach -t booking || tmux new -s booking
fi

. /opt/homebrew/opt/asdf/libexec/asdf.sh    			# asdf

eval "$(zoxide init zsh)"                   			# zoxide
eval "$(direnv hook zsh)"                   			# direnv
eval "$(starship init zsh)"                 			# starship
# eval "$(zellij setup --generate-auto-start zsh)"	# zellij

export EDITOR=nvim

# No duplicate history when reverse-searching my commands
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Case insensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# VIM Mode
# bindkey -v

# Partial search up arrow
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
