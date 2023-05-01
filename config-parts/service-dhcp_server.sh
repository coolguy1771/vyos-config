#!/bin/vbash

# LAB_NET

set service dhcp-server shared-network-name LAB authoritative
set service dhcp-server shared-network-name LAB ping-check
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 bootfile-server '10.10.0.1'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 default-router '10.10.10.1'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 lease '86400'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 name-server '10.10.254.2'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 range 0 start '10.10.10.50'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 range 0 stop '10.10.10.254'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping micro-bmc-0 mac-address '3c:ec:ef:35:c0:74'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping micro-bmc-0 ip-address '10.10.10.70'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping dell-idrac-0 ip-address '10.10.10.60'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping dell-idrac-0 mac-address 'f4:8e:38:cc:40:96'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping dell-idrac-1 ip-address '10.10.10.61'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping dell-idrac-1 mac-address '10:98:36:a1:3d:af'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping hp-ilo-0 ip-address '10.10.10.65'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping hp-ilo-0 mac-address '54:80:28:4d:ba:a0'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-0 ip-address '10.10.10.20'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-0 mac-address 'c0:25:a5:9c:86:51'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-1 ip-address '10.10.10.21'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-1 mac-address 'b0:4f:13:05:c5:24'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-2 ip-address '10.10.10.22'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-2 mac-address '6c:2b:59:e2:1d:ee'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-3 ip-address '10.10.10.23'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-3 mac-address 'b0:0c:d1:67:6a:53'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-4 ip-address '10.10.10.24'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-4 mac-address 'b0:0c:d1:67:69:a6'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-5 ip-address '10.10.10.25'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-5 mac-address '6c:4b:90:4e:1a:0c'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-6 ip-address '10.10.10.26'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-6 mac-address '6c:4b:90:4e:19:c8'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping osiris ip-address '10.10.10.50'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping osiris mac-address '66:bb:4f:76:56:4e'

#LAN_NET

set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 bootfile-server '10.10.0.1'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 default-router '10.10.0.1'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 range 0 start '10.10.0.50'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 range 0 stop '10.10.0.254'

#WIRELESS_NET

set service dhcp-server shared-network-name WIRELESS authoritative
set service dhcp-server shared-network-name WIRELESS ping-check
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 bootfile-server '10.10.0.1'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 default-router '10.10.20.1'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 lease '86400'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 name-server '10.10.254.2'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 range 0 start '10.10.20.50'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 range 0 stop '10.10.20.254'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 static-mapping printer ip-address '10.10.20.51'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 static-mapping printer mac-address '10:98:c3:d9:12:43'
