##################################
# Установка необходимых программ #
# ################################

sudo pacman -Syu
sudo pacman -S --needed base-devel btop zellij alacritty bat ctop dbeaver docker eza git neovim obsidian pass postgresql ripgrep syncthing telegram-desktop ttf-jetbrains-mono-nerd wget zsh yay

#############################
# Установка и настройка Yay #
#############################

mkdir -p ~/.tmp
git clone https://aur.archlinux.org/yay.git
cd ./yay
#makepkg -si
cd ~
rm -rf ~/.tmp/yay

#################
# Настройка ZSH #
#################

# Копируем файл конфигурации
ln -s $PWD/zsh/.zshrc ~/.zshrc

# Установка oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Установка плагина автодополнение
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Установка плагина подсветки синтаксиса
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Перезагружаем shell
chsh $USER -s /usr/bin/zsh
source ~/.zshrc


# Конфигурация alacritty
#ln -s $PWD/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
