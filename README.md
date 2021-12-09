# Configuration NVIM

## MacOs

First you need to install nvim in your MacOs
- Install with the command:
```
brew install nvim
```
- I have zsh and I installed [Oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
you can write down the command in `./zshrc`, this is my configuration [zsh](https://github.com/Eduardo-Guerra-Alvarez/my_zshrc)
```
alias vim='nvim'
export EDITOR='nvim'
```
Now you can use vim as nvim

After that you need to create a file in `~./.config/nvim/init.vim`
and in this file you can configure your editor nvim

- If you want to install plugins you need to install [vim-plug](https://github.com/junegunn/vim-plug)

## Windows 10 or 11

First you need to isntall nvim in your Windows
- Install with the command:
```
scoop install neovim gcc
```
After that you need to create a file in `~./AppData/Local/nvim/init.vim`
and in this file you can configure your editor nvim

- If you want to install plugins you need to install [vim-plug](https://github.com/junegunn/vim-plug)
- With Windows you can run the following command:
```
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
```



