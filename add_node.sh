# Инициализация Docker Swarm
docker swarm init

# Клонирование репозитория
git clone https://github.com/zhukake/stat-pack.git

# Переход в директорию с файлом docker-compose.yml
cd grafana-docker-stack

# Развёртывание стека Docker с использованием Compose
docker stack deploy -c docker-compose.yml node-exporter

