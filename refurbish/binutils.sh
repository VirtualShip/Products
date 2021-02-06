binutils_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: binutils \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/binutils_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: binutils not installed. Try running ship order binutils... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/binutils_version`
	if [ "$version" == 2.35 ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else
	
	rm -f /usr/local/Garage/include/ansidecl.h
	rm -f /usr/local/Garage/include/bfd_stdint.h
	rm -f /usr/local/Garage/include/bfd.h
	rm -f /usr/local/Garage/include/bfdlink.h
	rm -f /usr/local/Garage/include/ctf-api.h
	rm -f /usr/local/Garage/include/ctf.h
	rm -f /usr/local/Garage/include/diagnostics.h
	rm -f /usr/local/Garage/include/dis-asm.h
	rm -f /usr/local/Garage/include/plugin-api.h
	rm -f /usr/local/Garage/include/symcat.h
	rm -rf -d binutils-"$version"
	rm -f /usr/local/Garage/lib/libbfd.a
	rm -f /usr/local/Garage/lib/libbfd.la
	rm -f /usr/local/Garage/lib/libctf-nobfd.a
	rm -f /usr/local/Garage/lib/libctf-nobfd.la
	rm -f /usr/local/Garage/lib/libctf.a
	rm -f /usr/local/Garage/lib/libctf.la
	rm -f /usr/local/Garage/lib/libopcodes.a
	rm -f /usr/local/Garage/lib/libopcodes.la
	rm -f /usr/local/Garage/bin/addr2line
	rm -f /usr/local/Garage/bin/ar
	rm -f /usr/local/Garage/share/info/bfd.info
	rm -f /usr/local/Garage/share/info/binutils.info
	rm -f /usr/local/Garage/bin/c++filt
	rm -f /usr/local/Garage/bin/elfedit
	rm -f /usr/local/Garage/bin/nm
	rm -f /usr/local/Garage/bin/objcopy
	rm -f /usr/local/Garage/bin/objdump
	rm -f /usr/local/Garage/bin/ranlib
	rm -f /usr/local/Garage/share/man/man1/addr2line.1
	rm -f /usr/local/Garage/share/man/man1/ar.1
	rm -f /usr/local/Garage/share/man/man1/c++filt.1
	rm -f /usr/local/Garage/share/man/man1/dlltool.1
	rm -f /usr/local/Garage/share/man/man1/elfedit.1
	rm -f /usr/local/Garage/share/man/man1/nm.1
	rm -f /usr/local/Garage/share/man/man1/objcopy.1
	rm -f /usr/local/Garage/share/man/man1/objdump.1
	rm -f /usr/local/Garage/share/man/man1/ranlib.1
	rm -f /usr/local/Garage/share/man/man1/readelf.1
	rm -f /usr/local/Garage/share/man/man1/size.1
	rm -f /usr/local/Garage/share/man/man1/strings.1
	rm -f /usr/local/Garage/share/man/man1/strip.1
	rm -f /usr/local/Garage/share/man/man1/windmc.1
	rm -f /usr/local/Garage/share/man/man1/windres.1
	rm -f /usr/local/Garage/bin/readelf
	rm -f /usr/local/Garage/bin/size
	rm -f /usr/local/Garage/bin/strings
	rm -f /usr/local/Garage/bin/strip
	fi
	
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1
	cd /usr/local/Garage
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 2
	gdrived 1EyfHAlDyg9nuFwfVm1wCw1517L6rYAYA binutils.zip
	sha="7a84975b8b5900c5b0ba128eb7885b21b928042b4c3e79a712d8e63fc27342045338b716c9e517f85bb0649690c08e77143e33e2e9beb36f4031c88d359aeff7  binutils.zip"
	result=`sha -c binutils.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f binutils.zip
		rm -f cookie
		return
	fi
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	sleep 2
	unzip binutils.zip
	rm -r -d __MACOSX
	rm binutils.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
	echo -e "\033[92;1;4m🏡 Package received! binutils succesfully refurbished. \033[0m"
}


binutils_update
