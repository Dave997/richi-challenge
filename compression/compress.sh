#! /bin/sh

i="0"
file=$1
name=$2

zip --password karii lets_go_deeper.zip key

echo $file
echo $name

# 1. ZIP compression
while [ $i -lt 35 ]; do
	echo $i
	i=$[$i+1]

	mv $file $name
	zip $file $name
done

echo "ZIP compression done"
echo ""

# 2. GUNZIP compression
tar -czvf lets_go_deeper.tar.gz lets_go_deeper
mv lets_go_deeper.tar.gz lets_go_deeper
echo "gzip compression done"
echo ""

# 3. BUNZIP2 compression
bzip2 lets_go_deeper
mv lets_go_deeper.bz2 lets_go_deeper
echo "bz2 compression done"
echo ""

# 4. XZ compression
xz -z lets_go_deeper
mv lets_go_deeper.xz lets_go_deeper
echo "xz compression done"
echo ""

