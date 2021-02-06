abcm2ps_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: abcm2ps \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/abcm2ps_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: abcm2ps not installed. Try running ship order abcm2ps... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/abcm2ps_version`
	if [ "$version" == "8.14.11" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
		rm -rf -d "abcm2ps-$version"
		rm -rf /usr/local/Garage/bin/abcm2ps
		rm -rf /usr/local/Garage/share/abcm2ps
		rm -rf /usr/local/Garage/share/doc/abcm2ps
		rm -rf /usr/local/Garage/share/man/man1/abcm2ps.1
		rm -rf /usr/local/Garage/abcm2ps_version

		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1qHEsUr5xBo6Mb3MWV_apA24PITgo1Nd8 abcm2ps.zip
		sha="b4a3952cb38869084012e3bfdb79bf454ba5f8f6081e64796ab8d72fdb05ec5a097e992ff4f3967566609847f0fb64492eda5288486644c4165e835044a437cc  abcm2ps.zip"
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
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip abcm2ps.zip
		rm -r -d __MACOSX
		rm abcm2ps.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! abcm2ps succesfully refurbished. \033[0m"
	fi
}


abcm2ps_update

