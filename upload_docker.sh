#!/usr/bin/env bash

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="k1ck3rtw/udacity-prediction"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag twong/udacityprediction:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest