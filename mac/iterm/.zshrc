# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export PATH=opt/homebrew/bin:$PATH
export ZSH="/Users/jayy/.oh-my-zsh"
export DEFAULT_USER="jayy"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git macos)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias o="open ."

alias zshconfig="code ~/.zshrc"
alias install="brew install"
alias uninstall="brew uninstall"

alias ifcserver="ssh user@ip -i PathToSSHKey"

# Functions

function code() {
	open -a '/Volumes/Macintosh HD/Applications/Visual Studio Code.app' "$1"
}

# $@ are all arguments

# Go to the Root Directory of the Current git Project
function up() {
	export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
	if [ -z $git_dir ]
	then
	cd ..
	else
	cd $git_dir
	fi
}