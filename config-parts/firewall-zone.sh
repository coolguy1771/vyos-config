#!/bin/vbash

# Firewall zones

# containers zone
set firewall zone containers default-action 'drop'
set firewall zone containers description 'VyOS containers zone'
set firewall zone containers from guest firewall name 'guest-containers'
set firewall zone containers from lab firewall name 'lab-containers'
set firewall zone containers from lan firewall name 'lan-containers'
set firewall zone containers from local firewall name 'local-containers'
set firewall zone containers from wan firewall name 'wan-containers'
set firewall zone containers from wireguard firewall name 'wireguard-containers'
set firewall zone containers from wireless firewall name 'wireless-containers'
set firewall zone containers interface 'pod-containers'

# Guest zone
set firewall zone guest default-action 'drop'
set firewall zone guest from containers firewall name 'containers-guest'
set firewall zone guest from lab firewall name 'lab-guest'
set firewall zone guest from lan firewall name 'lan-guest'
set firewall zone guest from local firewall name 'local-guest'
set firewall zone guest from wan firewall name 'wan-guest'
set firewall zone guest from wireguard firewall name 'wireguard-guest'
set firewall zone guest from wireless firewall name 'wireless-guest'
set firewall zone guest interface 'eth1.30'

# LAB zone
set firewall zone lab default-action 'drop'
set firewall zone lab from containers firewall name 'containers-lab'
set firewall zone lab from guest firewall name 'guest-lab'
set firewall zone lab from lan firewall name 'lan-lab'
set firewall zone lab from local firewall name 'local-lab'
set firewall zone lab from wan firewall name 'wan-lab'
set firewall zone lab from wireguard firewall name 'wireguard-lab'
set firewall zone lab from wireless firewall name 'wireless-lab'
set firewall zone lab interface 'eth1.10'

# LAN zone
set firewall zone lan default-action 'drop'
set firewall zone lan from containers firewall name 'containers-lan'
set firewall zone lan from guest firewall name 'guest-lan'
set firewall zone lan from lab firewall name 'lab-lan'
set firewall zone lan from local firewall name 'local-lan'
set firewall zone lan from wan firewall name 'wan-lan'
set firewall zone lan from wireguard firewall name 'wireguard-lan'
set firewall zone lan from wireless firewall name 'wireless-lan'
set firewall zone lan interface 'eth1'

# Local zone
set firewall zone local default-action 'drop'
set firewall zone local description 'Local router zone'
set firewall zone local from containers firewall name 'containers-local'
set firewall zone local from guest firewall name 'guest-local'
set firewall zone local from lab firewall name 'lab-local'
set firewall zone local from lan firewall name 'lan-local'
set firewall zone local from wan firewall name 'wan-local'
set firewall zone local from wireguard firewall name 'wireguard-local'
set firewall zone local from wireless firewall name 'wireless-local'
set firewall zone local local-zone

# WAN zone
set firewall zone wan default-action 'drop'
set firewall zone wan from containers firewall name 'containers-wan'
set firewall zone wan from guest firewall name 'guest-wan'
set firewall zone wan from lab firewall name 'lab-wan'
set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from wireguard firewall name 'wireguard-wan'
set firewall zone wan from wireless firewall name 'wireless-wan'
set firewall zone wan interface 'eth0'

# Wireguard zone
set firewall zone wireguard default-action 'drop'
set firewall zone wireguard from containers firewall name 'containers-wireguard'
set firewall zone wireguard from guest firewall name 'guest-wireguard'
set firewall zone wireguard from lab firewall name 'lab-wireguard'
set firewall zone wireguard from lan firewall name 'lan-wireguard'
set firewall zone wireguard from local firewall name 'local-wireguard'
set firewall zone wireguard from wan firewall name 'wan-wireguard'
set firewall zone wireguard from wireless firewall name 'wireless-wireguard'
set firewall zone wireguard interface 'wg80'

# Wireless zone
set firewall zone wireless default-action 'drop'
set firewall zone wireless from containers firewall name 'containers-wireless'
set firewall zone wireless from guest firewall name 'guest-wireless'
set firewall zone wireless from lab firewall name 'lab-wireless'
set firewall zone wireless from lan firewall name 'lan-wireless'
set firewall zone wireless from local firewall name 'local-wireless'
set firewall zone wireless from wan firewall name 'wan-wireless'
set firewall zone wireless from wireguard firewall name 'wireguard-wireless'
set firewall zone wireless interface 'eth1.20'