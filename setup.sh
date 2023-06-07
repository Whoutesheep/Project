#!/usr/bin/env bash
echo "Installation of ActivityWatch"
#git clone --recursive https://github.com/ActivityWatch/activitywatch.git
echo "Checking dependencies"
if type python3 -V >/dev/null 2>&1; then
    echo "Python3 not installed" 1>&2
else 
    echo "- Python3 installed:"
    python3 -V
fi
