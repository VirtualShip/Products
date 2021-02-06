acme_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: acme \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/acme_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: acme not installed. Try running ship order acme... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/acme_version`
	if [ "$version" == "0.97" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        		rm -rf -d "/usr/local/Garage/acme-$version"
        		rm -f /usr/local/Garage/acme_version
        		rm -f /usr/local/Garage/bin/acme


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1RDvcYdinDkXKfH1dEw7MVGTzoqJx82jg acme.zip
		sha="531640543399edd177029c1ca3383634a05ad9f3f3493076c6e25948d5095411594b2e74f3e9b40cd9be71512cb4f537425d052ed91914508aeae5dbb56ea42b  acme.zip"
		result=`sha -c acme.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f acme.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip acme.zip
		rm -r -d __MACOSX
		rm acme.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! acme succesfully refurbished. \033[0m"
	fi
}


acme_update

