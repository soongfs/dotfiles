function ls
    if type -q eza
        eza --icons $argv
    else
        command ls --color=auto $argv
    end
end
