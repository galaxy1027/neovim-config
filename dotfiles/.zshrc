# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/branfordc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Custom Prompt w/ git branch display
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%~%f %F{red}${vcs_info_msg_0_}%f%F{green}> %f'

# ls coloring
alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# history seraches text entered in prompt
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
