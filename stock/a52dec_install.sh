a52dec_install () {
	sha="5c79570037c1a3691b2fabad52cb6486c7bb5999d2322f98a269093254021090050a01e6b3d4031f57a6b6ccb98ad254a6de7d16e49ec0b83c16197da20987d5  a52dec.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: a52dec \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 19z2UVcyqWFJIZ-GUESaaxrzrapg0MU9h a52dec.zip
	result=`sha -c a52dec.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f a52dec.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip a52dec.zip
	rm -rf -d __MACOSX
	rm a52dec.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

a52dec_install



