function llt
    if type -q eza
        eza --icons -lhT $argv
    else
        echo "eza not found"
    end
end
