active_keyboard=$(hyprctl --instance "${HYPRLAND_INSTANCE}" devices -j \
  | jq -r '.keyboards | map(select(.main)) | .[0] | .name')
if [ -z ${active_keyboard} ]; then
  echo 'Keyboard not found, exiting'
  exit 2
fi
key=`hyprctl devices | grep -oP 'active keymap: \K\w+' | tail -1`
hyprctl notify 1 1000 "rgb(ff1ea3)" "Change keyboard: " $key

hyprctl --instance "${HYPRLAND_INSTANCE_SIGNATURE}" switchxkblayout ${active_keyboard} next
