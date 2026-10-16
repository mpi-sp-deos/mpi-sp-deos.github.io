#!/bin/bash

# Go through each profile picture and dither it if not already done.
for file in /srv/jekyll/assets/img/people/*.*; do
    pngfile=$(basename "$file" | cut -d. -f1).png
    if [ ! -f /srv/jekyll/assets/img/people/dithered/$pngfile ]; then
        # This is a new picture, dither it.
        convert $file /tmp/$pngfile
        didder -i /tmp/$pngfile -o /srv/jekyll/assets/img/people/dithered/$pngfile \
	    --palette "29485D white" bayer 32x32
    fi
done
