#!/bin/vbash

# Container registries

set registry 'docker.io'
set registry 'quay.io'
set registry 'public.ecr.aws'
set registry 'ghcr.io'

# Container networks

set network containers prefix '10.10.254.0/24'

# Coredns

set container name coredns cap-add 'net-bind-service'
set container name coredns image 'registry.k8s.io/coredns/coredns:v1.10.1'
set container name coredns memory '0'
set container name coredns network containers address '10.10.254.2'
set container name coredns shared-memory '0'
set container name coredns restart 'on-failure'
set container name coredns volume coredns-corefile destination '/Corefile'
set container name coredns volume coredns-corefile mode 'ro'
set container name coredns volume coredns-corefile source '/config/persistence/containers/coredns/config/Corefile'
set container name coredns volume coredns-hosts destination '/config/hosts'
set container name coredns volume coredns-hosts mode 'ro'
set container name coredns volume coredns-hosts source '/config/persistence/containers/coredns/config/hosts'

# Frr_exporter

set container name frr-exporter allow-host-networks
set container name frr-exporter image 'docker.io/tynany/frr_exporter:v1.1.4'
set container name frr-exporter memory '0'
set container name frr-exporter shared-memory '0'
set container name frr-exporter volume frr-exporter-varfs destination '/var/run/frr'
set container name frr-exporter volume frr-exporter-varfs mode 'ro'
set container name frr-exporter volume frr-exporter-varfs source '/var/run/frr'

# K8s-lb

set container name k8s-lb cap-add 'net-bind-service'
set container name k8s-lb image 'public.ecr.aws/docker/library/haproxy:2.7.3-alpine'
set container name k8s-lb memory '0'
set container name k8s-lb network containers address '10.10.254.3'
set container name k8s-lb shared-memory '0'
set container name k8s-lb volume k8s-lb-config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name k8s-lb volume k8s-lb-config mode 'ro'
set container name k8s-lb volume k8s-lb-config source '/config/persistence/containers/k8s-lb/config/haproxy.cfg'

# Netboot-xyz

set name netboot-xyz allow-host-networks
set name netboot-xyz image 'ghcr.io/netbootxyz/netbootxyz:0.6.7-nbxyz25'
set name netboot-xyz memory '0'
set name netboot-xyz shared-memory '0'

# Node-exporter

set container name node-exporter allow-host-networks
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.5.0'
set container name node-exporter memory '0'
set container name node-exporter shared-memory '0'
set container name node-exporter volume node-exporter-procfs destination '/host/proc'
set container name node-exporter volume node-exporter-procfs mode 'ro'
set container name node-exporter volume node-exporter-procfs source '/proc'
set container name node-exporter volume node-exporter-rootfs destination '/rootfs'
set container name node-exporter volume node-exporter-rootfs mode 'ro'
set container name node-exporter volume node-exporter-rootfs source '/'
set container name node-exporter volume node-exporter-sysfs destination '/host/sys'
set container name node-exporter volume node-exporter-sysfs mode 'ro'
set container name node-exporter volume node-exporter-sysfs source '/sys'

# Podman-exporter

set container name podman-exporter allow-host-networks
set container name podman-exporter environment CONTAINER_HOST value 'tcp://10.10.0.1:8888'
set container name podman-exporter image 'quay.io/navidys/prometheus-podman-exporter:v1.3.0'
set container name podman-exporter memory '0'
set container name podman-exporter shared-memory '0'

# Smartctl-exporter

set container name smartctl-exporter allow-host-networks
set container name smartctl-exporter disable
set container name smartctl-exporter image 'quay.io/prometheuscommunity/smartctl-exporter:v0.9.1'
set container name smartctl-exporter memory '0'
set container name smartctl-exporter shared-memory '0'
set container name smartctl-exporter volume smartctl-exporter-devfs destination '/hostdev'
set container name smartctl-exporter volume smartctl-exporter-devfs mode 'ro'
set container name smartctl-exporter volume smartctl-exporter-devfs source '/dev'

# Smtp-relay

set container name smtp-relay environment SMTP_DOMAIN value '286k.co'
set container name smtp-relay environment SMTP_PASSWORD value "${SECRET_SMTP_RELAY_KEY}"
set container name smtp-relay environment SMTP_PORT value '465'
set container name smtp-relay environment SMTP_SERVER value 'smtp.fastmail.com'
set container name smtp-relay environment SMTP_USERNAME value 'twitlin@286k.co'
set container name smtp-relay image 'ghcr.io/foxcpp/maddy:0.6.2'
set container name smtp-relay memory '0'
set container name smtp-relay network containers address '10.10.254.4'
set container name smtp-relay shared-memory '0'
set container name smtp-relay volume smtp-relay-config destination '/data/maddy.conf'
set container name smtp-relay volume smtp-relay-config mode 'ro'
set container name smtp-relay volume smtp-relay-config source '/config/persistence/containers/smtp-relay/config/maddy.conf'

# Vnstat
set container name vnstat allow-host-networks
set container name vnstat environment TZ value 'America/New_York'
set container name vnstat image 'docker.io/vergoh/vnstat:2.10'
set container name vnstat memory '0'
set container name vnstat shared-memory '0'
set container name vnstat volume vnstat-data destination '/var/lib/vnstat'
set container name vnstat volume vnstat-data mode 'rw'
set container name vnstat volume vnstat-data source '/config/containers/vnstat/data'
