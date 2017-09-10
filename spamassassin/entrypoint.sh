#!/bin/sh

sa-update
spamd -d

WATCH_PATH=/data/cur

inotifywait -m -e create $WATCH_PATH | while read i
do
  FILE_PATH=$WATCH_PATH/$(echo $i | cut -d ' ' -f 3)
  spamc -c < $FILE_PATH || mv $FILE_PATH $WATCH_PATH/../.Spam/cur
done
