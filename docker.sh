#!/bin/bash

echo -e "\e[38;5;82mBuild two Docker images and run them using Docker Compose:"; tput sgr0
docker-compose up --build -d
sleep 1
docker-compose ps
echo -e "\e[38;5;80mDone."; tput sgr0

echo -e "\e[38;5;82mCheck HTTP on balancer1:"; tput sgr0
curl "http://127.0.0.1:8081/200"; echo
sleep 1
echo -e "\e[38;5;82mCheck HTTP on balancer2:"; tput sgr0
curl "http://127.0.0.1:8082/200"; echo
echo -e "\e[38;5;80mDone."; tput sgr0

