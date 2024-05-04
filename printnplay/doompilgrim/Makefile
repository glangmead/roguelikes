Decks:
	mkdir Decks

Meta:
	mkdir Meta

Cards:
	mkdir Cards

Thumbs:
	mkdir Thumbs

Meta/1000.txt: Meta
	for i in `seq 1003 6 1177`; do echo "CardBack=$$(echo $$i-3 | bc)" > Meta/$$i.txt; done & \
	for i in `seq 1004 6 1178`; do echo "CardBack=$$(echo $$i-2 | bc)" > Meta/$$i.txt; done & \
	for i in `seq 1005 6 1179`; do echo "CardBack=$$(echo $$i-4 | bc)" > Meta/$$i.txt; done & \
	for i in `seq 1000 6 1177`; do echo "CardBack=$$(echo $$i+3 | bc)" > Meta/$$i.txt; done & \
	for i in `seq 1001 6 1178`; do echo "CardBack=$$(echo $$i+4 | bc)" > Meta/$$i.txt; done & \
	for i in `seq 1002 6 1179`; do echo "CardBack=$$(echo $$i+2 | bc)" > Meta/$$i.txt; done & wait;

Cards/1000.png: Cards
	for i in `seq -w 0 6 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 512x512 -extent 512x512 -rotate 90 Cards/1$$i.png; done & \
	for i in `seq -w 1 3 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 512x512 -extent 512x512 Cards/1$$i.png; done & \
	for i in `seq -w 3 6 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 512x512 -extent 512x512 -rotate 270 Cards/1$$i.png; done & \
	for i in `seq -w 2 3 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 512x512 -extent 512x512 Cards/1$$i.png; done & wait;

Thumbs/1000.png: Thumbs
	for i in `seq -w 0 6 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 256x256 -extent 256x256 -rotate 90 Thumbs/1$$i.png; done & \
	for i in `seq -w 1 3 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 256x256 -extent 256x256 Thumbs/1$$i.png; done & \
	for i in `seq -w 3 6 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 256x256 -extent 256x256 -rotate 270 Thumbs/1$$i.png; done & \
	for i in `seq -w 2 3 179`; do convert jpegs/doom_pilgrim_card-$$i.jpg -density 72 -background transparent -gravity center -resize 256x256 -extent 256x256 Thumbs/1$$i.png; done & wait;

Cards/1097.png: Cards
	convert jpegs/doom_pilgrim_card-097.ppm -background transparent -gravity center -resize 512x512 -extent 512x512 Cards/1097.png

Thumbs/1097.png: Thumbs
	convert jpegs/doom_pilgrim_card-097.ppm -background transparent -gravity center -resize 256x256 -extent 512x512 Thumbs/1097.png

Decks/0.txt: Decks
	echo "DoomPilgrim" > tmp.txt
	for i in `seq 1003 6 1177`; do echo $$i >> tmp.txt; echo "$$(echo $$i-3 | bc)" >> tmp.txt; done; \
	for i in `seq 1004 6 1178`; do echo $$i >> tmp.txt; echo "$$(echo $$i-2 | bc)" >> tmp.txt; done; \
	for i in `seq 1005 6 1179`; do echo $$i >> tmp.txt; echo "$$(echo $$i-4 | bc)" >> tmp.txt; done; \
	for i in `seq 1 60`; do echo 0 >> tmp.txt; done; \
	cat tmp.txt | tr '\n' ',' | sed 's/,$$//' > $@

all: Cards/1000.png Thumbs/1000.png Cards/1097.png Thumbs/1097.png Meta/1000.txt Decks/0.txt
	
clean:
	rm -f Cards/* Thumbs/* Meta/* Decks/*
