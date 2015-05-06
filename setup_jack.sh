#! /usr/bin/sh
# Sets up Jack, and makes Pulse Audio use it as its default SINK and SOURCE
# Haven't dealt with multiple sound cards... this may become less relevant if
# you have a proper recording interface.

jack_control start
pacmd set-default-sink "jack_out"
pacmd set-default-source "jack_in"
