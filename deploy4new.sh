#!/bin/bash

# Обновление списков пакетов
apt update

# Полное обновление системы
apt full-upgrade -y

# Установка Docker
apt install docker.io -y

# Инициализация Docker Swarm
docker swarm init

# Клонирование репозитория
git clone https://github.com/zhukake/stat-pack.git

# Переход в директорию с файлом docker-compose.yml
cd ./stat-pack

# Развёртывание стека Docker с использованием Compose


deploy -c docker-compose.yml monitoring
