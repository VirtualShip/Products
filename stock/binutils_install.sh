binutils_install () {
	sha="7a84975b8b5900c5b0ba128eb7885b21b928042b4c3e79a712d8e63fc27342045338b716c9e517f85bb0649690c08e77143e33e2e9beb36f4031c88d359aeff7  binutils.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: binutils \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1EyfHAlDyg9nuFwfVm1wCw1517L6rYAYA binutils.zip
	result=`sha -c binutils.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f binutils.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
	unzip binutils.zip
	rm -rf -d __MACOSX
	rm binutils.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

binutils_install
