function cd
    if type -q z
        z $argv
    else
        command cd $argv
    end
end
