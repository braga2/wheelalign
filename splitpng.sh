mkdir pages
echo $1
for i in $(seq 0 17); do
  y=$(( i * 1498 ))
  h=$(( 1341 + 5 ))
  magick "$1" -crop 1041x$h+0+$y +repage pages/page_$i.png
done

magick $(printf "%s\n" *.png | sort -V) output.pdf
