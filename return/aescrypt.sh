un_aescrypt () {
        echo -e "\033[34;1;4m🖥️  Processing return: aescrypt \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/aescrypt_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: aescrypt not installed. Try running ship order aescrypt... \033[0m"
                exit
        fi
        version=`cat aescrypt_version`
        rm -rf -d "/usr/local/Garage/aescrypt-$version"
        rm -f /usr/local/Garage/aescrypt_version
        rm -f /usr/local/Garage/bin/aescrypt
        rm -f /usr/local/Garage/bin/aesget
        rm -f /usr/local/Garage/bin/bin
        echo -e "\033[92;1;4m🏭 Package arrived at store! aescrypt successfully returned. \033[0m"
}

un_aescrypt

