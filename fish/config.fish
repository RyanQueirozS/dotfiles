if status is-interactive
    fish_vi_key_bindings
end
set fish_greeting

alias g "exec ~/.local/bin/tmux-sessionizer"
alias ta "tmux a"
alias e hx
alias lz lazygit
alias gs "git status"
alias gc "git commit"

# Clean PATH setup - only add if not already present
set -l path_dirs \
    $HOME/go/bin \
    /usr/local/go/bin \
    $HOME/.config/emacs/bin \
    $HOME/.cargo/bin \
    $HOME/.local/bin \
    $HOME/.deno/bin

for dir in $path_dirs
    contains -- $dir $PATH; or set -a PATH $dir
end

set -x GOPATH $HOME/go
set -x GOROOT /usr/local/go
set -x HELIX_RUNTIME $HOME/.config/helix/runtime
set -x EDITOR hx

set -x LD_LIBRARY_PATH $HOME/.local/lib $LD_LIBRARY_PATH
set -x PKG_CONFIG_PATH $HOME/.local/lib/pkgconfig $PKG_CONFIG_PATH

function emsdk_load
    set -q EMSDK_LOADED; and return 0

    set -l emsdk_path "/home/ryan/.local/emsdk"
    set -l env_file "$emsdk_path/emsdk_env.fish"

    if test -f "$env_file"
        set -x EMSDK_QUIET 1
        contains -- "$emsdk_path" $PATH; or set -a PATH "$emsdk_path"
        contains -- "$emsdk_path/upstream/emscripten" $PATH; or set -a PATH "$emsdk_path/upstream/emscripten"

        source "$env_file"
        set -gx EMSDK_LOADED 1
        echo "✓ Emscripten SDK environment sourced"
    else
        echo "❌ Error: emsdk not found at $env_file"
        return 1
    end
end

set -Ux PKG_CONFIG_PATH $HOME/.local/lib/glad/lib/pkgconfig $PKG_CONFIG_PATH
