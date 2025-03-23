if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a -- sude sudo -E
abbr -a -- nixr sudo nixos-rebuild --flake "$(readlink -f ~/.config/nixos)" switch

starship init fish | source
