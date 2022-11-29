# domolo

A monitoring and logging solution for Docker hosts and containers with [Prometheus](https://prometheus.io/),
[Grafana](http://grafana.org/), [Loki](https://github.com/grafana/loki/), [cAdvisor](https://github.com/google/cadvisor),
[NodeExporter](https://github.com/prometheus/node_exporter) and alerting with
[AlertManager](https://github.com/prometheus/alertmanager).

## Install

Clone this repository on your Docker host, cd into `domolo` directory and run
`docker-compose up -d`:

```bash
git clone https://github.com/ductnn/domolo.git
cd domolo
docker-compose up -d
```
