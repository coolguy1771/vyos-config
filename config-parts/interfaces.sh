#!/bin/vbash

# Interfaces
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '3c:ec:ef:c3:80:74'
set interfaces ethernet eth1 address '10.10.0.1/24'
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id '3c:ec:ef:c3:80:75'

# VLANs
set interfaces ethernet eth1 vif 10 address '10.10.10.1/24'
set interfaces ethernet eth1 vif 10 description 'LAB'
set interfaces ethernet eth1 vif 20 address '10.10.20.1/24'
set interfaces ethernet eth1 vif 20 description 'WIRELESS'
set interfaces ethernet eth1 vif 30 address '10.10.30.1/24'
set interfaces ethernet eth1 vif 30 description 'GUEST'
set interfaces loopback lo

set interfaces wireguard wg80 address '10.10.80.1/24'
set interfaces wireguard wg80 description 'WIREGUARD'
set interfaces wireguard wg80 peer tylers-laptop allowed-ips '10.10.80.10/32'
set interfaces wireguard wg80 peer tylers-laptop persistent-keepalive '15'
set interfaces wireguard wg80 peer tylers-laptop public-key '8Hn6rVDytAdava6seZ1rs6omRDE/hDtipLYfOwbLzX8='
set interfaces wireguard wg80 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
