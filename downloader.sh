#!/bin/sh
echo ""
echo "Pixlz Downloader started."

if hash git 1>/dev/null 2>&1
then
    echo ""
    echo "Git Installed."
else
    echo ""    
    echo "Git is not installed. Please install Git."
    exit 1
fi

echo ""
echo "Downloading Pixlz, please wait."
git clone git@github.com:JonnyBoy2000/Pixlz_py.git
echo ""
echo "Pixlz downloaded."
cd "$root"

echo "Downloading Complete."

cd "$root"
rm "$root/downloader.sh"
exit 0
