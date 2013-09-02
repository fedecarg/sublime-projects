#!/bin/bash

if [ "${1}" ] && [ -f "${1}.sublime-project" ]; then
    subl --project "${1}.sublime-project"
    exit 1
fi

COUNT=$(ls *.sublime-project 2>/dev/null | wc -l)
if [ $COUNT == "0" ]; then
    echo "Unable to find a valid .sublime-project file"
elif [ $COUNT == "1" ]; then
    FILENAME=$(ls *.sublime-project 2>/dev/null | head -n 1)
    subl --project $FILENAME
else
    echo "Enter the number of the project you want to open (or q to quit):"
    select FILENAME in *.sublime-project; do
        if [ -f "$FILENAME" ]; then 
            subl --project $FILENAME
            exit 0
        else
            exit 1
        fi
    done
fi
