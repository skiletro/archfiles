#!/bin/sh

#img=$(mktemp /tmp/XXXXXXXXXX.png) # Create temporary file
#grimblast save screen $img # Take a screenshot of the entire monitor and save it to the file
#dunstify -t "1500" -i " " "Locking..."
#convert $img -blur 0x5 $img # Blur the image
#swaylock -i $img # Open the lockscreen
swaylock \
	--screenshots \
        --clock \
        --text-color cba6f7 \
        --text-ver-color cba6f7 \
        --text-clear-color cba6f7 \
        --text-wrong-color cba6f7 \
	--indicator \
	--indicator-radius 100 \
	--indicator-thickness 7 \
	--effect-blur 7x5 \
	--effect-vignette 0.5:0.5 \
	--ring-color 1e1e2e \
        --ring-ver-color 1e1e2e \
        --ring-clear-color cba6f7 \
        --ring-wrong-color f38ba8 \
        --bs-hl-color f38ba8 \
	--key-hl-color cba6f7 \
        --font "IosevkaEris Nerd Font" \
	--line-color 00000000 \
        --line-ver-color 00000000 \
        --line-clear-color 00000000 \
        --line-wrong-color 00000000 \
	--inside-color 00000088 \
        --inside-ver-color 00000088 \
        --inside-clear-color 00000088 \
        --inside-wrong-color 00000088 \
	--separator-color 00000000 \
	--fade-in 0 \
        --timestr "%I:%M%p" \
        --datestr "%b %d, %Y" \
        --ignore-empty-password
#rm $img # Delete the image from the temp folder (cleanup󰀂)
