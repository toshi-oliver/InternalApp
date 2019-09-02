#!/bin/bash
docker-compose up -d /var/www/parking-aws-documentroot/docker-compose.yml
docker-compose restart /var/www/parking-aws-documentroot/docker-compose.yml