function la
    if type -q eza
        eza --icons -a $argv
    else
        command ls --color=auto -a $argv
    end
end
