un_automake () {
        echo -e "\033[34;1;4m🖥️  Processing return: automake \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/automake_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: automake not installed. Try running ship order automake... \033[0m"
                exit
        fi
        version=`cat automake_version`
        rm -rf -d "/usr/local/Garage/automake-$version"
        rm -f /usr/local/Garage/automake_version
        rm -f /usr/local/Garage/bin/automake
        rm -f /usr/local/Garage/bin/aclocal-1.16
        rm -f /usr/local/Garage/bin/aclocal
        rm -f /usr/local/Garage/bin/automake-1.16
        rm -rf -d /usr/local/Garage/share/aclocal
        rm -rf -d /usr/local/Garage/share/aclocal-1.16
        rm -rf -d /usr/local/Garage/share/automake-1.16
        rm -rf -d /usr/local/Garage/share/doc/automake
        rm -rf -d /usr/local/Garage/share/man/man1/automake.1
        rm -rf -d /usr/local/Garage/share/man/man1/automake-1.16.1
        rm -rf -d /usr/local/Garage/share/man/man1/aclocal.1
        rm -rf -d /usr/local/Garage/share/man/man1/aclocal-1.16.1
        rm -f /usr/local/Garage/share/info/automake-history.info
        rm -f /usr/local/Garage/share/info/automake.info
        rm -f /usr/local/Garage/share/info/automake.info-1
        rm -f /usr/local/Garage/share/info/automake.info-2
        rm -f /usr/local/Garage/share/info/dir

        echo -e "\033[92;1;4m🏭 Package arrived at store! automake successfully returned. \033[0m"
}

un_automake