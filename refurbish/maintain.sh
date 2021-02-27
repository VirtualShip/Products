maintain () {
	echo -e "\033[34;1;4m🖥️  Processing refurbish: VirtualShip \033[0m"
	sleep 1
	
	cd /usr/local/Warehouse
	
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 1
	
	rm -rf -d man
	rm -rf -d working
	rm -f LICENSE
	rm -f README.md
	rm -f list.txt
	rm -f changekey
 	
	echo -e "\033[33;1;4m🏭 Package arrived at factory... \033[0m"
	sleep 1

	gh repo clone VirtualShip/Core
	rm -rf -d bin
	echo -e "\033[93;1;4m🚧 Starting refurbish... \033[0m"
	sleep 1
	
	mv -f /usr/local/Warehouse/Core/* /usr/local/Warehouse
	rm -rf -d Core
	
	echo -e "\033[93;1;4m🚧 Refurbish finished... \033[0m"
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
	sleep 2

	chmod +x bin/ship
	chmod +x bin/gdrived
	chmod +x bin/gh
	chmod +x bin/sha
	chmod +x bin/stockgen

	return
}


maintain


