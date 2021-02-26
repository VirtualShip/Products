libpng_install () {
	sha="c82b934b280ec142bfaab5136b21fccd65e1e8c62fa2098dbf5fde9e9116b1b13b4fc2c39e1ed040d9874a0e33e6922bb2931cabdd93e66a112fe784cdf899b2  libpng.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: libpng \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1r8bRNM4kgsUbEMS_GjUCvGdPlqnoYH74 libpng.zip
	result=`sha -c libpng.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f libpng.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
	unzip libpng.zip
	rm -rf -d __MACOSX
	rm libpng.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

libpng_install
