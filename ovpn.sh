#!/bin/bash
# Connect & Disconnect different .oVPN files from a folder
# Since I was tired of the ovpn3 client and trying to mororise its command structure.
# Tommie Pit	| https://ppiitt.nl
# License: GNU 	| https://www.gnu.org/licenses/gpl-3.0.html

# Are we connecting, disconnecting, or checking the oVPN tunnels

PS3='Want to connect, disconnect or view current tunnel? (1,2,3,4): '
options=("Connect" "Disconnect" "Current Tunnels" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Connect")
                echo "Let's Connect to an oVPN"
                echo ""
                echo "---------oVPN Files in dir-----------"
                ls *.ovpn
                echo "-------------------------------------"
                echo ""
                echo "Already active sessions if any:"
                openvpn3 sessions-list
                echo ""
                
		# Choose a file to connect to
		
		echo "Choose a file to connect to: "
		PS3="Enter number of file to use, ^C to exit: "
		select file in *.ovpn; do
			openvpn3 session-start --config "$file"
		done
                ;;
        "Disconnect")
                echo "Let's terminate a session:"
                echo "Current active sessions if any:"
                echo ""
                openvpn3 sessions-list

                # Choose a profile to disconnect from
                echo "Choose a file to disconnect from: "
                PS3="Enter number of file to use, ^C to exit: "
                select file in *.ovpn; do
                        openvpn3 session-manage --disconnect --config "$file"
                done
                ;;

        "Current Tunnels")
                echo "Lets view current open Tunnels: $REPLY which is $opt"
                echo ""
                openvpn3 sessions-list
                ;;
        "Quit")
                break
                ;;
        *) echo "invalid option $REPLY";;
    esac
done
