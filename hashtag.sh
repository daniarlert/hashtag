#!/bin/sh

TITLE=$(gum input --prompt "Post title: " --placeholder "post title")

echo "Pick your hashtags."
HASHTAGS=$(cat hashtags.txt | gum choose --cursor-prefix "[ ] " --selected-prefix "[✓] " --no-limit)

printf '%s\n\n\n' $TITLE

for h in $HASHTAGS; do
  printf '#%s ' ${h}
done
