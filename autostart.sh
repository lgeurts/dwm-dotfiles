# Setup Feh
feh --bg-fill ~/Pictures/Wallpapers/002.png

#Setup Picom
"$HOME"/.config/picom/build/src/./picom -b --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness-in-tag 200 --animation-stiffness-tag-change 200 --animation-dampening 10 &

#Exec slstatus
exec slstatus &

#Exec dunst
exec dunst &

#Helper for keyboard layout
setxkbmap -model pc105 -layout us -option grp:alt_shift_toggle
