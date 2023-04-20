# Bash_script
#!/usr/bin/bash

if [[ ! -d "$1" ]]; then
  echo "No such directory"
  exit 1
fi

for file in "$1"/*; do
  if [[ -f "$file" ]]; then
    extension=${file##*.}
    if [[ ! -d "$1/$extension" ]]; then
      mkdir "$1/$extension"
    fi
    mv "$file" "$1/$extension"
  fi
done
