un_ansifilter () {
        echo -e "\033[34;1;4m🖥️  Processing return: ansifilter \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/ansifilter_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: ansifilter not installed. Try running ship order ansifilter... \033[0m"
                exit
        fi
        version=`cat ansifilter_version`
        rm -rf -d "/usr/local/Garage/ansifilter-$version"
        rm -f /usr/local/Garage/ansifilter_version
        rm -f /usr/local/Garage/bin/ansifilter
        rm -rf -d /usr/local/Garage/share/doc/ansifilter
        rm -rf -d /usr/local/Garage/share/man/man1/ansifilter.1
        echo -e "\033[92;1;4m🏭 Package arrived at store! ansifilter successfully returned. \033[0m"
}

un_ansifilter