un_abcm2ps () {
	echo -e "\033[34;1;4m🖥️  Processing return: abcm2ps \033[0m"
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
	version=`cat abcm2ps_version`
	rm -rf -d "/usr/local/Garage/abcm2ps-$version"
	rm -rf /usr/local/Garage/bin/abcm2ps
	rm -rf /usr/local/Garage/share/abcm2ps
	rm -rf /usr/local/Garage/share/doc/abcm2ps
	rm -rf /usr/local/Garage/share/man/man1/abcm2ps.1
	rm -rf /usr/local/Garage/abcm2ps_version

	echo -e "\033[92;1;4m🏭 Package arrived at store! abcm2ps successfully returned. \033[0m"
}

un_abcm2ps
