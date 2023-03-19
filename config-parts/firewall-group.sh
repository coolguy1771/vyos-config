#!/bin/vbash

# Set Alias addresses
set firewall group address-group icb-server0 address '10.10.10.52'
set firewall group address-group k8s-bittorrent address '10.0.42.5'
set firewall group address-group k8s-ingress address '10.0.42.2'

# Cloudflare IPv6
set firewall group ipv6-network-group cloudflare-networks-v6 description 'Task Managed: Cloudflare IPv6 Hosts'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2400:cb00::/32'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2606:4700::/32'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2803:f800::/32'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2405:b500::/32'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2405:8100::/32'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2a06:98c0::/29'
set firewall group ipv6-network-group cloudflare-networks-v6 network '2c0f:f248::/32'

# RFC1918
set firewall group network-group RFC1918 description 'RFC1918 ranges'
set firewall group network-group RFC1918 network '192.168.0.0/16'
set firewall group network-group RFC1918 network '172.16.0.0/12'
set firewall group network-group RFC1918 network '10.0.0.0/8'

# Cloudflare IPv4
set firewall group network-group cloudflare-networks-v4 description 'Task Managed: Cloudflare IPv4 Hosts'
set firewall group network-group cloudflare-networks-v4 network '173.245.48.0/20'
set firewall group network-group cloudflare-networks-v4 network '103.21.244.0/22'
set firewall group network-group cloudflare-networks-v4 network '103.22.200.0/22'
set firewall group network-group cloudflare-networks-v4 network '103.31.4.0/22'
set firewall group network-group cloudflare-networks-v4 network '141.101.64.0/18'
set firewall group network-group cloudflare-networks-v4 network '108.162.192.0/18'
set firewall group network-group cloudflare-networks-v4 network '190.93.240.0/20'
set firewall group network-group cloudflare-networks-v4 network '188.114.96.0/20'
set firewall group network-group cloudflare-networks-v4 network '197.234.240.0/22'
set firewall group network-group cloudflare-networks-v4 network '198.41.128.0/17'
set firewall group network-group cloudflare-networks-v4 network '162.158.0.0/15'
set firewall group network-group cloudflare-networks-v4 network '104.16.0.0/13'
set firewall group network-group cloudflare-networks-v4 network '104.24.0.0/14'
set firewall group network-group cloudflare-networks-v4 network '172.64.0.0/13'
set firewall group network-group cloudflare-networks-v4 network '131.0.72.0/22'

# Wireguard
set firewall group port-group wireguard port '51820'