# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab
ZVM_SYSTEM_CLIPBOARD_ENABLED=true
zinit light jeffreytse/zsh-vi-mode

# History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Completion
autoload -Uz compinit
compinit

# Starship - promp customizer
eval "$(starship init zsh)"

# Lazy load nvm
export NVM_DIR="$HOME/.nvm"
nvm() {
  unfunction nvm
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
  nvm "$@"
}

# Plugin config
zstyle ':fzf-tab:*' fzf-bindings 'ctrl-y:accept'
zvm_after_init() {
  bindkey '^y' autosuggest-accept
}
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Vars
export EDITOR='nvim'
export VISUAL='nvim'
