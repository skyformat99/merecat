#!/bin/sh -e

cd ../www

../src/merecat -n -p 8086 -l none -f ../merecat.conf &
echo $! >/tmp/merecat.test

gzip -c main.css   > main.css.gz
gzip -c index.html > index.html.gz

sleep 1
