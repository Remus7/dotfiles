#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
charging=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$charging" == "Charging" ]]; then
  echo "%{F#98BB6C}󰂄 $capacity%"
elif [[ "$capacity" -le 20 ]]; then
  echo "%{F#C34043}󰂎 $capacity%"
elif [[ "$capacity" -le 40 ]]; then
  echo "%{F#DCA561}󰁼 $capacity%"
elif [[ "$capacity" -le 60 ]]; then
  echo "%{F#DCA561}󰁾 $capacity%"
elif [[ "$capacity" -le 95 ]]; then
  echo "%{F#98BB6C}󰂀 $capacity%"
else
  echo "%{F#98BB6C}󰁹 $capacity%"
fi

