ack_install () {
        sha="c1598f3b1999b1acf6e4039f59f75b06d691716913f39f9e4b51c7c56139cafc786f0d4c58450f4571de7f19bedeafcf0de605631a336476d795e849f3cf8708  ack.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: ack \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1ll3j5MNLRnm8j2n3GLGSx_Hhwy_THnPW ack.zip
        result=`sha -c ack.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f ack.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip ack.zip
        rm -rf -d __MACOSX
        rm ack.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

ack_install
