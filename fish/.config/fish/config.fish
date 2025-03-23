if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a -- sude sudo -E
abbr -a -- nixr sudo nixos-rebuild --flake "$(readlink -f ~/.config/nixos)" switch

# sources the starship prompt
starship init fish | source

# adds the binaries from `cargo install` to path
set -U fish_user_paths /home/sasquatchdev/.asdf/installs/rust/<version>/bin $fish_user_paths
