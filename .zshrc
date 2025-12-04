# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=50000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# This tells zsh to source scripts from our config dir during init
# Right now we just use _git to add git completions
fpath=(~/.config/zsh $fpath)

# The following lines were added by compinstall
zstyle :compinstall filename '/home/silk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Initialize zoxide must happen after compinit
# Also overrides the default cd command for convenience
eval "$(zoxide init zsh --cmd cd)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# This y shell wrapper provides the ability to change the
# current working directory when exiting Yazi
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# Prompt

# Default prompt theming through zsh itself
# autoload -Uz promptinit
# promptinit
# prompt fade yellow

# Theming through oh-my-posh
# nice base themes: cert, robbyrussell, pure
eval "$(oh-my-posh init zsh --config '~/.config/oh-my-posh/colored.omp.toml')"


# ALIASES
alias autohack='nmcli device wifi connect autohackbot2600'
alias icat='kitten icat'
alias ls='ls --color=auto -la'
# Don't actually use this for now but nice to remember how to do it
alias todo='todo.sh'
alias battery='acpi -b'
# Aliasing new things using the old command
alias yay='paru'
alias grep='rg'
alias vim='nvim'
# Bare git repo for dotfile config management
alias dots='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# The NEWT_COLORS variable is used to theme apps like
# nmtui. This uses the 16 standard 'ansi colors' which are set
# very early on during initramfs creation.
# (TODO: is this right? I feel like I missed something)
export NEWT_COLORS="\
root=white,black:\
roottext=lightgrey,black:\
window=white,black:\
border=brightblack,black:\
shadow=brightblack,black:\
title=brightblue,black:\
button=brightblue,black:\
actbutton=brightblue,black:\
compactbutton=brightwhite,black:\
checkbox=brightgreen,black:\
actcheckbox=brightgreen,black:\
entry=white,black:\
disentry=gray,lightgray:\
label=black,lightgray:\
listbox=white,black:\
actlistbox=black,cyan:\
sellistbox=lightgray,black:\
actsellistbox=lightgray,black:\
textbox=black,lightgray:\
acttextbox=black,cyan:\
emptyscale=,gray:\
fullscale=,cyan:\
helpline=white,black:\
"
