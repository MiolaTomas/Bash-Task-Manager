
#!/bin/bash

while true; do
	echo "1- Add Task"
	echo "2- List Tasks"
	echo "3- Delete Tasks"
	echo "4- Log Out"
	
	read -p "Select an option: " option

	case $option in
		1)
		#Create the file if doesn't exists
		if [! -f tasks.txt];then
		touch tasks.txt
		echo "Tasks file created"
		fi
		#The script asks for the tasks
		read -p "Input the task: " task
		#Add task to the txt file
		echo "$task" >> tasks.txt
		echo "Task '$task' added."
		;;
		2)
		echo "Listing tasks..."
		if [ ! -f tasks.txt ] || [ ! -s tasks.txt ];then
			echo "There are no tasks"
		fi
		echo "Your tasks:"
		nl tasks.txt
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
