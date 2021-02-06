aescrypt_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: aescrypt \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/aescrypt_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: aescrypt not installed. Try running ship order aescrypt... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/aescrypt_version`
	if [ "$version" == "0.7" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        		rm -rf -d "/usr/local/Garage/aescrypt-$version"
        		rm -f /usr/local/Garage/aescrypt_version
        		rm -f /usr/local/Garage/bin/aescrypt


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1_hqqngBWEySrvh0bBoG1DZOQ-GJ28G8S aescrypt.zip
		sha="d718eb96b389f578c66ba90d5f8b567de9ca2955969fe15fe28a8682ea5d609629f920b2d8137cd27280bf2133c62ea2c0578f2a6ee13eb727d0d4fd5e4e36f2  aescrypt.zip"
		result=`sha -c aescrypt.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f aescrypt.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip aescrypt.zip
		rm -r -d __MACOSX
		rm aescrypt.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! aescrypt succesfully refurbished. \033[0m"
	fi
}


aescrypt_update

