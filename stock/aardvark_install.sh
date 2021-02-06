aardvark_install () {
	sha="ab355861199a2a04e4e4325afb7ff7008d090198940e10196dd99937be6dcd7b7fbd916a8ab3dcf0a4c5418739b82474f05ba58dc2ae1ba89d38218c2f02585d  aardvark.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: aardvark \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1M9e-LmCY46AiHuB0_ID-01i-8sequFRm aardvark.zip
	result=`sha -c aardvark.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f aardvark.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip aardvark.zip
	rm -rf -d __MACOSX
	rm aardvark.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

aardvark_install
