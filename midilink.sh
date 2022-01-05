#!/usr/bin/bash

sudo modprobe snd-virmidi snd_index=1
mt32emu-qt
fluidsynth -is -a pulseaudio -r 96000 -m alsa_seq /usr/share/sounds/sf2/OmegaGMGS2.sf2 &
python3 midilink.py > /dev/snd/midiC2D0 &
aconnect 24:0 128:0
aconnect 24:0 129:0
