# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export KEYID="0xF10F473013503C89"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git macos iterm2 history emoji dotenv zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias cp="cp -i"
alias df='df -h'
alias free='free -h'
alias ls='ls --color=auto'
alias vimconfig="vim ~/.vimrc"
alias vimsource="source ~/.vimrc"
alias tmuxconfig="vim ~/.tmux.conf"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
