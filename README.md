# domolo

A monitoring and logging solution for Docker hosts and containers with [Prometheus](https://prometheus.io/),
[Grafana](http://grafana.org/), [Loki](https://github.com/grafana/loki/), [cAdvisor](https://github.com/google/cadvisor),
[NodeExporter](https://github.com/prometheus/node_exporter) and alerting with
[AlertManager](https://github.com/prometheus/alertmanager).

Inspired by [dockprom](https://github.com/stefanprodan/dockprom)

## Install

Clone this repository on your Docker host, cd into `domolo` directory and run
`docker-compose up -d`:

```bash
git clone https://github.com/ductnn/domolo.git
cd domolo
docker-compose up -d
```

Containers:
  - **Prometheus** (metrics database): `http://<host-ip>:9090`
  - **Prometheus-Pushgateway** (push acceptor for ephemeral and batch jobs): `http://<host-ip>:9091`
  - **AlertManager** (alerts management): `http://<host-ip>:9093`
  - **Grafana** (visualize metrics): `http://<host-ip>:3000`
  - **Loki** (likes prometheus, but for logs): `http://<host-ip>:3100`
  - **Promtail** (is the agent, responsible for gathering logs and sending them to Loki)
  - **NodeExporter** (host metrics collector)
  - **cAdvisor** (containers metrics collector)
  - **Caddy** (reverse proxy and basic auth provider for prometheus and alertmanager)

## Grafana

Change the credentials in file [config](config):

```
GF_SECURITY_ADMIN_USER=admin
GF_SECURITY_ADMIN_PASSWORD=changeme
GF_USERS_ALLOW_SIGN_UP=false
```

**Grafana** is preconfigured with dashboards, setup **Prometheus**(default) and
**Loki** in `datasources`
