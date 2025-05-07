#!/bin/bash

echo "Starting Spring Boot Microservices using tmux..."

# Admin Server
tmux new-session -d -s admin-server "cd admin-server && java -jar target/*.jar"
sleep 15

# Config Server
tmux new-session -d -s config-server "cd config-server && java -jar target/*.jar"
sleep 15

# Eureka Server
tmux new-session -d -s eureka-server "cd eureka-server && java -jar target/*.jar"
sleep 15

# OAuth2 Server
tmux new-session -d -s oauth2-server "cd oauth2-server && java -jar target/*.jar"
sleep 15

# Zuul Gateway
tmux new-session -d -s zuul-gateway "cd zuul-server && java -jar target/*.jar"
sleep 15

# Customer Service
tmux new-session -d -s customer-service "cd customer-service && java -jar target/*.jar"
sleep 15

# Order Service
tmux new-session -d -s order-service "cd order-service && java -jar target/*.jar"
sleep 15

echo "All services started in tmux sessions!"

