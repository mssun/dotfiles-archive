# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/doc/pkgfile/command-not-found.zsh
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx)

# User configuration

source $ZSH/oh-my-zsh.sh
if [[ `uname` == "Linux" ]]; then
  export PATH="/home/mssun/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$(ruby -e 'print Gem.user_dir')/bin:$PATH"
  export ANDROID_NDK_HOME=/opt/android-ndk
  export PATH="$ANDROID_NDK_HOME:$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
  export PATH="/home/mssun/.config/panel:$PATH"
  source /usr/share/zsh/scripts/zgen/zgen.zsh
else
  export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$PATH"
  source ~/.zgen/zgen.zsh
  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pc="proxychains"
alias vi="vim"
alias rm="rm -i"

export R_LIBS_USER=/home/mssun/.R

if [[ `uname` == "Linux" ]]; then
    export http_proxy=http://proxy.cse.cuhk.edu.hk:8000
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export socks_proxy=socks.cse.cuhk.edu.hk:1080
    export no_proxy="127.0.0.1,localhost,127.0.0.0/8,127.0.1.1,127.0.1.1*,local.home, 137.189.0.0/16, 192.168.0.0/16"
fi

export BROWSER=google-chrome-stable

setopt nohashdirs
if ! zgen saved; then
    echo "Creating a zgen save"
    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/autojump
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/z

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions src
    zgen load djui/alias-tips

    # autosuggestions should be loaded last
    zgen load tarruda/zsh-autosuggestions

    zgen save
fi
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /usr/share/nvm/init-nvm.sh
