#!/usr/bin/env bash
docker-compose -f production-docker-compose.yml up -d caddy mysql mailhog pm2 redis
