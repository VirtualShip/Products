ack_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: ack \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/ack_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: ack not installed. Try running ship order ack... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/ack_version`
	if [ "$version" == "3.4.0" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        		rm -rf -d "/usr/local/Garage/ack-$version"
        		rm -f /usr/local/Garage/ack_version
        		rm -f /usr/local/Garage/bin/ack


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1ll3j5MNLRnm8j2n3GLGSx_Hhwy_THnPW ack.zip
		sha="c1598f3b1999b1acf6e4039f59f75b06d691716913f39f9e4b51c7c56139cafc786f0d4c58450f4571de7f19bedeafcf0de605631a336476d795e849f3cf8708  ack.zip"
		result=`sha -c ack.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f ack.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip ack.zip
		rm -r -d __MACOSX
		rm ack.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! ack succesfully refurbished. \033[0m"
	fi
}


ack_update

