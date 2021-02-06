bison_update () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: bison \033[0m"
	sleep 1

	cd /usr/local/Garage
	
	if [ -f "/usr/local/Garage/bison_version" ];
	then
		echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
		sleep 1
	else
		echo -e "\033[91;1;4mError: bison not installed. Try running ship order bison... \033[0m"
		exit
	fi
	version=`cat /usr/local/Garage/bison_version`
	if [ "$version" == 3.7.4 ];
	then
		echo -e "\033[92;1;4m🍱 You already have the latest version! \033[0m"
		exit
	else

	rm -f bison_version
	rm -rf -d bison-"$version"
	rm -f bin/bison
	rm -f bin/yacc
	rm -f lib/liby.a
	rm -f share/aclocal/bison-i18n.m4
	rm -f share/bison/bison-default.css
	rm -f share/bison/README.md
	rm -rf -d share/bison/m4sugar
	rm -rf -d share/bison/skeletons
	rm -rf -d share/bison/xslt
	rm -rf -d share/doc/bison
	rm -f share/info/bison.info
	rm -f share/man/man1/bison.1
	rm -f share/man/man1/yacc.1
	fi
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1
	cd /usr/local/Garage
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 2
	gdrived 1lkEmrrMXxicXv-hf8yAjRMAUH5AQ2TT2 bison.zip
	sha="1526c143a9576cdddd9fade303726ae82f38f94a65d62e0f36103d2ca0ce112907f889b517fb16e22deeceff5045e835022f4194c7e80d419fc50b195355bb1a  bison.zip"
	result=`sha -c bison.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f bison.zip
		rm -f cookie
		return
	fi
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	sleep 2
	unzip bison.zip
	rm -r -d __MACOSX
	rm bison.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2
	./test
	rm test
	echo -e "\033[92;1;4m🏡 Package received! bison succesfully refurbished. \033[0m"
}


bison_update
