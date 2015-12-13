#!/bin/sh
wget -nc -O ~/bg.ts http://c3voc.mazdermind.de/testfiles/bg.ts
while true; do cat ~/bg.ts || exit 1; done |\
	ffmpeg -re -i - \
	-map 0:v \
	-c:v rawvideo \
	-pix_fmt yuv420p \
	-f matroska \
	tcp://localhost:16000
