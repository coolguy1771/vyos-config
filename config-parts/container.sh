#!/bin/vbash

# Container registries

set container registry 'docker.io'
set container registry 'quay.io'
set container registry 'public.ecr.aws'
set container registry 'ghcr.io'

# Container networks

set container network containers prefix '10.10.254.0/24'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value 'home.witl.xyz,wg.witl.xyz'
set container name cloudflare-ddns environment TZ value 'America/New_York'
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.11.0'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# wildcard certificate
set container name lego-auto image 'ghcr.io/bjw-s/lego-auto:v0.2.0'
set container name lego-auto memory '0'
set container name lego-auto allow-host-networks
set container name lego-auto shared-memory '0'
set container name lego-auto restart 'on-failure'
set container name lego-auto environment TZ value 'America/New_York'
set container name lego-auto environment LA_DATADIR value '/config'
set container name lego-auto environment LA_CACHEDIR value '/config/.cache'
set container name lego-auto environment LA_EMAIL value 'postmaster@286k.co'
set container name lego-auto environment LA_PROVIDER value 'cloudflare'
set container name lego-auto environment LA_DOMAINS value '*.286k.co'
set container name lego-auto environment CF_DNS_API_TOKEN value "${SECRET_CLOUDFLARE_TOKEN}"
set container name lego-auto volume datadir source '/config/secrets/certs/_.286k.co'
set container name lego-auto volume datadir destination '/config'
set container name lego-auto volume datadir mode 'rw'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network containers address '10.10.254.8'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'America/New_York'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.3'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist memory '0'
set container name dnsdist network containers address '10.10.254.2'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# K8s-lb

set container name k8s-lb cap-add 'net-bind-service'
set container name k8s-lb image 'public.ecr.aws/docker/library/haproxy:2.9.4-alpine'
set container name k8s-lb memory '0'
set container name k8s-lb network containers address '10.10.254.3'
set container name k8s-lb shared-memory '0'
set container name k8s-lb volume k8s-lb-config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name k8s-lb volume k8s-lb-config mode 'ro'
set container name k8s-lb volume k8s-lb-config source '/config/containers/k8s-lb/config/haproxy.cfg'

# Netboot-xyz

set container name netboot-xyz allow-host-networks
set container name netboot-xyz image 'ghcr.io/netbootxyz/netbootxyz:0.7.0-nbxyz2'
set container name netboot-xyz memory '0'
set container name netboot-xyz shared-memory '0'

# Node-exporter
set container name node-exporter allow-host-networks
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.7.0'
set container name node-exporter memory '0'
set container name node-exporter shared-memory '0'
set container name node-exporter volume node-exporter-procfs source '/proc'
set container name node-exporter volume node-exporter-procfs destination '/host/proc'
set container name node-exporter volume node-exporter-procfs mode 'ro'
set container name node-exporter volume node-exporter-rootfs source '/'
set container name node-exporter volume node-exporter-rootfs destination '/rootfs'
set container name node-exporter volume node-exporter-rootfs mode 'ro'
set container name node-exporter volume node-exporter-sysfs source '/sys'
set container name node-exporter volume node-exporter-sysfs destination '/host/sys'
set container name node-exporter volume node-exporter-sysfs mode 'ro'

# Podman-exporter

set container name podman-exporter allow-host-networks
set container name podman-exporter environment CONTAINER_HOST value 'tcp://10.1.237.1:8888'
set container name podman-exporter image 'quay.io/navidys/prometheus-podman-exporter:v1.13.0'
set container name podman-exporter memory '0'
set container name podman-exporter shared-memory '0'

# Smartctl-exporter

set container name smartctl-exporter allow-host-networks
set container name smartctl-exporter disable
set container name smartctl-exporter image 'quay.io/prometheuscommunity/smartctl-exporter:v0.11.0'
set container name smartctl-exporter memory '0'
set container name smartctl-exporter shared-memory '0'
set container name smartctl-exporter volume smartctl-exporter-devfs destination '/hostdev'
set container name smartctl-exporter volume smartctl-exporter-devfs mode 'ro'
set container name smartctl-exporter volume smartctl-exporter-devfs source '/dev'

# Smtp-relay

set container name smtp-relay environment SMTP_DOMAIN value '286k.co'
set container name smtp-relay environment SMTP_PASSWORD value ${SECRET_SMTP_RELAY_KEY}
set container name smtp-relay environment SMTP_PORT value '465'
set container name smtp-relay environment SMTP_SERVER value 'smtp.fastmail.com'
set container name smtp-relay environment SMTP_USERNAME value 'twitlin@286k.co'
set container name smtp-relay image 'ghcr.io/foxcpp/maddy:0.7.1'
set container name smtp-relay memory '0'
set container name smtp-relay network containers address '10.10.254.4'
set container name smtp-relay shared-memory '0'
set container name smtp-relay volume smtp-relay-config destination '/data/maddy.conf'
set container name smtp-relay volume smtp-relay-config mode 'ro'
set container name smtp-relay volume smtp-relay-config source '/config/containers/smtp-relay/config/maddy.conf'

# Vnstat
set container name vnstat allow-host-networks
set container name vnstat environment EXCLUDE_PATTERN value '^docker|^veth|^br-|^lxc|eth[0123]'
set container name vnstat environment TZ value 'America/New_York'
set container name vnstat image 'ghcr.io/vergoh/vnstat:2.12'
set container name vnstat memory '0'
set container name vnstat shared-memory '0'
set container name vnstat volume vnstat-data source '/config/containers/vnstat'
set container name vnstat volume vnstat-data destination '/var/lib/vnstat'
set container name vnstat volume vnstat-data mode 'rw'


# onepassword-connect
set container name onepassword-connect image 'docker.io/1password/connect-api:1.7.2'
set container name onepassword-connect environment TZ value 'America/New_York'
set container name onepassword-connect memory '0'
set container name onepassword-connect network containers address '10.10.254.5'
set container name onepassword-connect shared-memory '0'
set container name onepassword-connect volume credentials source '/config/secrets/1password-credentials.json'
set container name onepassword-connect volume credentials destination '/home/opuser/.op/1password-credentials.json'
set container name onepassword-connect volume credentials mode 'ro'
set container name onepassword-connect volume data source '/tmp/onepassword/data'
set container name onepassword-connect volume data destination '/home/opuser/.op/data'
set container name onepassword-connect volume data mode 'rw'

# onepassword-sync
set container name onepassword-sync image 'docker.io/1password/connect-sync:1.7.2'
set container name onepassword-sync environment TZ value 'America/New_York'
set container name onepassword-sync memory '0'
set container name onepassword-sync shared-memory '0'
set container name onepassword-sync network containers address '10.10.254.6'
set container name onepassword-sync volume credentials source '/config/secrets/1password-credentials.json'
set container name onepassword-sync volume credentials destination '/home/opuser/.op/1password-credentials.json'
set container name onepassword-sync volume credentials mode 'ro'
set container name onepassword-sync volume data source '/tmp/onepassword/data'
set container name onepassword-sync volume data destination '/home/opuser/.op/data'
set container name onepassword-sync volume data mode 'rw'

# gatus
set container name gatus cap-add 'net-bind-service'
set container name gatus cap-add 'net-raw'
set container name gatus image 'ghcr.io/twin/gatus:v5.7.0'
set container name gatus memory '0'
set container name gatus network containers address '10.10.254.7'
set container name gatus shared-memory '0'
set container name gatus volume gatus-config source '/config/containers/gatus/config/config.yaml'
set container name gatus volume gatus-config destination '/config/config.yaml'
set container name gatus volume gatus-config mode 'ro'
set container name gatus volume gatus-certificate-crt source '/config/secrets/certs/_.286k.co/cert.pem'
set container name gatus volume gatus-certificate-crt destination '/config/certificate.crt'
set container name gatus volume gatus-certificate-crt mode 'ro'
set container name gatus volume gatus-certificate-key source '/config/secrets/certs/_.286k.co/privkey.pem'
set container name gatus volume gatus-certificate-key destination '/config/certificate.key'
set container name gatus volume gatus-certificate-key mode 'ro'
set container name gatus environment SECRET_PUSHOVER_APP_TOKEN value ${SECRET_PUSHOVER_APP_TOKEN}
set container name gatus enviorment SECRET_PUSHOVER_USER_KEY value ${SECRET_PUSHOVER_USER_KEY}

# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.4'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter allow-host-networks
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'


set container name tailscale image 'ghcr.io/tailscale/tailscale:v1.58.2'
set container name tailscale allow-host-networks
set container name tailscale memory '0'
set container name tailscale restart 'on-failure'
set container name tailscale shared-memory '0'
set container name tailscale environment TS_AUTHKEY value ${SECRET_TAILSCALE_KEY}
set container name tailscale environment TS_HOSTNAME value 'vyos-container'
set container name tailscale environment TS_ROUTES value '10.1.237.0/24,10.10.10.0/24,10.10.20.0/24,10.0.42.0/24,10.0.42.3/24'
set container name tailscale enviornment TS_ACCEPT_DNS value 'false'
