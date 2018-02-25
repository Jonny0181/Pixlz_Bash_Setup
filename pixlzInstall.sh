#!/bin/sh

echo "Welcome to Pixlz."
root=$(pwd)
echo ""
choice=5
	echo "1. Download Pixlz."
	echo "2. Install pm2."
	echo "3. Run Pixlz with pm2. Please use 2 first."
	echo "4. Exit"
        echo "Please edit the config.py file before running."
	echo -n "Choose [1] to Download, [2] to Run, [3] for pm2 startup or [4] to Exit."
while [ $choice -eq 5 ]; do
read choice
if [ $choice -eq 1 ] ; then

	echo ""
	echo "Downloading Pixlz, please wait."
	wget -N https://raw.githubusercontent.com/JonnyBoy2000/Pixlz_Bash_Setup/master/downloader.sh && bash "$root/downloader.sh"
	echo ""
	bash "$root/linux.sh"
else
	if [ $choice -eq 2 ] ; then
		echo ""
		echo "Starting the setup for pm2 with Pixlz. This only has to be done once."
		wget -N https://raw.githubusercontent.com/JonnyBoy2000/Pixlz_Bash_Setup/master/pm2Setup.sh && bash "$root/pm2Setup.sh"
		echo ""
		echo "Welcome back..."
		sleep 2s
		bash "$root/linux.sh"	
		else
			if [ $choice -eq 3 ] ; then
				echo ""
				echo "Getting the pm2 startup options for Pixlz.."
				wget -N https://raw.githubusercontent.com/JonnyBoy2000/Pixlz_Bash_Setup/master/pixlzRun.sh && bash "$root/pixlzRun.sh"
				echo ""
				sleep 2s
				bash "$root/linux.sh"
				else
					if [ $choice -eq 4 ] ; then
						echo ""
						echo "Exiting..."
						cd "$root"
						exit 0
						else
							clear
								echo "1. Download Pixlz."
	                            echo "2. Install pm2."
	                            echo "3. Run Pixlz with pm2. Please use 2 first."
	                            echo "4. Exit"
                                echo -n "Choose [1] to Download, [2] to Run, [3] for pm2 startup or [4] to Exit."
							choice=5
						fi 
					fi
				fi
			fi
		fi
	fi
done

cd "$root"
exit 0
