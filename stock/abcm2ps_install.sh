abcm2ps_install () {
	sha="b4a3952cb38869084012e3bfdb79bf454ba5f8f6081e64796ab8d72fdb05ec5a097e992ff4f3967566609847f0fb64492eda5288486644c4165e835044a437cc  abcm2ps.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: abcm2ps \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1qHEsUr5xBo6Mb3MWV_apA24PITgo1Nd8 abcm2ps.zip
	result=`sha -c abcm2ps.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f abcm2ps.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
	sleep 2
	unzip abcm2ps.zip
	rm -rf -d __MACOSX
	rm abcm2ps.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
}

abcm2ps_install
