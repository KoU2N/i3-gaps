# Installing i3-gaps for ubuntu 18.04

RED='\033[0;31m'

## Dependencies
echo "${RED}==================install org and i3-graps dependencies=================="
sudo apt install -y xorg libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake 


mkdir tmp
cd /tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install

## Installing


cd /tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install

cd ~

echo "${RED}==================i3-graps done=================="

# Now i3-gaps should be installed.
echo "${RED}==================Install i3-graps related software =================="
sudo apt install -y feh compton i3blocks rofi zsh xbindkeys ranger neofetch


# i3 config file
git clone https://github.com/kou2n/dotfiles.git
# power-line-font
# git https://github.com/gabrielelana/awesome-terminal-fonts.git
#git clone https://github.com/powerline/fonts.git

# font 
echo "${RED}==================Install font=================="
sudo apt install -y fonts-wqy-microhei fonts-powerline fonts-font-awesome

# audio
echo "${RED}==================Install audio=================="
sudo apt install -y pulseaudio  pavucontrol
echo "${RED}==================Install input method=================="
### 安装fcitx google拼音 日文输入法
sudo apt install -y fcitx fcitx-googlepinyin im-config fcitx-frontend-gtk2 fcitx-frontend-gtk3 fcitx-mozc fcitx-config-gtk fcitx-ui-classic zenity xserver-xephyr
##
echo "${RED}==================Install terminal urxvt=================="
sudo apt install -y rxvt-unicode-256color
# 登录管理器
echo "${RED}==================Install input lightdm=================="
sudo apt install -y lightdm lightdm-gtk-greeter at-spi2-core
## 安装通知
sudo apt install -y xfce4-notifyd libnotify-bin dunst

# 安装chromium
echo "${RED}==================Install input chromium=================="
sudo apt install -y chromium-browser emacs25
# 安装spacemacs
echo "${RED}==================Install input spacemacs=================="
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
# 安装i3配置
echo "${RED}}==================copy i3 config to local}=================="
cp -a ~/dotfiles/* ~/.
echo "${RED}==================All done,Enjoy!!!=================="

# install oh-my-zsh
echo "${RED}==================Last,install oh-my-zsh,need type password!!!=================="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
