sudo apt install xorg bspwm dmenu
mkdir -p .config/bspwm
mkdir -p .config/sxhkd

git clone https://github.com/baskerville/bspwm

cp bspwm/examples/bspwmrc ~/.config/bspwm/
cp bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc
chmod u+x ~/.config/sxhkd/sxhkdrc
