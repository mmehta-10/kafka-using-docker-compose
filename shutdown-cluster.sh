#!/bin/bash

# Delete dir. Otherwise new kafka brokers will use stale data
sudo rm -rf kafka1_data/data/
sudo rm -rf kafka2_data/data/

# Tear down cluster and volumes
docker-compose down -v
