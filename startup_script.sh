#!/bin/sh

echo "Running waffle compiler"
./npx waffle config.json

if [ $? -eq 0 ]; then
    echo "Waffle ran successfully"
else
    echo "Waffle ran with error. Is the config file correct?"
    exit 1
fi