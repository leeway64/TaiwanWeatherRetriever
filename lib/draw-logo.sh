#!/usr/bin/env bash

# shuf can print out the contents of the file in a random order
shuf lib/Taiwan.txt

echo -n "Celebrate "
# dc evaluates math expressions in postfix form
dc --expression="1996 n"  # The n option prints the result without a new line
echo "!"

# sed (stream editor) can edit strings
echo "Remember to vote in 1996!" | sed 's/1996/2024/'

# wc (word count) can count the number of lines or words in a file, for example
# awk can be used for text filter/processing
number_of_lines="$(wc -l lib/Taiwan.txt  | awk '{print $1}')"
if [ ${number_of_lines} -eq 1 ]; then
    node lib/draw-logo.js
fi
