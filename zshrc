# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="rkj-repos"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
vagrant
vagrant-prompt
ubuntu
colorize
zsh-autosuggestions
zsh-syntax-highlighting
history-substring-search
zsh-completions
colored-man-pages
docker
docker-compose
kubectl
helm
fzf
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias vim='nvim'
alias vi='nvim'
alias live='export DEPLOYMENT=vagrant/deployment/live.yml'
alias vssh='vagrant ssh'
alias vup='vagrant up'
alias vdes='vagrant destroy'
alias vrel='vagrant reload'
alias vhal='vagrant halt'
alias vst='vagrant status'
alias wwp='cd ~/Downloads/projects'
alias ww='cd /sysops/infrastructure'
alias wwt='cd /sysops/temp/infrastructure'
alias gst="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gfet='git fetch'
alias greb='git rebase -i origin/master'
alias gp='git push'
alias gb='git branch'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gollf='git log --name-only --pretty=oneline --full-index'
alias cat='bat --paging never'
alias rcat='cat'
alias gf='git fetch'
alias aws1='cd ~/aws'
alias awsm='cd /cps/aws-accounts-master'
alias cps='cd /cps'
alias infra='cd /cps/infrastructure'
alias stag='cd /cps/infrastructure/staging-account'
alias prod='cd /cps/infrastructure/production-account'
alias tbone='cd /cps/tbone'
alias tbone2='cd /cps/tbone-2'
alias inv='vim /sysops/infrastructure/environment/production/inventory.yml'
alias copy="xclip -sel clip"
alias tv="terraform validate"
alias tf="terraform fmt"
alias wquit="sudo python ~/wqavim.py"
alias tquit="sudo python ~/terms.py"
alias docs="/cps/docs/content/docs"
alias dots="cd ~/dots-repo/dotfiles"
alias gs="git status"
alias gcpa="git cherry-pick --abort"
alias p0="git checkout origin/c3p0"
alias p2="git checkout origin/c3p2"
alias p4="git checkout origin/c3p4"
alias p6="git checkout origin/c3p6"
alias rc="git checkout origin/rc"
alias master="git checkout origin/master"


gfpo() {
  git push -f origin $(git status | head -1 | cut -d ' ' -f3)
}

ta() {
  terragrunt apply $@
}

ti() {
  terragrunt init $@
}

sai() {
sudo apt install $@
}

lc() {
colorls --gs -tA --dark $@
}

ghub() {
git config --local user.name "Ramesh Mhetre"
git config --local user.email "mhetreramesh@gmail.com"
}

gitcp() {
  git cherry-pick $@
}

terrainit() {
echo 'provider "aws" {\n  profile = var.aws_profile\n  region = var.aws_region\n}' > main.tf
echo 'aws_profile = ""\naws_region = "eu-central-1"' > terraform.tfvars
cat > variables.tf <<EOF
variable "aws_profile" {
  type        = string
  description = "AWS profile"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
  }
EOF
cat > terragrunt.hcl <<EOF
include {
  path = find_in_parent_folders()
}
terraform {
  before_hook "before_hook" {
    commands     = ["init"]
    execute      = ["bash", "../../global/init.sh"]
  }
  extra_arguments "init_args" {
    commands = [
      "init"
    ]

    arguments = [
     "-plugin-dir=../../global/.terraform/providers/",
    ]
  }
}
EOF
cat > terraform.tf <<EOF
terraform {
  backend "s3" {}
}
EOF
}
function wttr(){ curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-Ansbach}"}
alias my='mycli --login-path'
#source $(dirname $(gem which colorls))/tab_complete.sh


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform


export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=~/go/packages
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:~/aws/go

# setup export for node nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# To customize prompt, run `p10k configure` or edit ~/dots-repo/dotfiles/p10k.zsh.
[[ ! -f ~/dots-repo/dotfiles/p10k.zsh ]] || source ~/dots-repo/dotfiles/p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
