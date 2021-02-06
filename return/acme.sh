un_acme () {
        echo -e "\033[34;1;4m🖥️  Processing return: acme \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/acme_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: acme not installed. Try running ship order acme... \033[0m"
                exit
        fi
        version=`cat acme_version`
        rm -rf -d "/usr/local/Garage/acme-$version"
        rm -f /usr/local/Garage/acme_version
        rm -f /usr/local/Garage/bin/acme

        echo -e "\033[92;1;4m🏭 Package arrived at store! acme successfully returned. \033[0m"
}

un_acme