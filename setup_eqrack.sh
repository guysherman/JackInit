#! /usr/bin/sh
# Copyright (c) Guy Sherman 2015
# This file is released under a Creative Commons Attribution 4.0 International License
# see LICENSE.md for more info

# Sets up Jack, and makes Pulse Audio use it as its default SINK and SOURCE
# Haven't dealt with multiple sound cards... this may become less relevant if
# you have a proper recording interface.

# NB: You should probably run this script with a working directory where the headphone_eq.xml
# file exists!

# Start Jack with our handy script that wrangles Pulse Audio.
source ./setup_jack.sh

# Fire up JackRack. I put an & on it so that your terminal session doesn't
# get blocked if you're running it manually
jack-rack headphone_eq.xml &

# We have to sleep for a bit, because jack-rack needs a little time
# to add its inputs and outputs to jack. 5 seconds is excessive, but
# better safe than sorry!
sleep 5

# Connect up the new arrangement
jack_connect PulseAudio\ JACK\ Sink:front-left jack_rack:in_1
jack_connect PulseAudio\ JACK\ Sink:front-right jack_rack:in_2

jack_connect jack_rack:out_1 system:playback_1
jack_connect jack_rack:out_2 system:playback_2

# Disconnect the old arrangement
jack_disconnect PulseAudio\ JACK\ Sink:front-left system:playback_1
jack_disconnect PulseAudio\ JACK\ Sink:front-right system:playback_2
