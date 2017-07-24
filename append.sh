#!/bin/bash

# ASSUMING NO .DOTS IN PATH
# Using POSIX variable parameter expansions because they are more efficient than using $(basename) combinations

DIRECTORY=$(pwd) # do not use PATH, you fool!
# echo $DIRECTORY

ARGUMENT=$1

for FILE in "$DIRECTORY"/*; do
	# echo $FILE
	
	NAME="${FILE%.*}"
	# echo $NAME
	
	EXTENSION="${FILE##*.}"
	# echo $EXTENSION
	
	echo "$NAME"_"$ARGUMENT"."$EXTENSION"	
	mv "$FILE" "$NAME"_"$ARGUMENT"."$EXTENSION"
done

