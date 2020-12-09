#! /bin/bash
#cars.sh
#Alan Lu

num=1
while [ "$num" -ne "3" ];
do
	echo "Enter 1 to add a car, 2 to view cars, and 3 to exit: "
	read num
		case "$num" in
			"1")
				echo "Enter the: Year of Car: "
				read year
				echo "Enter the: Make of Car"
				read make
				echo "Enter the: Model of Car"
				read model
				x=":"
				echo "$year:$make:$model" >> My_old_cars.txt
				;;
			"2")
				sort My_old_cars.txt
				;;
			"3")
				echo "Goodbye"
				> My_old_cars.txt
				;;
		esac
done
