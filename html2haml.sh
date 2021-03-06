#!/bin/bash
if [ -z "$1" ]; then
wdir="."
else
wdir=$1
fi

for f in $( ls $wdir/*.erb ); do
out="${f%.erb}.haml"
if [ -e $out ]; then
echo "skipping $out; already exists"
else
echo "hamlifying $f"
html2haml $f > $out
fi
#rm $f
done