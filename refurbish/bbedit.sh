bbedit_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: bbedit \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/Applications/BBEdit.app/bbedit_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: bbedit not installed. Try running ship order bbedit... \033[0m"
		exit
	fi
	version=`cat /Applications/BBEdit.app/bbedit_version`
	if [ "$version" == 13.5.3 ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -f /Applications/BBEdit.app
	fi
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1
	cd /usr/local/Garage
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 2
	gdrived 1EV69he-1bXese-H7UrrJA48O18CZg7Cb bbedit.zip
	sha="6e0702fd5ac91f252057cab680e7199ebd69d1b6780221840e7771ccd5537982a450917a40ec3f1dad8da6cde627e58ac90fd7600adc46e7065ec2d8cc1035bb  bbedit.zip"
	result=`sha -c bbedit.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f bbedit.zip
		rm -f cookie
		return
	fi
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	sleep 2
	unzip bbedit.zip
	rm -r -d __MACOSX
	rm bbedit.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
	echo -e "\033[92;1;4m🏡 Package received! bbedit succesfully refurbished. \033[0m"
}


bbedit_update
