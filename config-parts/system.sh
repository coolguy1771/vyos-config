#!/bin/vbash

set system host-name 'vyos'
set system domain-name '286k.co'
set system domain-search domain '286k.co'
set system login banner pre-login 'All communications and data transiting, traveling to or from, or stored on this system will be monitored. You consent to the unrestricted monitoring, interception, recording, and searching of all communications and data transiting, traveling to or from, or stored on this system at any time and for any purpose and by any person or entity, including government entities. You also consent to the unrestricted disclosure of all communications and data transiting, traveling to or from, or stored on this system at any time and for any purpose to any person or entity, including government entities. You are acknowledging that you have no reasonable expectation of privacy regarding your use of this system. These acknowledgments and consents cover all use of the system, including work-related use and personal use without exception.'
set system login banner post-login 'Welcome to VyOS'
set system ip multipath layer4-hashing

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
set system login user vyos authentication public-keys twitlin@janet key 'AAAAC3NzaC1lZDI1NTE5AAAAIPnKXgEGczcu8lGs+DEvRWgI4cSYHkAyTAU6/SMAHjL4'
set system login user vyos authentication public-keys twitlin@janet type 'ssh-ed25519'

# Logging
set system logs logrotate messages

# Name Server
set system name-server '1.1.1.1'
set system name-server '1.0.0.1'
set system name-server '8.8.8.8'
set system name-server '8.8.4.4'

# System Options
set system option reboot-on-panic
set system option startup-beep

# Sysctl
set system sysctl parameter kernel.pty.max value '24000'

# Syslog
set system syslog global facility all level 'info'
set system syslog global facility protocols level 'warning'

set system time-zone 'America/New_York'
