#!/bin/vbash

set system domain-name '286k.co'
set system host-name 'vyos'

# Contrack
set system conntrack modules ftp
set system conntrack modules h323
set system conntrack modules nfs
set system conntrack modules pptp
set system conntrack modules sip
set system conntrack modules sqlnet
set system conntrack modules tftp

# Console
set system console device ttyS0 speed '115200'

# Login
set system login user twitlin authentication public-keys twitlin@janet key 'AAAAC3NzaC1lZDI1NTE5AAAAIPnKXgEGczcu8lGs+DEvRWgI4cSYHkAyTAU6/SMAHjL4'
set system login user twitlin authentication public-keys twitlin@janet type 'ssh-ed25519'

# Logging
set system logs logrotate messages

# Name Server
set system name-server '10.10.254.2'

# System Options
set system option reboot-on-panic
set system option startup-beep

# Sysctl
set system sysctl parameter kernel.pty.max value '24000'

# Syslog
set system syslog global facility all level 'info'
set system syslog global facility protocols level 'debug'
set system syslog host 10.0.42.6 facility all level 'all'
set system syslog host 10.0.42.6 facility all protocol 'udp'
set system syslog host 10.0.42.6 port '6020'
set system syslog host 10.0.42.6 format 'octet-counted'

set system time-zone 'America/New_York'