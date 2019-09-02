#!/bin/sh
docker-compose -f /var/www/parking-aws-documentroot/docker-compose.yml build
docker-compose -f /var/www/parking-aws-documentroot/docker-compose.yml restart