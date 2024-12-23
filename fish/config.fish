if status is-interactive
    fish_vi_key_bindings
end
set fish_greeting

alias vim nvim
alias v nvim
alias ls exa
alias cat cat
alias c clear
alias g "exec ~/.local/bin/tmux-sessionizer"
alias ta "tmux a"

set -x GOPATH $HOME/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin /usr/local/go/bin
set -x PATH $PATH $HOME/.config/emacs/bin/
set -x PATH $PATH $HOME/.cargo/bin/
set -x PATH $PATH $HOME/.cargo/bin/
set -x PATH $PATH $HOME/.local/bin/
set -x DENO_INSTALL $HOME/.deno
set -x PATH $PATH $DENO_INSTALL/bin

set -x HELIX_RUNTIME $HOME/.config/helix/runtime

set -x TERM kitty
set -x EDITOR nvim

set -x LD_LIBRARY_PATH $HOME/.local/lib $LD_LIBRARY_PATH
set -x PKG_CONFIG_PATH $HOME/.local/lib/pkgconfig $PKG_CONFIG_PATH
