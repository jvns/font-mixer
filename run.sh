set -eux
rm -f merged.tt*
rm -f test.ttf
fonttools merge font1.ttf font2.ttf font3.ttf # insert your actual fonts you want to mix here as font1 / font2 / font3
ttx -o merged.ttx merged.ttf
sed -i 's/#/X/g' merged.ttx
ttx -o merged.ttf merged.ttx
./combine.py
rm -f *.fea
python3 fontname.py 'my mixed font' mixed.ttf
