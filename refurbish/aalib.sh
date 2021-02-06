aalib_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: aalib \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/aalib_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: aalib not installed. Try running ship order aalib... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/aalib_version`
	if [ "$version" == "1.2" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -rf -d "aalib-$version"
		rm -rf aalib_version
		rm -rf /usr/local/Garage/bin/aafire
		rm -rf /usr/local/Garage/bin/aainfo
		rm -rf /usr/local/Garage/bin/aasavefont
		rm -rf /usr/local/Garage/bin/aatest
		rm -rf /usr/local/Garage/include/aalib.h
		rm -rf /usr/local/Garage/info/aalib.info
		rm -rf /usr/local/Garage/info/dir
		rm -rf /usr/local/Garage/lib/libaa.a
		rm -rf /usr/local/Garage/lib/libaa.la
 	
		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1fG7laWAB2k9GJTM4t-1lLCnIQ8rztQk- aalib.zip
		sha="cbf40c1f0e56b855379d0d8fcc13f3655548e2e368684618e8a18d0a740fa54a44780a1a54b458a035867e34c8710cc508c34763e0482e25e5c766b9d81aa8b1  aalib.zip"
		result=`sha -c aalib.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f aalib.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip aalib.zip
		rm -r -d __MACOSX
		rm aalib.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! aalib succesfully refurbished. \033[0m"
	fi
}

aalib_update
