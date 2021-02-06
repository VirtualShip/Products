acme_install () {
        sha="531640543399edd177029c1ca3383634a05ad9f3f3493076c6e25948d5095411594b2e74f3e9b40cd9be71512cb4f537425d052ed91914508aeae5dbb56ea42b  acme.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: acme \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1RDvcYdinDkXKfH1dEw7MVGTzoqJx82jg acme.zip
        result=`sha -c acme.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f acme.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip acme.zip
        rm -rf -d __MACOSX
        rm acme.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

acme_install