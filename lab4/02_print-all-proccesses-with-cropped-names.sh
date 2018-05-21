#!/bin/sh

ps -aux | awk 'NR>1 {n=split($11, array, "/"); print "Uzytkownik " $1 " ma uruchomiony proces " array[n] " {" $3 ", " $4 "}"}'