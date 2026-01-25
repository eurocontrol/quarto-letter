# run this script in this directory to generate the convert the SVG flags
# to PNG; we need 600 pixels per inch, i.e. 600 / 2.54 = 236.
# this is ok because the flags will be scaled 10 7mm.

for f in $(ls *.svg)
do
   magick -density 600 ${f} -border 2 -bordercolor black -resize x236 ${f}.png
done
