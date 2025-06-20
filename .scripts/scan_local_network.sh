#!/bin/bash
# Simple bash script that:
# - disconnects vpn if connected
# - re-establishes network (./internet_on.sh)
# - runs nmap scan on network
# - reconnects to vpn

# Check nordvpn status
if nordvpn status | grep -q "Status: Connected"; then
    echo "NordVPN is connected. Disconnecting..."
    nordvpn disconnect
else
    echo "NordVPN is not connected."
fi

sleep 1

# Re-establish internet connection
bash /home/lucas/Scripts/internet_on.sh

sleep 2

# Run nmap scan on local network
echo "Scanning local network..."
nmap -sn 192.168.1.0/24

echo "Scan complete. Reconnecting to NordVPN."
nordvpn connect
