if status is-interactive
    fish_vi_key_bindings
end
set fish_greeting

alias vim nvim
alias ls exa
alias cat cat
alias pomors "exec ~/.cargo/bin/pomors"
alias vconf "cd ~/.config/nvim"
alias v nvim
alias h helix
alias c clear
alias td "todo.sh"
alias g "exec ~/.local/bin/tmux-sessionizer"

set -x GOPATH $HOME/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin /usr/local/go/bin
set -x TERM kitty
set -x RUST_SRC_PATH $HOME/.cargo/bin/
set -x EDITOR nvim
