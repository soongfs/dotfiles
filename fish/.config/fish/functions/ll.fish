function ll
    if type -q eza
        eza --icons -lh --git $argv
    else
        command ls --color=auto -lh $argv
    end
end
