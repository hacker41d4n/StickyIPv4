#! /bin/bash

echo -ne "
-------------------------------------------------------------------------

  ███████╗████████╗██╗ ██████╗██╗  ██╗██╗   ██╗██╗██████╗ ██╗   ██╗██╗  ██╗
  ██╔════╝╚══██╔══╝██║██╔════╝██║ ██╔╝╚██╗ ██╔╝██║██╔══██╗██║   ██║██║  ██║
  ███████╗   ██║   ██║██║     █████╔╝  ╚████╔╝ ██║██████╔╝██║   ██║███████║
  ╚════██║   ██║   ██║██║     ██╔═██╗   ╚██╔╝  ██║██╔═══╝ ╚██╗ ██╔╝╚════██║
  ███████║   ██║   ██║╚██████╗██║  ██╗   ██║   ██║██║      ╚████╔╝      ██║
  ╚══════╝   ╚═╝   ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝       ╚═══╝       ╚═╝
-------------------------------------------------------------------------
"

read -p "Insert backup file name configuration (include PATH): " backupname

backup=$(cp /etc/network/interface $backupname)
echo $backup
echo "Backup process has been successful -- DONE!"

echo "$(newline)"
read -p "Insert IP Address: " ip

read -p "Insert Broadcast Address: " broadcast

read -p "Insert Network Address: " na

read -p "Insert Default Gateway: " gw 

read -p "Insert Primary DNS: " dns1

read -p "Insert Secondary DNS: " dns2

echo "$(newline)"
echo "# interfaces(5) file used by ifup(8) and ifdown(8)"
