Daemon to map MIDI input to keyboard strokes

Currently hardcoded to map piano sustain pedal to Zoom push-to-talk (Alt+A)

Instructions:

1. `sudo apt install xdotool`
1. `aseqdump -l`; replace `Scarlett` with name of your MIDI device
1. Replace mapping in case list with desired mapping
1. `sudo cp midi2key.sh /usr/local/bin/midi2key`
1. Run with `midi2key &`

I have so far been unsuccessful getting this to run on startup on Ubuntu 20.04, as it needs to be run in userland after display/MIDI device have been initialized. Things I've tried below that haven't worked:

- `crontab -e` (note do not run this as `sudo` as script needs to be run as user); add `@reboot /usr/local/bin/midi2key &` to end of file
