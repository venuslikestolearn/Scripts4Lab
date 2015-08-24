sed '/ ­ാ/d' ./gtTest > wr1
wc -l wr1
sed '/ ­ം/d' ./wr1 > wr2
wc -l wr2
sed '/ ി/d' ./wr2 > wr3
wc -l wr3
sed '/ ു/d' ./wr3 > wr4
wc -l wr4
sed '/ ം/d' ./wr4 > wr5
wc -l wr5
sed '/ ാ/d' ./wr5 > wr6
wc -l wr6
