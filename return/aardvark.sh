un_aardvark () {
	echo -e "\033[34;1;4m🖥️  Processing return: aardvark_shell_utils \033[0m"
	sleep 1

	cd /usr/local/Garage

	if [ -f "/usr/local/Garage/aardvark_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: aardvark_shell_utils not installed. Try running ship order aardvark_shell_utils... \033[0m"
		exit
	fi

	rm -rf -d "aardvark_shell_utils"
	rm -rf aardvark_version
	rm -rf /usr/local/Garage/bin/filebase
	rm -rf /usr/local/Garage/bin/fileext
	rm -rf /usr/local/Garage/bin/realpath
	rm -rf /usr/local/Garage/man/man1/filebase.1
	rm -rf /usr/local/Garage/man/man1/fileext.1
	rm -rf /usr/local/Garage/man/man1/realpath.1

	echo -e "\033[92;1;4m🏭 Package arrived at store! aardvark_shell_utils successfully returned. \033[0m"
}

un_aardvark

