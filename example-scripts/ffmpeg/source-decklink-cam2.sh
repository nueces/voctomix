#!/bin/sh
ffmpeg -y \
	-f decklink \
	-i 'DeckLink Mini Recorder (2)@10' \
	-c:v rawvideo -c:a pcm_s16le \
	-f matroska \
       -pix_fmt yuv420p \
	tcp://localhost:10001
