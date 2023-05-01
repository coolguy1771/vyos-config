#!/bin/vbash

# DHCP
  # LAB_NET

set service dhcp-server shared-network-name LAB authoritative
set service dhcp-server shared-network-name LAB ping-check
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name LAB subnet 10.10.10.0/24 bootfile-server '10.10.254.5'
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
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 default-router '10.10.0.1'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 range 0 start '10.10.0.50'
set service dhcp-server shared-network-name LAN subnet 10.10.0.0/24 range 0 stop '10.10.0.254'

  #WIRELESS_NET

set service dhcp-server shared-network-name WIRELESS authoritative
set service dhcp-server shared-network-name WIRELESS ping-check
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 bootfile-name 'netboot.xyz.efi'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 bootfile-server '10.10.254.5'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 default-router '10.10.20.1'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 domain-name '286k.co'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 lease '86400'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 name-server '10.10.254.2'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 range 0 start '10.10.20.50'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 range 0 stop '10.10.20.254'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 static-mapping printer ip-address '10.10.20.51'
set service dhcp-server shared-network-name WIRELESS subnet 10.10.20.0/24 static-mapping printer mac-address '10:98:c3:d9:12:43'

# DNS
  #DDNS
set service dns dynamic interface eth0 service icb host-name 'ipv4.icbplays.net'
set service dns dynamic interface eth0 service icb host-name 'arma.icbplays.net'
set service dns dynamic interface eth0 service icb host-name 'valheim.icbplays.net'
set service dns dynamic interface eth0 service icb login "${SECRET_CLOUDFLARE_EMAIL}"
set service dns dynamic interface eth0 service icb password "${SECRET_CLOUDFLARE_API_TOKEN}"
set service dns dynamic interface eth0 service icb protocol 'cloudflare'
set service dns dynamic interface eth0 service icb server 'api.cloudflare.com/client/v4'
set service dns dynamic interface eth0 service icb zone 'icbplays.net'
set service dns dynamic interface eth0 service main host-name "ipv4.${SECRET_PUBLIC_DOMAIN}"
set service dns dynamic interface eth0 service main host-name "wg.${SECRET_PUBLIC_DOMAIN}"
set service dns dynamic interface eth0 service main login 'tylerwitlin@gmail.com'
set service dns dynamic interface eth0 service main password "${SECRET_CLOUDFLARE_API_TOKEN}"
set service dns dynamic interface eth0 service main protocol 'cloudflare'
set service dns dynamic interface eth0 service main server 'api.cloudflare.com/client/v4'
set service dns dynamic interface eth0 service main zone "${SECRET_PUBLIC_DOMAIN}"

# DNS Forwarding

set service dns forwarding allow-from '10.10.0.0/16'
set service dns forwarding cache-size '0'
set service dns forwarding listen-address '10.10.0.1'
set service dns forwarding name-server '1.1.1.1'
set service dns forwarding name-server '1.0.0.1'
set service dns forwarding name-server '8.8.8.8'
set service dns forwarding name-server '8.8.4.4'

# HTTP API
set service https api debug
set service https virtual-host default listen-address '0.0.0.0'
set service https virtual-host default listen-port '8443'

#MDNS

set service mdns repeater interface 'eth1'
set service mdns repeater interface 'eth1.10'
set service mdns repeater interface 'eth1.20'
set service mdns repeater interface 'eth1.30'

# MONITORING

set service monitoring

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server time.nist.gov

# SSH
set service ssh disable-password-authentication
set service ssh port '22'

set system config-management commit-revisions '100'