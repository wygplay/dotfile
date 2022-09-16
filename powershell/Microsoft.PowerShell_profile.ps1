Import-Module posh-git
Import-Module Terminal-Icons

Import-Module PSFzf
#oh-my-posh init pwsh --config $env:POSH_THEMES_PATH/M365Princess.omp.json | Invoke-Expression
oh-my-posh init pwsh --config ~/my-terminal.json| Invoke-Expression
#Set-PoshPrompt -Theme agnoster
#Set-PoshPrompt -Theme jandedobbeleer
#Set-PoshPrompt -Theme aliens
#Set-PoshPrompt -Theme star
#Set-PoshPrompt -Theme wopian

$env:PYTHONIOENCODING = "UTF-8"

# command tools
$SCRIPTPATH = "C:\Program Files\Git\usr\share\vim"
$VIMPATH    = "C:\Program Files\Git\usr\bin\vim.exe"
 
Set-Alias vi   $VIMPATH
Set-Alias vim  $VIMPATH

# alias
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias g git

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History
