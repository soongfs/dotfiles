function lt
    if type -q eza
        eza --icons -T $argv
    else
        echo "eza not found"
    end
end
