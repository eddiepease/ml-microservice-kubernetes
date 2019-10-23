#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t boston_housing:v1 .

# Step 2: 
# List docker images
docker images boston_housing

# Step 3: 
# Run flask app
docker run -p 8000:80 boston_housing:v1