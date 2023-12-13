#!/bin/bash

# Инициализация Docker Swarm
docker swarm init

# Клонирование репозитория
git clone https://github.com/zhukake/stat-pack.git

# Переход в директорию с файлом docker-compose.yml qqq
cd ./stat-pack

# Развёртывание стека Docker с использованием Compose
docker stack deploy -c node-exporter.yml node-exporter

