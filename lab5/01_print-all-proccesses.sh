#!/bin/sh

ps -aux | awk 'NR>1 {print "Uzytkownik " $1 " ma uruchomiony proces " $11 " {" $3 ", " $4 "}"}'