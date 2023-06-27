#!/bin/vbash

# Allow ICMP
set firewall all-ping 'enable'

# Policies
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

set firewall group address-group k8s_api address '10.10.254.3'

# Port groups
set firewall group port-group wireguard port '51820'
