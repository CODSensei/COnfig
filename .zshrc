# Created by newuser for 5.8.1
# ~/.zshrc: executed by zsh for interactive shells.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bindkey '\e[1;5D' backward-word  # Ctrl + Left Arrow moves cursor left by one word
bindkey '\e[1;5C' forward-word   # Ctrl + Right Arrow moves cursor right by one word

# History settings
HISTSIZE=10000         # Number of commands to keep in memory
SAVEHIST=10000         # Number of commands to save in ~/.zsh_history
HISTFILE=~/.zsh_history

setopt APPEND_HISTORY            # Append to history file instead of overwriting
setopt INC_APPEND_HISTORY        # Save history incrementally
setopt SHARE_HISTORY             # Share history between multiple terminals
setopt HIST_IGNORE_DUPS          # Ignore duplicate commands
setopt HIST_IGNORE_ALL_DUPS      # Remove older duplicate entries
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history
setopt HIST_SAVE_NO_DUPS         # Do not save duplicates in history file
setopt HIST_VERIFY               # Require confirmation before running history expansions
setopt EXTENDED_HISTORY          # Save timestamps for commands

# Enable terminal size update
zshaddhistory() {
    if [[ -z "$HISTFILE" ]]; then return; fi
    fc -W
}

# Colored prompt setup
autoload -U colors && colors
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='nvim'
alias cdjava='cd /mnt/DATA/myWork/Java/'
alias cdwork='cd /mnt/DATA/myWork/'

# Load additional aliases from ~/.zsh_aliases if it exists
[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases

# Environment variables
export PATH="$PATH:/opt/nvim-linux64/bin"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
# export JAVA_HOME="/usr/local/android-studio/jbr"
# export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$HOME/.local/bin:$PATH
source "$HOME/.cargo/env"
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # Load nvm
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"  # Load nvm bash_completion

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# Initialize Starship prompt
eval "$(starship init zsh)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# fortune | lolcat
# pokeget random
# cowsay hello $USER
cowsay KaaChow
# cat "EOF"
                                                                                                 "
