#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 post_name posts_folder"
  exit 1
fi

new_post="$(date -I)-$1.md"
touch $2/${new_post}
