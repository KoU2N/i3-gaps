# Installing i3-gaps

## Dependencies

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
mkdir xx
cd xx

# Now i3-gaps should be installed.
sudo apt install -y feh compton i3blocks rofi zsh xbindkeys ranger 

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# i3 config file
git clone https://github.com/kou2n/dotfiles.git
# power-line-font
# git https://github.com/gabrielelana/awesome-terminal-fonts.git
#git clone https://github.com/powerline/fonts.git

# font 
sudo apt install fonts-wqy-microhei fonts-powerline fonts-font-awesome

### 安装fcitx google拼音 日文输入法
sudo apt install -y fcitx fcitx-googlepinyin im-config fcitx-frontend-gtk2 fcitx-frontend-gtk3 fcitx-mozc fcitx-config-gtk fcitx-ui-classic zenity xserver-xephyr
# 登录管理器
sudo apt install -y lightdm
# 安装chromium
sudo apt install -y chromium-browser emacs25
# 安装spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
安装