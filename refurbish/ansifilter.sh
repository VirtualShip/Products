ansifilter_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: ansifilter \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/ansifilter_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: ansifilter not installed. Try running ship order ansifilter... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/ansifilter_version`
	if [ "$version" == "1.1.5" ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
        rm -rf -d "/usr/local/Garage/ansifilter-$version"
        rm -f /usr/local/Garage/ansifilter_version
        rm -f /usr/local/Garage/bin/ansifilter
        rm -rf -d /usr/local/Garage/share/doc/ansifilter
        rm -rf -d /usr/local/Garage/share/man/man1/ansifilter.1

		echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
		sleep 1
		cd /usr/local/Garage
		echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
		sleep 2
		gdrived 1-J3MCKleqfy6xHPyX9Kt9AznXZcZ9fMA ansifilter.zip
		sha="ae7bd2f7ad93cf0b5725c98c4d9212ae88ccda96e1e03952e2af14ea4a095374d8ae4184bc0311eb67c9839f00680b243fa1977e3fe13a13f716676a0993f727  ansifilter.zip"
		result=`sha -c ansifilter.zip "$sha"`
		if [ "$result" == "Incorrect" ];
		then
			echo -e "\033[91;1;4mError: Security problem \033[0m"
			echo "The downloaded file has been compromised. It has been deleted."
			echo "Your system has not been harmed."
			echo "Try again later."
			rm -f ansifilter.zip
			rm -f cookie
			return
		fi
		echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
		sleep 2
		unzip ansifilter.zip
		rm -r -d __MACOSX
		rm ansifilter.zip
		rm cookie
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 2
		./test
		rm test
		echo -e "\033[92;1;4m🏡 Package received! ansifilter succesfully refurbished. \033[0m"
	fi
}


ansifilter_update

