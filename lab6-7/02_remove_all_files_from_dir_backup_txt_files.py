#!/usr/bin/python

import sys, os, shutil

# Print description
print('Program usunie wszystkie pliki z $par1, zachowujac pliki .txt w $par2.')

# Check parameters
if len(sys.argv) != 3:
    print('Zla liczba parametrow.')
    exit()

dirToCleanUp = sys.argv[1]

dirToBackup = sys.argv[2]

try:
    for file in os.listdir(dirToCleanUp): # Check every file in $par1
        filePath = os.path.join(dirToCleanUp, file)
        if os.path.isfile(filePath): # If filePath is file
            if file.endswith('.txt'):
                shutil.copyfile(filePath, os.path.join(dirToBackup, file)) # If file ends with .txt back it up

            os.unlink(filePath) # Remove file
        elif os.path.isdir(filePath):
            shutil.rmtree(filePath) # Remove dirs
except Exception:# as e:
    #print(e)
    print('Wystapil blad, program nie moze kontynuowac!')
    exit()

# Done
print('Done :)')
