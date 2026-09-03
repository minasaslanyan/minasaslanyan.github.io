#!/bin/bash
# Places your headshot at assets/img/portrait.jpg, cropped square and resized for web.
# Usage:  ./place-portrait.sh ~/Downloads/your-headshot.jpg
set -e
src="$1"
[ -z "$src" ] && { echo "usage: ./place-portrait.sh <path-to-photo>"; exit 1; }
[ -f "$src" ] || { echo "no such file: $src"; exit 1; }
cd "$(dirname "$0")"
mkdir -p assets/img
cp "$src" /tmp/_portrait_src
# square centre-crop to the shorter side, then resize to 600px, strip metadata
d=$(sips -g pixelWidth -g pixelHeight /tmp/_portrait_src | awk '/pixelWidth/{w=$2}/pixelHeight/{h=$2}END{print (w<h?w:h)}')
sips -c "$d" "$d" /tmp/_portrait_src --out /tmp/_portrait_sq >/dev/null
sips -Z 600 /tmp/_portrait_sq --out assets/img/portrait.jpg >/dev/null
rm -f /tmp/_portrait_src /tmp/_portrait_sq
echo "✓ assets/img/portrait.jpg  ($(du -h assets/img/portrait.jpg | cut -f1))"
