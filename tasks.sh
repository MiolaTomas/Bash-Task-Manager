#!/bin/bash

while true; do
	echo "1- Add Task"
	echo "2- List Tasks"
	echo "3- Delete Tasks"
	echo "4- Log Out"
	
	read -p "Select an option: " option

	case $option in
		1)
		#The script asks for the tasks
		read -p "Input the task: " task
		#Add task to the txt file
		echo "$task" >> tasks.txt
		echo "Task '$task' added."
		;;
		2)
		echo "Listing tasks..."
		;;
		3)
		echo "Deleting tasks..."
		;;
		4)
		echo "Bye!"
		break
		;;

	esac

done
