eval "$(zoxide init zsh --cmd cd)"

zstyle ':omz:update' mode disabled

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${HOME}/.local/share/gem/"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export CHROME_EXECUTABLE=/usr/bin/brave
export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=30
export TYPEWRITTEN_COLOR_MAPPINGS="primary:#DBE2EF;secondary:#A7C5EB;accent:#F4F4F2;info_negative:#FC5185;info_positive:#8CEA71;info_neutral_1:#FF9580;info_neutral_2:#FFFF80;info_special:#80FFEA"
export TYPEWRITTEN_SYMBOL="魂"
export TYPEWRITTEN_ARROW_SYMBOL="➜"
export TYPEWRITTEN_CURSOR="underscore"
export PF_INFO="title os wm editor uptime memory"
export PF_ASCII=""
export PF_ALIGN="10"
export PF_COL1="3"
export PF_COL2="2"
ZSH_THEME="typewritten"
SPACESHIP_CHAR_SYMBOL="-> "
SPACESHIP_CHAR_COLOR_SUCCESS="#88C0D0"
SPACESHIP_CHAR_COLOR_FAILURE="#BF616A"
SPACESHIP_CHAR_COLOR_SECONDARY="#EBCB8B"
#SPACESHIP_HOST_SHOW=always
#SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR="#EBCB8B"
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_TIME_COLOR="#EBCB8B"
SPACESHIP_TIME_FORMAT=%w
SPACESHIP_DIR_TRUNC=1

BAT_THEME="Catppuccin-mocha"

DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(git zsh-autosuggestions)


 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

alias ls="exa -lgh --icons --group-directories-first"
alias ping="gping"
alias cat="bat --paging=never"
alias ps="procs"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

PATH=~/.console-ninja/.bin:$PATH
# pnpm
export PNPM_HOME="/home/rndy/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
