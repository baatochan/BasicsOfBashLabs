#!/bin/sh

ps -aux | awk 'NR>1 {cpu[$1] += $3; mem[$1] += $4} END {for (i in cpu) print "Uzytkownik " i " ma uzycie CPU: " cpu[i] ", pamieci: " mem[i]}'