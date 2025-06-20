#!/bin/bash
# Simply runs the line below to re-enable internet after nordvpn disconnect
sudo iptables -P INPUT ACCEPT && sudo iptables -P OUTPUT ACCEPT && sudo iptables -F
echo "Re-established internet connection successfully!"
