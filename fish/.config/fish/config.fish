if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a -- sude sudo -E
abbr -a -- nixr sudo nixos-rebuild --flake "$(readlink -f ~/.config/nixos)" switch

# sources the starship prompt
starship init fish | source

# adds the binaries from `cargo install` to path
set -U fish_user_paths /home/sasquatchdev/.asdf/installs/rust/*/bin $fish_user_paths

# adds asdf shims to path with fallback
if set -q ASDF_DATA_DIR
    set asdf_dir $ASDF_DATA_DIR
else
    set asdf_dir $HOME/.asdf
end
set -gx PATH $asdf_dir/shims $PATH

# adds asdf completions
asdf completion fish | source

# evaluates the brew shellenv
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
