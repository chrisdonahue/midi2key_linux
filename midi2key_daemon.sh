#!/bin/bash
# NOTE: Modified from https://superuser.com/questions/1170136/translating-midi-input-into-computer-keystrokes-on-linux
aseqdump -p "Scarlett" | \
while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    case "$ev1 $ev2 $ch $data1 $data2" in
        "Control change 0 64 127" ) xdotool key alt+a ;;
        "Control change 1 64 0" ) xdotool key alt+a ;;
    esac
done
