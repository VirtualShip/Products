un_bash-completion () {
	echo -e "\033[34;1;4m🖥️  Processing return: bash-completion \033[0m"
        sleep 1

        cd /usr/local/Garage

        if [ -f "/usr/local/Garage/bash-completion_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: bash-completion not installed. Try running ship order bash-completion... \033[0m"
                exit
        fi
        version=`cat bash-completion_version`
        rm -rf -d "/usr/local/Garage/bash-completion-$version"
        rm -f /usr/local/Garage/bash-completion_version
        rm -rf -d /usr/local/Garage/share/bash-completion
        rm -rf -d /usr/local/Garage/share/cmake/bash-completion
        rm -f /usr/local/Garage/share/pkgconfig/bash-completion.pc
        rm -f /usr/local/Garage/etc/profile.d/bash_completion.sh

	echo -e "\033[92;1;4m🏭 Package arrived at store! bash-completion successfully returned. \033[0m"
}

un_bash-completion
