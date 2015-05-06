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
