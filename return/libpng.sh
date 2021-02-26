un_libpng () {
	echo -e "\033[34;1;4m🖥️  Processing return: libpng \033[0m"
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

	echo -e "\033[92;1;4m🏭 Package arrived at store! libpng successfully returned. \033[0m"
}

un_libpng
