rsync -avzh Downloads backup
notify-send -t 900 "notification" "backup of documents is done"" $(date +%r)"
echo "backed up date " $(date +%r)
echo "if any other files needed to be backed up? (y/n)"
read n
if [ $n == "y" ]
then 	
	echo "enter the filename to be backed up?"
	read u
	rsync -avzh $u backup
notify-send -t 900 "backup notification" "$u has been backed up in backup folder""$(date +%r)"
else
    exit	
fi



