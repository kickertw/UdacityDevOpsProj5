#!/usr/bin/env bash

## Build a Docker image and then run it locally mapping the container port 80 to local port 8000

# Step 1:
# Build image and add a descriptive tag
docker build --tag twong/udacityprediction .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -p 8000:80 twong/udacityprediction