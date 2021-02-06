un_ack () {
        echo -e "\033[34;1;4m🖥️  Processing return: ack \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/ack_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: ack not installed. Try running ship order ack... \033[0m"
                exit
        fi
        version=`cat ack_version`
        rm -rf -d "/usr/local/Garage/ack-$version"
        rm -f /usr/local/Garage/ack_version
        rm -f /usr/local/Garage/bin/ack

        echo -e "\033[92;1;4m🏭 Package arrived at store! ack successfully returned. \033[0m"
}

un_ack

