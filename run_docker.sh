#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=microserv-mla .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app

# docker run -ti --rm -p 8000:80 --name my_app microserv-mla sh
docker run -ti --rm -d -p 8000:80 --name prediction_app microserv-mla
