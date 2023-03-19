#!/bin/vbash

# Allow ICMP
set firewall all-ping 'enable'

# Policies
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'
