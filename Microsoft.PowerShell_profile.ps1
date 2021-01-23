function Run-As-Admin {
    Start-Process -FilePath "wt" -Verb RunAs
}

# bash-like which
function which{
    param (
        [System.String[]]$command
    )
    (Get-Command $command).Path
}

Set-Alias psAdmin Run-As-Admin
Set-Alias grep findstr
Set-Alias l ls

Set-PSReadLineOption -EditMode Emacs