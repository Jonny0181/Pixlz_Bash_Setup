#!/bin/sh

echo ""
echo "Greetings! Welcome to Pixlz setup, downloading the latest installer!"
root=$(pwd)
wget -N https://raw.githubusercontent.com/JonnyBoy2000/Pixlz_Bash_Setup/master/pixlzInstall.sh

bash pixlzInstall.sh
cd "$root"
rm "$root/pixlzInstall.sh"
exit 0
