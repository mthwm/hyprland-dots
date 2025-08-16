# #!/bin/bash

# # Theme Switcher Script
# # Path to your wallpapers directory
# WALLPAPER_DIR="$HOME/Pictures/wallpapers"
# # Or wherever you keep your wallpapers
# # WALLPAPER_DIR="$HOME/Downloads"

# # Get list of wallpapers (jpg, png, jpeg)
# WALLPAPERS=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | sort))

# # Check if wallpapers directory exists and has wallpapers
# if [ ${#WALLPAPERS[@]} -eq 0 ]; then
#     notify-send "Theme Switcher" "No wallpapers found in $WALLPAPER_DIR"
#     exit 1
# fi

# # Current wallpaper file to track state
# CURRENT_WALLPAPER_FILE="$HOME/.cache/current_wallpaper"

# # Function to get current wallpaper index
# get_current_index() {
#     if [ -f "$CURRENT_WALLPAPER_FILE" ]; then
#         cat "$CURRENT_WALLPAPER_FILE"
#     else
#         echo "0"
#     fi
# }
# # update_wlogout_css() {
# #     local wal_colors="$HOME/.cache/wal/colors.css"
# #     local wlogout_css="$HOME/.config/wlogout/styles.css"

# #     # Extract desired colors from wal-generated CSS
# #     local bg=$(grep '--color0:' "$wal_colors" | cut -d':' -f2 | tr -d ' ;')
# #     local fg=$(grep '--color7:' "$wal_colors" | cut -d':' -f2 | tr -d ' ;')
# #     local accent=$(grep '--color4:' "$wal_colors" | cut -d':' -f2 | tr -d ' ;')

# #     # Replace variables in styles.css
# #     sed -i "s/--background: .*/--background: $bg;/g" "$wlogout_css"
# #     sed -i "s/--foreground: .*/--foreground: $fg;/g" "$wlogout_css"
# #     sed -i "s/--accent: .*/--accent: $accent;/g" "$wlogout_css"
# # }

# # Function to get next wallpaper
# get_next_wallpaper() {
#     local current_index=$(get_current_index)
#     local next_index=$(( (current_index + 1) % ${#WALLPAPERS[@]} ))
#     echo "$next_index"
# }

# # Function to apply theme
# apply_theme() {
#     local wallpaper_path="$1"
#     local index="$2"

#     echo "Applying theme with wallpaper: $wallpaper_path"

#     # 1. Set wallpaper using swww with a transition
#     swww init &>/dev/null || true
#     swww img "$wallpaper_path" --transition-type grow --transition-fps 60 --transition-duration 0.8
#     matugen image $wallpaper_path

#     # 2. Generate pywal colors
#     # wal -i "$wallpaper_path" -n

#     # # envsubst < ~/.config/wofi/style.template.css > ~/.config/wofi/style.css
#     # ~/.config/hypr/wal2hyprland.sh
#     # #update_wlogout_css
#     # # 3. Update hyprlock wallpaper
#     # # Create hyprlock config with new wallpaper
#     # update_hyprlock_wallpaper "$wallpaper_path"

#     # # 4. Reload waybar
#     # killall waybar 2>/dev/null
#     # waybar &

#     # # 5. Save current wallpaper index
#     # echo "$index" > "$CURRENT_WALLPAPER_FILE"

#     # # 6. Send notification
#     # local wallpaper_name=$(basename "$wallpaper_path")
#     # notify-send "Theme Switcher" "Applied theme: $wallpaper_name"
#     # # 7. Update Browser
#     # pywalfox update
# }

# # Function to update hyprlock wallpaper
# update_hyprlock_wallpaper() {
#     local wallpaper_path="$1"
#     local hyprlock_config="$HOME/.config/hypr/hyprlock.conf"

#     # Create a backup if it doesn't exist
#     if [ ! -f "${hyprlock_config}.backup" ]; then
#         cp "$hyprlock_config" "${hyprlock_config}.backup"
#     fi

#     # Update the wallpaper path in hyprlock config
#     # This assumes your hyprlock config has a line like: path = /path/to/wallpaper
#     sed -i "s|path = .*|path = $wallpaper_path|g" "$hyprlock_config"
# }
# # Function to restore last wallpaper and theme
# restore_theme() {
#     if [ -f "$CURRENT_WALLPAPER_FILE" ]; then
#         local index=$(cat "$CURRENT_WALLPAPER_FILE")
#         local wallpaper_path="${WALLPAPERS[$index]}"
#         apply_theme "$wallpaper_path" "$index"
#     else
#         # If no record exists, just use the first one
#         apply_theme "${WALLPAPERS[0]}" "0"
#     fi
# }

# # Main logic
# case "${1:-next}" in
#     "next")
#         next_index=$(get_next_wallpaper)
#         next_wallpaper="${WALLPAPERS[$next_index]}"
#         apply_theme "$next_wallpaper" "$next_index"
#         ;;
#     "random")
#         random_index=$((RANDOM % ${#WALLPAPERS[@]}))
#         random_wallpaper="${WALLPAPERS[$random_index]}"
#         apply_theme "$random_wallpaper" "$random_index"
#         ;;
#     "restore")
#         restore_theme
#         ;;
#     "list")
#         # Use rofi to select a wallpaper with image previews
#         selected=$(printf "%s\n" "${WALLPAPERS[@]}" | rofi -dmenu -i -p "Choose Wallpaper" \
#             -theme-str 'window {width: 40%;}' \
#             -format 's' \
#             -markup-rows)

#         # If user selected something
#         if [ -n "$selected" ]; then
#             for i in "${!WALLPAPERS[@]}"; do
#                 if [[ "${WALLPAPERS[$i]}" == "$selected" ]]; then
#                     apply_theme "$selected" "$i"
#                     break
#                 fi
#             done
#         else
#             notify-send "Theme Switcher" "No wallpaper selected."
#         fi
#         ;;

# esac

#!/bin/bash

# Theme Switcher Script
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

WALLPAPERS=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | sort))

if [ ${#WALLPAPERS[@]} -eq 0 ]; then
  notify-send "Theme Switcher" "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

CURRENT_WALLPAPER_FILE="$HOME/.cache/current_wallpaper"

get_current_index() {
  if [ -f "$CURRENT_WALLPAPER_FILE" ]; then
    cat "$CURRENT_WALLPAPER_FILE"
  else
    echo "0"
  fi
}

get_next_wallpaper() {
  local current_index=$(get_current_index)
  local next_index=$(((current_index + 1) % ${#WALLPAPERS[@]}))
  echo "$next_index"
}

apply_theme() {
  local wallpaper_path="$1"
  local index="$2"

  echo "Applying theme with wallpaper: $wallpaper_path"

  # Set wallpaper
  swww init &>/dev/null || true
  swww img "$wallpaper_path" --transition-type grow --transition-fps 60 --transition-duration 0.8
  # matugen image "$wallpaper_path"
  update_hyprlock_wallpaper "$wallpaper_path"

  # Save current index
  echo "$index" >"$CURRENT_WALLPAPER_FILE"

  # Optional: notify
  local wallpaper_name=$(basename "$wallpaper_path")
  notify-send "Theme Switcher" "Applied: $wallpaper_name"
}

update_hyprlock_wallpaper() {
  local wallpaper_path="$1"
  local hyprlock_config="$HOME/.config/hypr/hyprlock.conf"

  if [ ! -f "${hyprlock_config}.backup" ]; then
    cp "$hyprlock_config" "${hyprlock_config}.backup"
  fi

  sed -i "/background {/,/}/{s|path = .*|path = $wallpaper_path|}" "$hyprlock_config"
}

restore_theme() {
  if [ -f "$CURRENT_WALLPAPER_FILE" ]; then
    local index=$(cat "$CURRENT_WALLPAPER_FILE")
    local wallpaper_path="${WALLPAPERS[$index]}"
    apply_theme "$wallpaper_path" "$index"
  else
    apply_theme "${WALLPAPERS[0]}" "0"
  fi
}

case "${1:-next}" in
"next")
  next_index=$(get_next_wallpaper)
  next_wallpaper="${WALLPAPERS[$next_index]}"
  apply_theme "$next_wallpaper" "$next_index"
  ;;
"random")
  random_index=$((RANDOM % ${#WALLPAPERS[@]}))
  random_wallpaper="${WALLPAPERS[$random_index]}"
  apply_theme "$random_wallpaper" "$random_index"
  ;;
"restore")
  restore_theme
  ;;
"list")
  selected=$(printf "%s\n" "${WALLPAPERS[@]}" |
    wofi --dmenu \
      --prompt "Choose Wallpaper" \
      --insensitive)

  if [ -n "$selected" ]; then
    for i in "${!WALLPAPERS[@]}"; do
      if [[ "${WALLPAPERS[$i]}" == "$selected" ]]; then
        apply_theme "$selected" "$i"
        break
      fi
    done
  else
    notify-send "Theme Switcher" "No wallpaper selected."
  fi
  ;;
esac
