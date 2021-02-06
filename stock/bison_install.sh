bison_install () {
	sha="1526c143a9576cdddd9fade303726ae82f38f94a65d62e0f36103d2ca0ce112907f889b517fb16e22deeceff5045e835022f4194c7e80d419fc50b195355bb1a  bison.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: bison \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1lkEmrrMXxicXv-hf8yAjRMAUH5AQ2TT2 bison.zip
	result=`sha -c bison.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f bison.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
	unzip bison.zip
	rm -rf -d __MACOSX
	rm bison.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

bison_install
