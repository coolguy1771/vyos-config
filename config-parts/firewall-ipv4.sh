#!/bin/vbash

# From LAN to LOCAL
set firewall ipv4 name lan-local default-action 'accept'
set firewall ipv4 name lan-local description 'From LAN to LOCAL'
set firewall ipv4 name lan-local enable-default-log
set firewall ipv4 name lan-local rule 50 action 'accept'
set firewall ipv4 name lan-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name lan-local rule 50 destination port '67,68'
set firewall ipv4 name lan-local rule 50 protocol 'udp'
set firewall ipv4 name lan-local rule 50 source port '67,68'
set firewall ipv4 name lan-local rule 60 action 'accept'
set firewall ipv4 name lan-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name lan-local rule 60 destination port 'ntp'
set firewall ipv4 name lan-local rule 60 protocol 'udp'
set firewall ipv4 name lan-local rule 999 action 'drop'
set firewall ipv4 name lan-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-local rule 999 state invalid
set firewall ipv4 name lan-local rule 999 log

# From LAN to CONTAINERS
set firewall ipv4 name lan-containers default-action 'accept'
set firewall ipv4 name lan-containers description 'From LAN to CONTAINERS'
set firewall ipv4 name lan-containers rule 40 action 'accept'
set firewall ipv4 name lan-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name lan-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name lan-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name lan-containers rule 999 action 'drop'
set firewall ipv4 name lan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-containers rule 999 state invalid
set firewall ipv4 name lan-containers rule 999 log


# From LAN to WAN
set firewall ipv4 name lan-wan default-action 'accept'
set firewall ipv4 name lan-wan description 'From LAN to WAN'

# From LOCAL to LAN
set firewall ipv4 name local-lan default-action 'accept'
set firewall ipv4 name local-lan description 'From LOCAL to LAN'
set firewall ipv4 name local-lan enable-default-log
set firewall ipv4 name local-lan rule 999 action 'drop'
set firewall ipv4 name local-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-lan rule 999 state invalid
set firewall ipv4 name local-lan rule 999 log

# From LOCAL to CONTAINERS
set firewall ipv4 name local-containers default-action 'accept'
set firewall ipv4 name local-containers description 'From LOCAL to CONTAINERS'
set firewall ipv4 name local-containers rule 999 action 'drop'
set firewall ipv4 name local-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-containers rule 999 state invalid
set firewall ipv4 name local-containers rule 999 log

# From LOCAL to WAN
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan description 'From LOCAL to WAN'

# From CONTAINERS to LAN
set firewall ipv4 name containers-lan default-action 'accept'
set firewall ipv4 name containers-lan description 'From CONTAINERS to LAN'
set firewall ipv4 name containers-lan enable-default-log
set firewall ipv4 name containers-lan rule 999 action 'drop'
set firewall ipv4 name containers-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-lan rule 999 state invalid
set firewall ipv4 name containers-lan rule 999 log

# From CONTAINERS to LOCAL
set firewall ipv4 name containers-local default-action 'accept'
set firewall ipv4 name containers-local description 'From CONTAINERS to LOCAL'
set firewall ipv4 name containers-local enable-default-log
set firewall ipv4 name containers-local rule 999 action 'drop'
set firewall ipv4 name containers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-local rule 999 state invalid
set firewall ipv4 name containers-local rule 999 log


# From CONTAINERS to WAN
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan description 'From CONTAINERS to WAN'



# From WAN to LAN
set firewall ipv4 name wan-lan default-action 'drop'
set firewall ipv4 name wan-lan description 'From WAN to LAN'
set firewall ipv4 name wan-lan enable-default-log
set firewall ipv4 name wan-lan rule 999 action 'drop'
set firewall ipv4 name wan-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-lan rule 999 state invalid
set firewall ipv4 name wan-lan rule 999 log

# From WAN to LOCAL
set firewall ipv4 name wan-local default-action 'drop'
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local enable-default-log
set firewall ipv4 name wan-local rule 1 action 'drop'
set firewall ipv4 name wan-local rule 1 description 'Rule: drop_invalid'
set firewall ipv4 name wan-local rule 1 state invalid
set firewall ipv4 name wan-local rule 1 log
set firewall ipv4 name wan-local rule 100 action 'accept'
set firewall ipv4 name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 100 destination port '51820'
set firewall ipv4 name wan-local rule 100 protocol 'udp'

# From WAN to CONTAINERS
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers description 'From WAN to CONTAINERS'
set firewall ipv4 name wan-containers enable-default-log
set firewall ipv4 name wan-containers rule 999 action 'drop'
set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-containers rule 999 state invalid
set firewall ipv4 name wan-containers rule 999 log

