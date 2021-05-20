Daemon to map MIDI input to keyboard strokes

Instructions:

1. `sudo apt install xdotool
1. `aseqdump -l`; replace `Scarlett` with name of your MIDI device
1. Replace mapping in case list with desired mapping
1. sudo cp midi2key_daemon.sh /etc/init.d/`
