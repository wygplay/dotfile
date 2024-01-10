Import-Module posh-git
#Import-Module Terminal-Icons
#Import-Module PSFzf
#oh-my-posh init pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\star.omp.json | Invoke-Expression
oh-my-posh init pwsh --config ~/star-adjust.json| Invoke-Expression

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
set-PSReadLineOption -EditMode "Emacs"

# spacevim
function svim() {
	nvim -u C:\Users\lenovo\.SpaceVim\vimrc
}
