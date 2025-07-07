#!/bin/bash

ENG="xkb:us::eng"   
RIME="rime"         

current=$(ibus engine)        

if [[ "$current" == "$RIME" ]]; then
    ibus engine "$ENG"
else
    ibus engine "$RIME"
fi
