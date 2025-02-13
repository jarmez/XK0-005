#!/bin/bash
# chooser.bash

# 0) make sure chooser.bash script runs fine
# 1) make it so that q or Q will quit
# 2) add choice 4 to show date
# 3) change "while" line from [ ] to test
# 4) change option 2 to run "top" command


quitStart=0
quitEnd=1

while [ $quitStart -lt $quitEnd ]

do
	echo "Menu"
	echo "--------------"
	echo "1) Show yearly calendar"
	echo "2) Display the date"
	echo "3) See who is on the computer"
	echo "Q) Exit"
	echo -n "Enter Your Selection: "

	read CHOICE

	case $CHOICE in
	1 ) cal 2030 ;;
	2 ) date ;;
	3 ) who ;;
	Q ) quitStart=1 ;;
	* ) echo "Invalid selection!" ;;
	esac
done
exit


