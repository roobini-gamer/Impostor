#!/bin/bash

# ROOT Check
function root_chk () {
	if [[ $EUID -ne 0 ]]; then
		clear
		printf " ${BD}${WH}[${RD}!${WH}] ${RD}must be run as root ${YW}\n"
		exit 1
	fi
}

function banner () {
	printf "${BD}${WH}
  ██╗ ███╗   ███╗ ██████╗   ██████╗  ███████╗████████╗ ██████╗  ██████╗      
  ██║ ████╗ ████║ ██╔══██╗ ██╔═══██╗ ██╔════╝╚══██╔══╝██╔═══██╗ ██╔══██╗     
  ██║ ██╔████╔██║ ██████╔╝ ██║   ██║ ███████╗   ██║   ██║   ██║ ██████╔╝     
  ██║ ██║╚██╔╝██║ ██╔═══╝  ██║   ██║ ╚════██║   ██║   ██║   ██║ ██╔══██╗     
  ██║ ██║ ╚═╝ ██║ ██║      ╚██████╔╝ ███████║   ██║   ╚██████╔╝ ██║  ██║     
  ╚═╝ ╚═╝     ╚═╝ ╚═╝       ╚═════╝  ╚══════╝   ╚═╝    ╚═════╝  ╚═╝  ╚═╝     
                                                                      
  ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
  ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
  ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
  ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
  ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
  ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
         By:R00B!Ni_gamer                            Version:0.1b
"
}
banner
 
# Dependencies Check
function checking_dependencies () {
	clear
	banner
	if [[ -f "dependencies.conf" ]]; then
		sleep 1
	else
		echo ""
		touch dependencies.conf
		echo "" >> dependencies.conf
		sleep 1

		# MDK3 Check
		which mdk3 > /dev/null 2>&1
		if [[ $? -eq 0 ]]; then
			printf " ${YW}MDK3 ${WH}................. ${WH}[${GR}✔${WH}] Installed\n"
			echo "mdk3 = yes" >> dependencies.conf
		else
			printf " ${YW}MDK3 ${WH}................. ${WH}[${RD}✘${WH}] NOT Installed\n"
			sleep 1
			apt-get install mdk3 -y
		fi

		# Aircrack-ng Check
		which aircrack-ng > /dev/null 2>&1
		if [[ $? -eq 0 ]]; then
			printf " ${YW}aircrack-ng ${WH}.......... ${WH}[${GR}✔${WH}] Installed\n"
			echo "aircrack-ng = yes" >> dependencies.conf
		else
			prinf " ${YW}aircrack-ng ${WH}.......... ${WH}[${RD}✘${WH}] NOT Installed\n"
			sleep 1
			apt-get install aircrack-ng -y
		fi

		# Network Manager Check
		which nmcli > /dev/null 2>&1
		if [[ $? -eq 0 ]]; then
			printf " ${YW}Network Manager ${WH}...... ${WH}[${GR}✔${WH}] Installed\n"
			echo "nmcli = yes" >> dependencies.conf
		else
			prinf " ${YW}Network Manager ${WH}...... ${WH}[${RD}✘${WH}] NOT Installed\n"
			sleep 1
			apt-get install network-manager -y
		fi

		# MAC Changer Check
		which macchanger > /dev/null 2>&1
		if [[ $? -eq 0 ]]; then
			printf " ${YW}MAC Changer ${WH}.......... ${WH}[${GR}✔${WH}] Installed\n"
			echo "macchanger = yes" >> dependencies.conf
		else
			printf " ${YW}MAC Changer ${WH}.......... ${WH}[${RD}✘${WH}] NOT Installed\n"
			sleep 1
			apt-get install macchanger -y
		fi
		sleep 5		
	fi
}

root_chk
checking_dependencies
