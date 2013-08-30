#!/bin/bash

COUNT=$(ls *.sublime-project 2>/dev/null | wc -l)

if [ $COUNT == "0" ]; then
    subl .
elif [ $COUNT == "1" ]; then
    FILENAME=$(ls *.sublime-project 2>/dev/null | head -n 1)
    subl --project $FILENAME
else    
    echo "Enter the number of the project you want to open:"
    select FILENAME in *.sublime-project; do
        if [ -f "$FILENAME" ]; then 
            subl --project $FILENAME
            exit 0
        else
            exit 1
        fi
    done
fi
