#! /bin/sh

# 4. XZ compression
mv lets_go_deeper lets_go_deeper.xz
xz -d lets_go_deeper.xz
echo "xz decompression done"

# 3. BUNZIP2 compression
mv lets_go_deeper lets_go_deeper.bz2
bzip2 -d lets_go_deeper.bz2
echo "bz2 decompression done"

# 2. GUNZIP compression
mv lets_go_deeper lets_go_deeper.tar.gz
tar -xzvf lets_go_deeper.tar.gz
echo "gz decompression done"

# 1. ZIP compression
file="lets_go_deeper.zip"
name="lets_go_deeper"
i="1"
while [ $? -eq 0 ]; do 
	echo "$1"
	i=$[$i+1]

	mv $name $file
	unzip $file
done

echo "zip decompression done"
