function ll
    if type -q eza
        eza --icons -alh --git $argv
    else
        command ls --color=auto -alh $argv
    end
end
