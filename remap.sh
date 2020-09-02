#!/bin/bash
# https://developer.apple.com/library/archive/technotes/tn2450/_index.html
# https://www.usb.org/sites/default/files/hut1_2.pdf

SRC="\"HIDKeyboardModifierMappingSrc\""
DST="\"HIDKeyboardModifierMappingDst\""

F7="0x700000040"
F8="0x700000041"
F9="0x700000042"
F10="0x700000043"
F11="0x700000044"
F12="0x700000045"

PLAY="0xC000000B0"
NEXT_TRACK="0xC000000B3"
PREVIOUS_TRACK="0xC000000B4"
MUTE="0xC000000E2"
VOLUME_INCREMENT="0xC000000E9"
VOLUME_DECREMENT="0xC000000EA"

# Leopold FC660C remap
hidutil property --matching "{\"ProductID\":0x134, \"VendorID\":0x853}" --set "{\"UserKeyMapping\":[
{$SRC: $F7, $DST: $PREVIOUS_TRACK},
{$SRC: $F8, $DST: $PLAY},
{$SRC: $F9, $DST: $NEXT_TRACK},
{$SRC: $F10, $DST: $MUTE},
{$SRC: $F11, $DST: $VOLUME_DECREMENT},
{$SRC: $F12, $DST: $VOLUME_INCREMENT},
]}"
