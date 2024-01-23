#!/bin/vbash

# HTTP API
set service https api debug
set service https virtual-host default listen-address '0.0.0.0'
set service https virtual-host default listen-port '8443'


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
