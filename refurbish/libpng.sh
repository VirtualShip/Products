libpng_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: libpng \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/libpng_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: libpng not installed. Try running ship order libpng... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/libpng_version`
	if [ "$version" == 1.6.37 ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
	
	version=`cat libpng_version`
	rm -rf -d "libpng-$version"
	rm -rf libpng_version
	rm -rf /usr/local/Garage/bin/libpng-config
	rm -rf /usr/local/Garage/bin/libpng16-config
	rm -rf /usr/local/Garage/bin/png-fix-itxt
	rm -rf /usr/local/Garage/bin/pngfix
	rm -rf /usr/local/Garage/include/libpng16/png.h
	rm -rf /usr/local/Garage/include/libpng16/pngconf.h
	rm -rf /usr/local/Garage/include/libpng16/pnglibconf.h
	rm -rf /usr/local/Garage/include/png.h
	rm -rf /usr/local/Garage/include/pngconf.h
	rm -rf /usr/local/Garage/include/pnglibconf.h
	rm -rf /usr/local/Garage/lib/libpng.a
	rm -rf /usr/local/Garage/lib/libpng.dylib
	rm -rf /usr/local/Garage/lib/libpng.la
	rm -rf /usr/local/Garage/lib/libpng16.16.dylib
	rm -rf /usr/local/Garage/lib/libpng16.a
	rm -rf /usr/local/Garage/lib/libpng16.dylib
	rm -rf /usr/local/Garage/lib/libpng16.la
	rm -rf /usr/local/Garage/lib/pkgconfig/libpng.pc
	rm -rf /usr/local/Garage/lib/pkgconfig/libpng16.pc
	rm -rf /usr/local/Garage/share/man/man3/libpng.3
	rm -rf /usr/local/Garage/share/man/man3/libpngpf.3
	rm -rf /usr/local/Garage/share/man/man5/png.5
	
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1
	cd /usr/local/Garage
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 2
	gdrived 1r8bRNM4kgsUbEMS_GjUCvGdPlqnoYH74 libpng.zip
	sha="c82b934b280ec142bfaab5136b21fccd65e1e8c62fa2098dbf5fde9e9116b1b13b4fc2c39e1ed040d9874a0e33e6922bb2931cabdd93e66a112fe784cdf899b2  libpng.zip"
	result=`sha -c libpng.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f libpng.zip
		rm -f cookie
		return
	fi
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	sleep 2
	unzip libpng.zip
	rm -r -d __MACOSX
	rm libpng.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
	echo -e "\033[92;1;4m🏡 Package received! libpng succesfully refurbished. \033[0m"
}


libpng_update
