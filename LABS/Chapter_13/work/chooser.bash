#!/bin/bash
# chooser.bash - *** Solution Edition ***

# 0) make sure chooser.bash script runs fine
# 1) make it so that q or Q will quit
# 2) add choice 4 to show date
# 3) change "while" line from [ ] to test
# 4) change option 2 to run "top" command


quitStart=0
quitEnd=1

while test $quitStart -lt $quitEnd

do
	echo "Menu"
	echo "--------------"
	echo "1) Show yearly calendar"
	echo "2) Display the performance monitor"
	echo "3) See who is on the computer"
	echo "4) See date and time on the computer"
	echo "Q) Exit"
	echo -n "Enter Your Selection: "

	read CHOICE

	case $CHOICE in
	1 ) cal 2030 ;;
	2 ) top ;;
	3 ) who ;;
	4 ) date ;;
	[Qq] ) quitStart=1 ;;
	* ) echo "Invalid selection!" ;;
	esac
	echo "  "
	echo "  "
done
exit


