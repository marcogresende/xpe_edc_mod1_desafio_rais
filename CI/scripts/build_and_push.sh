#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region sa-east-1 | docker login --username AWS --password-stdin 377000241855.dkr.ecr.sa-east-1.amazonaws.com
docker build -t xpe-marco-prod-extract-rais .
docker tag xpe-marco-prod-extract-rais:latest 377000241855.dkr.ecr.sa-east-1.amazonaws.com/xpe-marco-prod-extract-rais:latest
docker push 377000241855.dkr.ecr.sa-east-1.amazonaws.com/xpe-marco-prod-extract-rais:latest
