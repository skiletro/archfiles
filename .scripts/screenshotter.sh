#!/usr/bin/env bash

case $1 in
  fullscreen)
    grimblast copy
    dunstify "Screenshot (fullscreen) copied to the clipboard."
    ;;
  selection)
    grimblast copy area
    dunstify "Screenshot (selection) copied to the clipboard."
    ;;
esac
