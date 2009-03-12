#!/bin/sh
#

OPTS=""
FILES=""
# parse command line parameters.
for arg in "$@" ; do
	case "$arg" in
	-lua-module|-debug|mode=*|arch=*) OPTS="$OPTS $arg" ;;
	*) FILES="$FILES $arg" ;;
	esac
done

for script in $FILES; do
	echo "Compiling script: $script"
	./compile.sh $OPTS $script
done

