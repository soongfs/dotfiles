function lt
    if type -q eza
        eza --icons -aT $argv
    else
        echo "eza not found"
    end
end
