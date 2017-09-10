#!/bin/sh

sa-update
spamd -d

WATCH_PATH=/data/cur

inotifywait -m -e moved_to --format '%w%f' $WATCH_PATH | while read file
do
  spamc -c < $file || mv $file $WATCH_PATH/../.Spam/cur
done
