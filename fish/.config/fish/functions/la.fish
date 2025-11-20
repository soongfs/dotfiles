function la
    if type -q eza
        eza --icons -a $argv
    else
        command ls --color=auto -A $argv
    end
end
