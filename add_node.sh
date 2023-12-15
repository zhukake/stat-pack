#!/bin/bash

echo -e "\e[41m\e[97mУСТАНАВЛИВАЮ ЁПТА\e[0m"
echo -e "\e[47m\e[91mDOCKER SWARM\e[0m"
# Инициализация Docker Swarm
docker swarm init

# Клонирование репозитория
echo -e "\e[41m\e[97mКЛОНИРУЮ ЁПТА\e[0m"
echo -e "\e[47m\e[91mВАШИ ГИТХАБЫ\e[0m"
cd ~ && git clone https://github.com/zhukake/stat-pack.git

# Переход в директорию с файлом docker-compose.yml qqq
cd ./stat-pack

# Развёртывание стека Docker с использованием Compose
echo -e "\e[41m\e[97mЗАПУСКАЮ ЁПТА\e[0m"
echo -e "\e[47m\e[91mNODE_EXPORTER\e[0m"
docker stack deploy -c node-exporter.yml node-exporter
cd ../ # правка потому что я ебало тупое

echo -e "\e[41m\e[97mКУ-КУ ЁПТА!\e[0m"
echo -e "\e[47m\e[91mГОТОВО\e[0m"

