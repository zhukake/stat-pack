# grafana-docker-stack
1. YOU ARE THERE NOW 
```
apt update
apt full-upgrade -y
apt install doker.io
docker swarm init

```
2. Deploy stack
```
git clone https://github.com/zhukake/stat-pack.git
docker stack deploy -c grafana-docker-stack/docker-compose.yml monitoring
```
3. Add `http://prometheus:9090` to grafana
4. Add  `/var/lib/docker/volumes/monitoring_prom-configs/_data/prometheus.yml` file, to `scrape_configs:` section:
```
  - job_name: 'node-exporter'

    static_configs:
      - targets: ['node-exporter:9100']
```
5. Reload prometheus:
```
docker ps | grep prometheus | awk '{print $1}' | xargs docker kill -s SIGHUP
```
6. dashboard: https://grafana.com/grafana/dashboards/1860 to grafana.

That's it!


 Install node-exporter solo:

```
apt update
apt full-upgrade -y
apt install doker.io
docker swarm init

```


git clone https://github.com/zhukake/stat-pack.git

docker stack deploy -c grafana-docker-stack/node-exporter.yml node-exporter
```
1. Add these servers to `/var/lib/docker/volumes/monitoring_prom-configs/_data/prometheus.yml` file to `- targets: ['node-exporter:9100']` list of `- job_name: 'node-exporter'` section, like `- targets: ['node-exporter:9100', 'server1:9100', 'server2:9100', '...']`
2. Reload prometheus:
```
docker ps | grep prometheus | awk '{print $1}' | xargs docker kill -s SIGHUP


7. speedtest.sh | bash
or 
curl -s https://raw.githubusercontent.com/zhukake/stat-pack/main/speedtest.sh | bash 
