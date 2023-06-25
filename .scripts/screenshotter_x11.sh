#!/usr/bin/env bash

case $1 in
  fullscreen)
    maim | xclip -selection clipboard -t image/png
    dunstify "Screenshot (fullscreen) copied to the clipboard."
    ;;
  selection)
    COORDS=`slop`
    if [[ "$?" -eq 0 ]]; then
      maim -g $COORDS | xclip -selection clipboard -t image/png
      dunstify "Screenshot (selection) copied to the clipboard."
    fi
    ;;
esac