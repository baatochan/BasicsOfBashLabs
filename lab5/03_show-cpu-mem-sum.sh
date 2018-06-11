#!/bin/sh

ps -aux | awk 'NR>1 {cpu += $3; mem += $4} END {print "Uzycie CPU: " cpu ", Uzycie pamieci: " mem}'