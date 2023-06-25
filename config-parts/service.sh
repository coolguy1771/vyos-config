#!/bin/vbash

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
