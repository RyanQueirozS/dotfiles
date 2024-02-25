if status is-interactive
    fish_vi_key_bindings
end
set fish_greeting

alias vim nvim
alias ls "exa"
alias cat "cat"
alias pomors "exec ~/.cargo/bin/pomors"
alias vconf "cd ~/.config/nvim"

set -x GOPATH $HOME/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin /usr/local/go/bin
set -x TERM kitty
set -x RUST_SRC_PATH $HOME/.cargo/bin/
