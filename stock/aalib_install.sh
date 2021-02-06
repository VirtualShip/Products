aalib_install () {
	sha="cbf40c1f0e56b855379d0d8fcc13f3655548e2e368684618e8a18d0a740fa54a44780a1a54b458a035867e34c8710cc508c34763e0482e25e5c766b9d81aa8b1  aalib.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: aalib \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1fG7laWAB2k9GJTM4t-1lLCnIQ8rztQk- aalib.zip
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
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip aalib.zip
	rm -rf -d __MACOSX
	rm aalib.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

aalib_install

