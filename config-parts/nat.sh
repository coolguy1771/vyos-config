#!/bin/vbash

# Forward SE Ports
set nat destination rule 102 destination port '27016'
set nat destination rule 102 inbound-interface 'eth0'
set nat destination rule 102 protocol 'udp'
set nat destination rule 102 translation address '10.10.10.52'

# Force NTP
set nat destination rule 104 description 'Force NTP for LAN'
set nat destination rule 104 destination address '!10.10.0.1'
set nat destination rule 104 destination port '123'
set nat destination rule 104 inbound-interface 'eth1'
set nat destination rule 104 protocol 'udp'
set nat destination rule 104 translation address '10.10.0.1'
set nat destination rule 104 translation port '123'

set nat destination rule 105 description 'Force NTP for LAB'
set nat destination rule 105 destination address '!10.10.10.1'
set nat destination rule 105 destination port '123'
set nat destination rule 105 inbound-interface 'eth1.10'
set nat destination rule 105 protocol 'udp'
set nat destination rule 105 translation address '10.10.10.1'
set nat destination rule 105 translation port '123'

set nat destination rule 106 description 'Force NTP for Wireless'
set nat destination rule 106 destination address '!10.10.20.1'
set nat destination rule 106 destination port '123'
set nat destination rule 106 inbound-interface 'eth1.20'
set nat destination rule 106 protocol 'udp'
set nat destination rule 106 translation address '10.10.20.1'
set nat destination rule 106 translation port '123'


set nat destination rule 107 description 'Force NTP for Wireguard Trusted'
set nat destination rule 107 destination address '!10.10.80.1'
set nat destination rule 107 destination port '123'
set nat destination rule 107 inbound-interface 'wg80'
set nat destination rule 107 protocol 'udp'
set nat destination rule 107 translation address '10.10.80.1'
set nat destination rule 107 translation port '123'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface 'eth0'
set nat source rule 100 translation address 'masquerade'