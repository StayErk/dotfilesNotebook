#!/bin/sh

path="/home/andrea/Documenti/ExportedPDF/"

cd "$HOME/Documenti/ExportedPDF/"

if [ -n "$WAYLAND_DISPLAY" ]; then
  file=$(rg --files --follow | bemenu --fn 'Hack 11' -p "wiki:" -i -l 20)
else
  file=$(rg --files --follow | rofi -dmenu -i -p "read PDF")
fi

[[ -n "$file" ]] || exit

completePath="$path$file"

exec zathura $completePath
# exec echo "$path/$file"
