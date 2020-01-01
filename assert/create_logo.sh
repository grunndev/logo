#!/bin/bash
convert De_stedenmaagd_van_Groningen.jpg -charcoal 2 1.jpg

echo 'text 0,0 "' > 1.txt
echo '**********************************************' >> 1.txt
echo '*               GRUNNDEV                     *' >> 1.txt
echo '**********************************************' >> 1.txt
echo '' >> 1.txt
jp2a --invert 1.jpg >> 1.txt
echo '"' >> 1.txt
convert -size 360x360 xc:black -font "FreeMono" -pointsize 12 -fill "#88ff88" -draw @1.txt 2.png


