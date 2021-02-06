abcmidi_install () {
        sha="490261d158e3f387287b25f726c6ebc7cad5aa66f4a2e9770f7f698d185191082108dc7f2a23a943cdbc27f7c2e86d613e17e1d03587f675c5e577be70ca23fa  abcmidi.zip"
        cd /usr/local/Garage
        echo -e "\033[34;1;4m🖥️  Processing order: abcmidi \033[0m"
        sleep 2
        echo -e "\033[93;1;4m🏗  Retrieving components of order \033[0m"
        sleep 2
        gdrived 1UUxzeWotJVLpNNa_vg1kwY7jAzHKHngJ abcmidi.zip
	result=`sha -c abcmidi.zip "$sha"`
	if [ "$result" == "Incorrect" ];
	then
		echo -e "\033[91;1;4mError: Security problem \033[0m"
		echo "The downloaded file has been compromised. It has been deleted."
		echo "Your system has not been harmed."
		echo "Try again later."
		rm -f abcmidi.zip
		rm -f cookie
		return
	fi
        echo -e "\033[33;1;4m📦 Packaging components of order... \033[0m"
        sleep 2
        unzip abcmidi.zip
        rm -rf -d __MACOSX
        rm abcmidi.zip
        rm cookie
        echo -e "\033[31;1;4m🚚 Shipping package... \033[0m"
        sleep 2
        ./test
        rm test
}

abcmidi_install
