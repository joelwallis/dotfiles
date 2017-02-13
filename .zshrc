# Joel Wallis' .vimrc
# https://github.com/joelwallis/dotfiles

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nicoulaj"
UPDATE_ZSH_DAYS=1
COMPLETION_WAITING_DOTS="true"
plugins=(git git-flow nyan ruby rails tmux tmuxinator wd web-search)

export EDITOR='vim'
export ATOM_REPOS_HOME="$HOME/Projetos/Open-Source"

# Drupal and Drush aliases. https://github.com/nuvoleweb/drush_alias
alias dr='drush'
alias drur='drush upwd $(drush uinf 1 | grep -e "User name" | grep -oe "[a-zA-Z0-9]\+\s\+$" | grep -e "[a-zA-Z0-9]\+") --password="$(date +%Y%m%d)"'
alias drsp='cp sites/default/default.settings.php sites/default/settings.php'
alias drcc='drush cache-clear all'
alias drdb='drush updb && drush cc all'
alias drdu='drush sql-dump --ordered-dump --result-file=dump.sql'
alias dren='drush pm-enable'
alias drdis='drush pm-disable'
alias drun='drush pm-uninstall'
alias drf='drush features'
alias drfd='drush features-diff'
alias drfu='drush -y features-update'
alias drfr='drush -y features-revert'
alias drfra='drush -y features-revert-all'
alias drlu='drush l10n-update'
alias drlur='drush l10n-update-refresh'

# Vagrant shortcuts
alias vg='vagrant'
alias vgup='vagrant up'
alias vgst='vagrant status'
alias vgsh='vagrant ssh'

# Misc
alias :q="exit"
alias cask='brew cask'
alias dk='docker'
alias dkc='docker-compose'
alias dkm='docker-machine'
alias dog='cat'
# Temporary hard-coded alias until PR gets merged
# https://github.com/robbyrussell/oh-my-zsh/pull/5591
alias gsh='git show'
alias h='head'
alias lg='git lg'
alias mongod.mac='mongod --config /usr/local/etc/mongod.conf'
alias mux='tmuxinator'
alias px="ps aux"
alias t='tail'
alias v="vim"

# PATH customizations
PATH="/usr/local/sbin:/usr/local/bin:$PATH" # Homebrew
PATH="usr/local/opt/openssl/bin:$PATH" # Homebrew powered OpenSSL
PATH="$$HOME/.rvm/bin:PATH" # RVM
PATH="$PATH:$HOME/.composer/vendor/bin" # Composer
ANDROID_HOME="/usr/local/opt/android-sdk" # Android SQK
PATH="$PATH:$ANDROID_HOME/platform-tools" # Android SQK
PATH="$PATH:$ANDROID_HOME/platform-tools" # Android SQK
PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin" # Postgres.app
PATH="$PATH:/usr/local/opt/go/libexec/bin" # Go
# For environment specific settings, please create a *.sh file at ./zsh-env
#for shell_file ./zsh-env/*.sh; do
#	source $shell_file
#done

# Homebrew GitHub API token
if [ -x ~/.ssh/set-homebrew-github-api-token.sh ]; then
  source  ~/.ssh/set-homebrew-github-api-token.sh
fi

source $ZSH/oh-my-zsh.sh

