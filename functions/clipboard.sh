# copy text / content to clipboard

copy() {
  if command -v pbcopy &>/dev/null; then
    pbcopy
  elif command -v wl-copy &>/dev/null; then
    wl-copy
  elif command -v xclip &>/dev/null; then
    xclip -selection clipboard
  else
    echo "No clipboard utility found" >&2
    return 1
  fi
}