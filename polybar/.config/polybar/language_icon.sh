#!/bin/bash

language=$(ibus engine)

if [[ "$language" == "xkb:us::eng" ]]; then
  echo "EN"
elif [[ "$language" == "rime" || "$language" == "libpinyin" ]]; then
  echo "ZH"
  #echo "中"
elif [[ "$language" == "xkb:ro:ron" ]]; then
  echo "RO"
else 
  echo "?"
fi
