#!/bin/bash

# Create dir for starting cluster
# mkdir kafka1_data kafka2_data # uncomment if needed
# chmod -R 777 . # uncomment if needed

# Store host IP in .env file
HOSTIP=$( hostname -i )
echo "HOSTIP=$HOSTIP" > .env 

# Start cluster
docker-compose up -d

# Verify services are up 
# sleep 10
docker-compose ps
