# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Tab completion for zsh-autosuggestions
bindkey '^I' autosuggest-accept

# zsh-autosuggestions style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"

# zsh-autosuggestions completion strategy
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

. "$HOME/.asdf/asdf.sh"

# add dotnet environment variables
export DOTNET_ROOT=/usr/bin/dotnet
export PATH=$DOTNET_ROOT:$DOTNET_ROOT/tools:$PATH
