#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# Guest Vlan
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 10.10.30.0/24 default-router '10.10.30.1'
set service dhcp-server shared-network-name GUEST subnet 10.10.30.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 10.10.30.0/24 name-server '10.10.254.2'
set service dhcp-server shared-network-name GUEST subnet 10.10.30.0/24 range 0 start '10.10.30.50'
set service dhcp-server shared-network-name GUEST subnet 10.10.30.0/24 range 0 stop '10.10.30.254'

# LAB Vlan

set service dhcp-server shared-network-name LAB authoritative
set service dhcp-server shared-network-name LAB ping-check
set service dhcp-server shared-network-name LAB domain-search '286k.co'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 bootfile-server '10.1.237.1'
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
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping hp-ilo-1 ip-address '10.10.10.66'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping hp-ilo-1 mac-address 'b8:83:03:53:b6:a2'
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
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-7 mac-address  '6c:4b:90:e9:2e:d1'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-7 ip-address '10.10.10.27'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-8 ip-address '10.10.10.28'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-8 mac-address '6c:4b:90:ee:6a:8c'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-9 ip-address '10.10.10.29'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping k8s-9 mac-address '10:98:36:a1:3d:ae'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping osiris ip-address '10.10.10.50'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping osiris mac-address '66:bb:4f:76:56:4e'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping pikvm ip-address '10.10.10.80'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 static-mapping pikvm mac-address 'e4:5f:01:e4:69:f8'

# Lan Vlan

set service dhcp-server shared-network-name MGMT authoritative
set service dhcp-server shared-network-name MGMT ping-check
set service dhcp-server shared-network-name MGMT domain-search '286k.co'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 bootfile-server '10.1.237.1'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 default-router '10.1.237.1'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 lease '86400'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 range 0 start '10.1.237.50'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 range 0 stop '10.1.237.254'

set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 static-mapping decade ip-address '10.1.237.11'
set service dhcp-server shared-network-name MGMT subnet 10.1.237.0/24 static-mapping decade mac-address '94:60:D5:3A:5D:42'

# Wireless Vlan

set service dhcp-server shared-network-name WIRELESS authoritative
set service dhcp-server shared-network-name WIRELESS ping-check
set service dhcp-server shared-network-name WIRELESS domain-search '286k.co'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 bootfile-server '10.1.237.1'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 default-router '10.10.20.1'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 lease '86400'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 name-server '10.10.254.2'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 range 0 start '10.10.20.50'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 range 0 stop '10.10.20.254'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 static-mapping printer ip-address '10.10.20.51'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 static-mapping printer mac-address '10:98:c3:d9:12:43'
