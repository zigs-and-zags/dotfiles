export HOMEBREW_PATH="/opt/homebrew/bin:/opt/homebrew/sbin"
export CUSTOM_BIN="/Users/tristan/.local/bin"
export PATH="$HOMEBREW_PATH:$CUSTOM_BIN:$PATH"
# TODO run with docker?
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-21.jdk"

export EDITOR=hx
export GIT_EDITOR=code
export VISUAL=code
export DIFFPROG="code"
export MANWIDTH=999

autoload -Uz compinit && compinit   # loads autocompletions
_comp_options+=(globdots)           # includes hidden files.

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local}/share/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source and load all we need
source "${ZINIT_HOME}/zinit.zsh"
[ -f ~/.config/zsh/functions ] && source ~/.config/zsh/functions
[ -f ~/.config/zsh/alias ] && source ~/.config/zsh/alias

# Zsh plugins with zinit
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Keybindings
bindkey -e
bindkey '^n' history-search-backward
bindkey '^b' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.cache/zsh/history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Custom prompt style
autoload -Uz vcs_info
zstyle ":vcs_info:*" enable git
precmd() { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:git:*' formats " %F{172}[%F{247}%b%F{172}]"
PROMPT="%F{117}%c%{$reset_color%}"
PROMPT+="\$vcs_info_msg_0_ "

zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

eval "$(fzf --zsh)"        # activates fzf
eval "$(zoxide init zsh)"  # activates zoxide

# Homebrew config
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

