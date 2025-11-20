function lla
    if type -q eza
        eza --icons -alh $argv
    else
        command ls --color=auto -Alh $argv
    end
end
