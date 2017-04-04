#!/bin/bash
# Use this when you downloaded tgz files only from the server.
# Extract tgz, then change the extracted file name as original tgz name
DIR=`pwd`

for i in `find . -maxdepth 1 -name '*.tgz'`
  do
	NAME=$i
	STRIP=${NAME%.tgz}
	echo $STRIP

	tar -xf "$NAME" --xform="s|^|$STRIP/|S"
	
	#mv $STRIP/p*/* $STRIP/
done


# Y=`echo $player | cut -d ".tgz" -f 1`
# tar -xf *.tgz -C ./$Y

