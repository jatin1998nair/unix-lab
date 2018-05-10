rsync -avzh Documents back
notify-send -t 900 "notification" "backup of documents is done"" $(date +%r)"
#!/bin/bash
if (whiptail --title "anyother files needs updation?" --yesno "Choose between Yes and No." 10 60) 
then
dialog --title "backup" --msgbox "You chose Yes. Exit status was $?" 10 50
else
dialog --title "backup" --msgbox "You chose No. Exit status was $?." 10 50 
fi

dialog --title "backup" --msgbox "backed up date " $(date +%r) 10 50

dialog --title "backup" --msgbox "if any other files needed to be backed up? (y/n)" 10 50
read x
if [ $x = "y" ]
then 	
dialog --title "backup" --msgbox "enter the filename to be backed up?" 10 50
read u
rsync -avzh $u back
if [ $u ne -f ]
then
dialog --title "backup" --msgbox "the file does not exist"
else
dialog --title "backup notification" --msgbox "$u has been backed up in backup folder""$(date +%r)" 10 50
fi
else
exit
fi
