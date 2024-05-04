# Doom Pilgrim

If you own the PDF version of [Doom Pilgrim](https://www.warclawgames.com/Doom-Pilgrim.html) then you can extract the card images and install them in CardWarden on your iPad or Mac.

## macOS

1. Install the tool `pdfimages` which is part of the `poppler` package in Homebrew: `brew install poppler`
2. run these commands

`pdfimages -j Doom\ Pilgrim\ -\ US\ Letter\ -\ Duplex.pdf doom_pilgrim_card`
`pdfimages -j Doom\ Pilgrim\ -\ US\ Letter\ -\ Rules\ and\ Character\ Sheet.pdf doom_pilgrim_aid`

3. run `make all`
4. Select the four folders `Cards`, `Decks`, `Meta`, `Thumbs` and select Compress. Rename it `Backup.zip`.
5. Copy that to your iPad following the CardWarden/iTunes method, or if you installed CardWarden on your Apple Silicon Mac, copy it to `$HOME/Library/Containers/DCAFC8DD-FCF3-45BA-BBD9-1B4D03BDA916/Data/Documents`.

Follow [CardWarden](http://cardwarden.com)'s instructions (select the Resources tab).
