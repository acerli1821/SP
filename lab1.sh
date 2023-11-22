#!/bin/sh
echo "Litvinenko Anastasia Sergeevna, 710-1"
echo "Program - lab1"
echo "Brief description of the program: If the user name is entered correctly, the program outputs a unique identifier and user groups to which this user belongs"
echo "********************SCRIPT*******************"
while :
do

	while :
	 do
	echo "Vvedite imya polzivatelya:"
	read name
	if [ -z "$(grep $name /etc/passwd)" ]
	then
	echo "Oshibka!. Povtorite popytky u vvedite imya polzivatelya "
	else
	echo "UUID polzivatelya =" $(id -u "$name")
	echo "Groups polzivatelya" $(groups $name)
	break
	fi
	done

echo "The program has ended. Do you want to continue?  (y/n)"
        read yn
        if [ $yn = y ]
        then continue 
        else break
        fi
done