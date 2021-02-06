un_aalib () {
	echo -e "\033[34;1;4m🖥️  Processing return: aalib \033[0m"
	sleep 1

	cd /usr/local/Garage

	if [ -f "/usr/local/Garage/aalib_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: aalib not installed. Try running ship order aalib... \033[0m"
		exit
	fi
	version=`cat aalib_version`
	rm -rf -d "aalib-$version"
	rm -rf aalib_version
	rm -rf /usr/local/Garage/bin/aafire
	rm -rf /usr/local/Garage/bin/aainfo
	rm -rf /usr/local/Garage/bin/aasavefont
	rm -rf /usr/local/Garage/bin/aatest
	rm -rf /usr/local/Garage/include/aalib.h
	rm -rf /usr/local/Garage/info/aalib.info
	rm -rf /usr/local/Garage/info/dir
	rm -rf /usr/local/Garage/lib/libaa.a
	rm -rf /usr/local/Garage/lib/libaa.la

	echo -e "\033[92;1;4m🏭 Package arrived at store! aalib successfully returned. \033[0m"
}

un_aalib

