akamai_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: akamai \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/akamai_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: akamai not installed. Try running ship order akamai... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/akamai_version`
	if [ "$version" == "1.1.5" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        		rm -rf -d "/usr/local/Garage/akamai-$version"
        		rm -f /usr/local/Garage/akamai_version
        		rm -f /usr/local/Garage/bin/akamai


		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1sG9gz4wuNat5_r8IhhLywfQGTQhnjr2e akamai.zip
		sha="55fa8c8264d0b09590b6ed3910645bb3040d8d3ee788fa7c5ceba7ee2ca5ad6b2befa4cde7474aae094b3c626358df26d457097d52d55db0990c9c8ab3ffc6fb  akamai.zip"
		result=`sha -c akamai.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f akamai.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip akamai.zip
		rm -r -d __MACOSX
		rm akamai.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! akamai succesfully refurbished. \033[0m"
	fi
}


akamai_update

