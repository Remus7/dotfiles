#!/bin/sh

# Launch ghostty with title set via escape sequence
printf "\033]0;nmtui\007"
exec nmtui
