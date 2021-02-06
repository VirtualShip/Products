automake_install () {
        sha="cf52a76df5dbd5254a938258fdb1d81403b9eda32732699a3b4b7953444bd0bc0583f765ee1a1e12142deb7b5b28bfe6c57188769f1b0aec0de6e67c8c66c5b6  automake.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: automake \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1OAF4m26F2nHjatMd9bmHSDeTFHSUvtw6 automake.zip
        result=`sha -c automake.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f automake.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip automake.zip
        rm -rf -d __MACOSX
        rm automake.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

automake_install
