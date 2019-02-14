# Installing i3-gaps

## Dependencies

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake 


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
sudo apt install feh compton i3blocks rofi zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
# i3 config file
git clone https://github.com/da-edra/dotfiles.git
# power-line-font
# git https://github.com/gabrielelana/awesome-terminal-fonts.git
git clone https://github.com/powerline/fonts.git
