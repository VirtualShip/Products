un_bison () {
	echo -e "\033[34;1;4m🖥️  Processing return: bison \033[0m"
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
        version=`cat bison_version`
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

	echo -e "\033[92;1;4m🏭 Package arrived at store! bison successfully returned. \033[0m"
}

un_bison
