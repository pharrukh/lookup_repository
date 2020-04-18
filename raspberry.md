# Raspberry Pi

## General

1. *arp -a* - prints the list of all devices on the local network
2. *sudo ssh pi@some.local.ip.xx*
3. *sudo apt-get update* - update Raspberry packages
4. *sudo apt-get install netatalk* - to enable connection through Finder
  1. *sudo nano /etc/netatalk/afp.conf* - update config
     ```
      ;
      ; Netatalk 3.x configuration file
      ;

      [Global]
         guest account = pi
      [Homes]
         basedir regex = /home

      [My AFP Volume]
         path = /home

      ; [My Time Machine Volume]
      ; path = /path/to/backup
      ; time machine = yes
     ```
   2. *sudo systemctl restart netatalk* - restart
5. *sudo open afp://some.local.ip.xx* - to run from Mac terminal to connect to directories through Finder

## Specific

1. *arecord a.wav -D sysdefault:CARD=1* - to record audio from microphone
