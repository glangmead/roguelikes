# roguelikes
Docker files for playing some popular roguelikes that don't natively support macOS.

Each directory has a Dockerfile, a `build.sh` script to generate the image, and a `run.sh` for invoking the game after the image is created.

## ADOM

AKA "Ancient Domains of Mystery". You can read more about ADOM, its Steam version, and Ultimate ADOM at http://adom.de. The version this Dockerfile is downloading is not far behind the latest version because the author is maintaining the CLI version alongside the Steam version.

## TOME2

AKA "Troubles of Middle-Earth", later renamed in version 3 to "Tales of Maj'Eyal". tome2 can also be played in a browser at https://angband.live. Its later sequels can be explored at https://te4.org.

## Issues

* adom is not really playable because it makes the terminal background color black, but then uses black for some of the text in the UI!

## Further reading

* I recommend the book "Exploring Roguelike Games" by Mark Harris
* I like the YouTuber [ROGUELove](https://www.youtube.com/channel/UC2NR7oFDCLjFqu8RcYPRSzw)
* I also am enjoying the game [Dungeon Crawl Stone Soup](https://crawl.develz.org) which can be played in a browser or natively on macOS.
* [This project](https://github.com/OwenGHB/angband-webclient) has taken a stab at an iOS wrapper around a Safari WebView that lets you send keyboard events to the web version of DCSS without a physical keyboard.
