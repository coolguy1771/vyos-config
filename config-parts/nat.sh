#!/bin/vbash


# Force NTP
set nat destination rule 104 description 'Force NTP'
set nat destination rule 104 destination address '!10.1.237.1'
set nat destination rule 104 destination port '123'
set nat destination rule 104 inbound-interface 'bond0.237'
set nat destination rule 104 protocol 'udp'
set nat destination rule 104 translation address '10.1.237.1'
set nat destination rule 104 translation port '123'


# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface 'eth0'
set nat source rule 100 translation address 'masquerade'
