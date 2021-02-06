un_akamai () {
        echo -e "\033[34;1;4m🖥️  Processing return: akamai \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/akamai_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: akamai not installed. Try running ship order akamai... \033[0m"
                exit
        fi
        version=`cat akamai_version`
        rm -rf -d "/usr/local/Garage/akamai-$version"
        rm -f /usr/local/Garage/akamai_version
        rm -f /usr/local/Garage/bin/akamai
        echo -e "\033[92;1;4m🏭 Package arrived at store! akamai successfully returned. \033[0m"
}

un_akamai