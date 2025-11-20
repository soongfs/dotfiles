function llat
    if type -q eza
        eza --icons -alhT $argv
    else
        echo "eza not found"
    end
end
