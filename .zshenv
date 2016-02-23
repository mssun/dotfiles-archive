if [[ `uname` == "Linux" ]]; then
  export PATH="/home/mssun/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$(ruby -e 'print Gem.user_dir')/bin:$PATH"
  export ANDROID_NDK_HOME=/opt/android-ndk
  export PATH="$ANDROID_NDK_HOME:$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
  export PATH="/home/mssun/.config/panel:$PATH"
  # source /usr/share/nvm/init-nvm.sh
  export XDG_CONFIG_HOME="/home/mssun/.config"
else
  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$PATH"
  export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
#   source ~/.zgen/zgen.zsh
#  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
