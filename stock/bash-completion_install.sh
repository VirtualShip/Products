bash-completion_install () {
	sha="d6d167f0b9eee7038f700c8199fa67929b06f153ca74364ae0b809e1b166f30a92cc702c3e79c21d7c1e0272bcb145364f16ac09140fad6d30bf513f7b76050b  bash-completion.zip"
	cd /usr/local/Garage
	echo -e "\033[34;1;4m🖥️  Processing order: bash-completion \033[0m"
	sleep 2
	echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
	sleep 2
	gdrived 1FuzHEXe8YTPqejrsT-YH37AMX6A-72qh bash-completion.zip
	result=`sha -c bash-completion.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f bash-completion.zip
		rm -f cookie
		return
	fi
	echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
	unzip bash-completion.zip
	rm -rf -d __MACOSX
	rm bash-completion.zip
	rm cookie
	echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

bash-completion_install
