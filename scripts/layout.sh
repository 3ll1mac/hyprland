active_keyboard=$(hyprctl --instance "${HYPRLAND_INSTANCE}" devices -j \
  | jq -r '.keyboards | map(select(.main)) | .[0] | .name')
if [ -z ${active_keyboard} ]; then
  echo 'Keyboard not found, exiting'
  exit 2
fi

hyprctl --instance "${HYPRLAND_INSTANCE_SIGNATURE}" switchxkblayout ${active_keyboard} next

key=`hyprctl devices | grep -oP 'active keymap: \K\w+' | tail -1`
notify-send -u low  $key
