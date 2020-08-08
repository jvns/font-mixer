set -eux
rm -f merged.tt*
rm -f test.ttf
fonttools merge juliabold.ttf juliabold2.ttf juliabold3.ttf # insert your actual fonts you want to mix here as font1 / font2 / font3
ttx -o merged.ttx merged.ttf
# we need to replace `#` with `X` because opentype doesn't seem to like `#` in glyph names
sed -i 's/#/X/g' merged.ttx
ttx -o merged.ttf merged.ttx
./combine.py
python3 fontname.py 'my mixed font' mixed.ttf
