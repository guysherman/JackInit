#! /bin/bash
# Copyright (c) Guy Sherman 2015
# This file is released under a Creative Commons Attribution 4.0 International License
# see LICENSE.md for more info

# Sets up Jack, and makes Pulse Audio use it as its default SINK and SOURCE
# Haven't dealt with multiple sound cards... this may become less relevant if
# you have a proper recording interface.

jack_control start

sleep 5

pacmd set-default-sink "jack_out"
pacmd set-default-source "jack_in"

# I was getting weird volumes set on this output, you may need to do something
# similar but with a different sink. See "man pulse-cli-syntax"
pactl set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo 100%
