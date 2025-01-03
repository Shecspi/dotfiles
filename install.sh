##################################
# Установка необходимых программ #
# ################################

sudo pacman -Syu
sudo pacman -S --needed \
  base-devel postgresql docker git neovim pass \
  btop zellij alacritty bat ctop eza zsh obsidian \
  pass ripgrep yay \
  noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-jetbrains-mono-nerd \
  gnome-tweaks \
  syncthing telegram-desktop dbeaver obsidian

#############################
# Установка и настройка Yay #
#############################

mkdir -p ~/.tmp
git clone https://aur.archlinux.org/yay.git
cd ./yay
makepkg -si
cd ~
rm -rf ~/.tmp/yay

yay -S ttf-jetbrains-mono-nerd pycharm-professional yandex-browser

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
ln -s $PWD/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
