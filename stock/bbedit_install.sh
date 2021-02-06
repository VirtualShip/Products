bbedit_install () {
	sha="6e0702fd5ac91f252057cab680e7199ebd69d1b6780221840e7771ccd5537982a450917a40ec3f1dad8da6cde627e58ac90fd7600adc46e7065ec2d8cc1035bb  bbedit.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: bbedit \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1EV69he-1bXese-H7UrrJA48O18CZg7Cb bbedit.zip
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
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
	unzip bbedit.zip
	rm -rf -d __MACOSX
	rm bbedit.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

bbedit_install
