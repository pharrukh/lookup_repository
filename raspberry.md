# Raspberry Pi

## General

1. *ifconfig* - prints the list of all devices on the local network
2. *sudo ssh pi@some.local.ip.xx*
3. *sudo apt-get update* - update Raspberry packages
4. *sudo apt-get install netatalk* - to enable connection through Finder
5. *sudo open afp://some.local.ip.xx* - to run from Mac terminal to connect to directories through Finder

## Specific

1. *arecord a.wav -D sysdefault:CARD=1* - to record audio from microphone