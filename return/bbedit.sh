un_bbedit () {
	echo -e "\033[34;1;4m🖥️  Processing return: bbedit \033[0m"
        sleep 1

        cd /Applications/BBEdit.app

        if [ -f "/Applications/BBEdit.app/BBEdit_version" ];
        then
                echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
                sleep 1
        else
                echo -e "\033[91;1;4mError: bbedit not installed. Try running ship order bbedit... \033[0m"
                exit
        fi
        version=`cat BBEdit_version`
	
        rm -rf -d /Applications/BBEdit.app

	echo -e "\033[92;1;4m🏭 Package arrived at store! bbedit successfully returned. \033[0m"
}

un_bbedit
