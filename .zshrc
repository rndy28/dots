zstyle ':omz:update' mode disabled

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${HOME}/.local/share/gem/"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export CHROME_EXECUTABLE=/usr/bin/brave
export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=30
export TYPEWRITTEN_COLOR_MAPPINGS="primary:#DBE2EF;secondary:#A7C5EB;accent:#F4F4F2;info_negative:#FC5185;info_positive:#8CEA71;info_neutral_1:#FF9580;info_neutral_2:#FFFF80;info_special:#80FFEA"
export TYPEWRITTEN_SYMBOL="魂"
export TYPEWRITTEN_CURSOR="terminal"
export PF_INFO="title os wm editor uptime memory"
export PF_ASCII=""
export PF_ALIGN="10"
export PF_COL1="3"
export PF_COL2="2"
#export PF_SEP=">"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
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

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

alias ls="exa -lgh --icons --group-directories-first"
alias ping="gping"
alias cat="bat --paging=never"
alias ps="procs"
