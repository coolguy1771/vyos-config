#!/bin/vbash

# BGP

set protocols bgp neighbor 10.10.10.20 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.20 description 'k8s-0'
set protocols bgp neighbor 10.10.10.20 remote-as '64512'
set protocols bgp neighbor 10.10.10.21 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.21 description 'k8s-1'
set protocols bgp neighbor 10.10.10.21 remote-as '64512'
set protocols bgp neighbor 10.10.10.22 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.22 description 'k8s-2'
set protocols bgp neighbor 10.10.10.22 remote-as '64512'
set protocols bgp neighbor 10.10.10.23 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.23 description 'k8s-3'
set protocols bgp neighbor 10.10.10.23 remote-as '64512'
set protocols bgp neighbor 10.10.10.24 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.24 description 'k8s-4'
set protocols bgp neighbor 10.10.10.24 remote-as '64512'
set protocols bgp neighbor 10.10.10.25 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.25 description 'k8s-5'
set protocols bgp neighbor 10.10.10.25 remote-as '64512'
set protocols bgp neighbor 10.10.10.26 address-family ipv4-unicast
set protocols bgp neighbor 10.10.10.26 description 'k8s-6'
set protocols bgp neighbor 10.10.10.26 remote-as '64512'
set protocols bgp parameters router-id '10.10.0.1'
set protocols bgp system-as '64512'
