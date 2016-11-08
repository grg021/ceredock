#!/usr/bin/env bash
docker-compose up -d nginx mysql mailhog pm2 redis
docker-compose exec --user laradock workspace bash
