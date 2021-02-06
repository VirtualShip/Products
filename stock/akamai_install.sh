akamai_install () {
        sha="55fa8c8264d0b09590b6ed3910645bb3040d8d3ee788fa7c5ceba7ee2ca5ad6b2befa4cde7474aae094b3c626358df26d457097d52d55db0990c9c8ab3ffc6fb  akamai.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: akamai \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1sG9gz4wuNat5_r8IhhLywfQGTQhnjr2e akamai.zip
        result=`sha -c akamai.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f akamai.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip akamai.zip
        rm -rf -d __MACOSX
        rm akamai.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

akamai_install