# dotfiles
My personal dot files.

### Steps to use the repo in a new computer

1. clone the repo in your home foler
2. install zsh by typing:
```BASH
sudo apt install zsh
```
3. make zsh your default shell
```BASH
chsh -s $(which zsh)
```
then exit your console and open it again. Check it works by runnign 
```BASH
echo $SHELL
```
4. install tmux by typing:
```BASH
sudo apt install tmux
```
5. install powerline fonts
```BASH
sudo apt install fonts-powerline
```
6. install autojump
```BASH
sudo apt install autojump
```
7. execute makelinks.sh
```BASH
./makelinks.sh
```
- you'll be prompted to set your default shell to zsh, answer yes.
- enter your password if required.
8. exit your terminal and open a new one.
9. install vim
```BASH
sudo apt install vim
```
10. open vim and run the vundle plugin install
```
:PluginInstall
```
11. manually install YCM following the [link](https://github.com/ycm-core/YouCompleteMe) a instructions
