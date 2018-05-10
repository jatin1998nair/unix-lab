rsync -avzh Documents backup
notify-send -t 900 "notification" "backup of documents is done"" $(date +%r)"
#!/bin/bash
if (whiptail --title "anyother files needs updation?" --yesno "Choose between Yes and No." 10 60) then
	echo "You chose Yes. Exit status was $?"
    else
	        echo "You chose No. Exit status was $?."
	fi

echo "backed up date " $(date +%r)

echo "if any other files needed to be backed up? (y/n)"
read x
if [ $x = "y" ]
then 	
	echo "enter the filename to be backed up?"
	read u
	rsync -avzh $u backup
notify-send -t 900 "backup notification" "$u has been backed up in backup folder""$(date +%r)"
else
	exit
fi	


