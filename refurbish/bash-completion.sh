bash-completion_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: bash-completion \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/bash-completion_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: bash-completion not installed. Try running ship order bash-completion... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/bash-completion_version`
	if [ "$version" == 2.11 ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
	
        rm -rf -d "/usr/local/Garage/bash-completion-$version"
        rm -f /usr/local/Garage/bash-completion_version
        rm -rf -d /usr/local/Garage/share/bash-completion
        rm -rf -d /usr/local/Garage/share/cmake/bash-completion
        rm -f /usr/local/Garage/share/pkgconfig/bash-completion.pc
        rm -f /usr/local/Garage/etc/profile.d/bash_completion.sh
	
	fi

	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1
	cd /usr/local/Garage
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 2
	gdrived 1FuzHEXe8YTPqejrsT-YH37AMX6A-72qh bash-completion.zip
	sha="d6d167f0b9eee7038f700c8199fa67929b06f153ca74364ae0b809e1b166f30a92cc702c3e79c21d7c1e0272bcb145364f16ac09140fad6d30bf513f7b76050b  bash-completion.zip"
	result=`sha -c bash-completion.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f bash-completion.zip
		rm -f cookie
		return
	fi
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	sleep 2
	unzip bash-completion.zip
	rm -r -d __MACOSX
	rm bash-completion.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
	echo -e "\033[92;1;4m🏡 Package received! bash-completion succesfully refurbished. \033[0m"
}


bash-completion_update
