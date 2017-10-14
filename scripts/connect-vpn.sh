#!/usr/bin/env bash

VPN_STATE=$(nmcli con show uuid $1 | grep 'VPN.VPN-STATE' | awk '{print $2}')

if [[ VPN_STATE -ne '5' ]]; then
    nmcli con up uuid $1
fi
