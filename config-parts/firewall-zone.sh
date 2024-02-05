#!/bin/vbash

set firewall zone lan default-action 'allow'
set firewall zone lan from wan firewall name 'wan-lan'
set firewall zone lan from local firewall name 'local-lan'
set firewall zone lan from containers firewall name 'containers-lan'
set firewall zone lan interface 'bond0.237'

set firewall zone local default-action 'allow'
set firewall zone local description 'Local router zone'
set firewall zone local from lan firewall name 'lan-local'
set firewall zone local from containers firewall name 'containers-local'
set firewall zone local from wan firewall name 'wan-local'
set firewall zone local local-zone

set firewall zone containers default-action 'allow'
set firewall zone containers description 'VyOS containers zone'
set firewall zone containers from lan firewall name 'lan-containers'
set firewall zone containers from local firewall name 'local-containers'
set firewall zone containers from wan firewall name 'wan-containers'
set firewall zone containers interface 'pod-containers'

set firewall zone wan default-action 'allow'
set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from containers firewall name 'containers-wan'
set firewall zone wan interface 'eth0'
