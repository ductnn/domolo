# Config **domolo** for AWS

## Prometheus on **EC2 & ECS**

Some helpers for anyone configuring Prometheus on ECS and AWS EC2.

To get started on **AWS ECS** and **EC2**:

*For EC2/ECS nodes*:
- Import the ecs task definition and add cadvisor and node-exporter service/task definition and run them on each host you want to be monitored
- Any hosts which have "Monitoring: On" tag will be automatically added in the targets
- Expose ports 9100 and 9191 to your Prometheus host

*For Prometheus host*:

- Copy `prometheus.yml` configuration present here to base `prometheus` configuration to enable EC2 service discovery
- `docker compose up -d`

**Note**:
Set query.staleness-delta to 1m make metrics more realtime


### TODO
- Add alerting rules based on ECS


## Promtail for **EC2**

To get started on **AWS EC2**:

*For EC2 nodes*:

- Copy `promtail-ec2.yaml` configuration present here to base `promtail` configuration to enable EC2 service discovery
- `docker compose up -d`
- More [docs](https://grafana.com/blog/2020/07/13/loki-tutorial-how-to-set-up-promtail-on-aws-ec2-to-find-and-analyze-your-logs/)

### TODO
