#!/bin/bash
# Install VSCode extensions from extensions.txt

EXTENSIONS_FILE="$(dirname "$0")/extensions.txt"

if [ ! -f "$EXTENSIONS_FILE" ]; then
  echo "extensions.txt not found!"
  exit 1
fi

echo "Installing VSCode extensions..."
while IFS= read -r extension; do
  if [ -n "$extension" ] && [[ ! "$extension" =~ ^# ]]; then
    echo "Installing: $extension"
    code --install-extension "$extension"
  fi
done < "$EXTENSIONS_FILE"

echo "Done!"
