#!/usr/bin/bash

author="$1"
entry="$2"
name="$3"

if [ -z "$entry" ] || [ -z "$author" ] || [ -z "$name" ]; then
  echo "USAGE: ent.sh author entry name" 1>&2
  exit 1
fi

echo "AUTHOR: $author"
echo "ENTRY: $entry"
echo "NAME: $name"

cp template.html "$entry/index.html"
sed -i "s#%%%AUTHOR%%%#$author#g" "$entry/index.html"
sed -i "s#%%%NAME%%%#$name#g" "$entry/index.html"
sed -i "s#%%%ENTRY%%%#$entry#g" "$entry/index.html"
