#!/usr/bin/bash

entry="$1"
author="$2"
name="$3"

if [ -z "$entry" ] || [ -z "$author" ] || [ -z "$name" ]; then
  echo "USAGE: ent.sh entry author name" 1>&2
  exit 1
fi

echo "ENTRY: $entry"
echo "AUTHOR: $author"
echo "NAME: $name"

cp template.html "$entry/index.html"
sed -i "s#%%%AUTHOR%%%#$author#g" "$entry/index.html"
sed -i "s#%%%NAME%%%#$name#g" "$entry/index.html"
sed -i "s#%%%ENTRY%%%#$entry#g" "$entry/index.html"
