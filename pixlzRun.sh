#!/bin/sh

echo ""
echo "Pixlz pm2 Startup. Please ensure you have installed pm2/NodeJS/npm with the installer script first! Running Pixlz with pm2 means that pm2 runs Pixlz in the background of your machine. If you are running the bot already, you can close the session you are currently using and start Pixlz with this method."

echo ""
echo ""
root=$(pwd)

cd "$root"
echo "Starting Pixlz in pm2 with auto-restart and no auto-update..."
sudo pm2 start "$root/pixlz.py" --interpreter=python3 --name=Pixlz
sudo pm2 startup
sudo pm2 save
echo ""
echo "If you did everything correctly, pm2 should have started up Pixlz! Please use sudo pm2 info Nadeko to check. You can view pm2 logs with sudo pm2 logs Pixlz"
echo "Please wait 10 seconds...."
sleep 10s
cd "$root"
rm "$root/pixlzRun.sh"
exit 0
