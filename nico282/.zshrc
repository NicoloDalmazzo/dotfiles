# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

print_monviso_smaller() {
    echo ""
    echo "\033[38;5;152m         ╱╲                    \033[0m"
    echo "\033[38;5;146m        ╱  ╲                   \033[0m"
    echo "\033[38;5;145m      ╱▔    ╲╱╲                \033[0m"
    echo "\033[38;5;110m▁▁╱▔╲╱         ╲╱▔▔╲▁▁         \033[0m"
    echo ""
}
print_monviso() {
    echo ""
    echo "\033[38;5;188m          ╱╲                    \033[0m"
    echo "\033[38;5;250m         ╱  ╲                   \033[0m"
    echo "\033[38;5;146m        ╱    ╲                  \033[0m"
    echo "\033[38;5;145m      ╱▔      ╲╱╲               \033[0m"
    echo "\033[38;5;110m▁▁╱▔╲╱           ╲╱▔▔╲▁▁        \033[0m"
    echo ""
}
# Call the function
#print_monviso

ZSH_DISABLE_COMPFIX="true"

# Export the config path of the starship configuration file
export STARSHIP_CONFIG=~/.config/starship/starship.toml


# disable normal prompt when activated a python virtual env
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# change default editor to neovim
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
# Add personal paths
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/home/nico282/.config/yarn/global/node_modules/tree-sitter-cli"
export PATH="$PATH:/home/nico282/.cargo/env"
export PATH="$PATH:/opt/ghidra"
export PATH="$PATH:/snap/bin"
export PATH="$PATH:/home/nico282/nico282/University/UNI-material/II-Year/I-Semester/SVT/Laboratory/Lab04/04lab_SC/04lab_SC/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions z nmap alias-finder)

# Zsh autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#5e81ac'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ---- ALIAS FINDER ----
zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' longer yes # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes # disabled by default
zstyle ':omz:plugins:alias-finder' cheaper yes # disabled by default

# -------- ALIAS -------
alias suz="sudo -E"
alias ccp="wl-copy <"

# --------- VENV -------
alias cryptosource="source ~/.pythonVenv/CryptoEnv/bin/activate"

alias volatilitysource="source ~/.pythonVenv/VolatilityEnv/bin/activate"

eval "$(starship init zsh)"




