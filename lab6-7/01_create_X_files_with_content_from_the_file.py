#!/usr/bin/python

import sys

# Print description
print('Program stworzy $par2 plikow w lokalizacji $par1 o zawartosci pliku $par3.')

# Check parameters
if len(sys.argv) != 4:
    print('Zla liczba parametrow.')
    exit()

dirToCreateFiles = sys.argv[1]

numberOfFiles = sys.argv[2]
try:
    int(numberOfFiles)
except ValueError:
    print('Podano bledne parametry!')
    exit()

fileWithContent = sys.argv[3]

# Read file content to copy
try:
    with open(fileWithContent, 'r') as file:
        fileContent = file.read()
except IOError:
    print('Nie mozna otworzyc pliku z $par3')
    exit()

# Save n files
for i in range(int(numberOfFiles)):
    try:
        with open(dirToCreateFiles + "//file" + str(i) + ".txt", 'w+') as file:
            file.write(fileContent)
    except IOError:
        print('Nie mozna stworzyc pliku w folderze $par1')
        exit()

# Done
print('Done :)')
