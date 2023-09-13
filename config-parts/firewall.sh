#!/bin/vbash
# shellcheck disable=all

# Interface groups
set firewall group interface-group IG_lan interface 'bond0'
set firewall group interface-group IG_lab interface 'bond0.10'
set firewall group interface-group IG_wireless interface 'bond0.20'
set firewall group interface-group IG_guest interface 'bond0.30'
set firewall group interface-group IG_services interface 'pod-services'
set firewall group interface-group IG_wireguard interface 'wg80'
set firewall group interface-group IG_wan interface 'eth0'

# Router (VyOS itself)
set firewall group address-group router-addresses address 10.10.0.1
set firewall group address-group router-addresses address 10.1.0.1
set firewall group address-group router-addresses address 10.1.237.1
set firewall group address-group router-addresses address 127.0.0.1
set firewall group ipv6-address-group router-addresses-ipv6 address fe80::e63a:6eff:fe5a:f805
set firewall group ipv6-address-group router-addresses-ipv6 address ::1


# Prometheus ports for metrics
set firewall group port-group prometheus-metrics port 9798 # speedtest
set firewall group port-group prometheus-metrics port 9100 # node-exporter
set firewall group port-group prometheus-metrics port 9342 # frr-exporter
set firewall group port-group prometheus-metrics port 9273 # vyos
