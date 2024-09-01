#!/bin/bash

docker buildx create --use

echo "Building multi-platform image (linux/amd64 for codespaces and linux/arm64 for macOS with Apple Silicon)."

docker build --platform linux/amd64,linux/arm64 -t data-collection:latest -f .devcontainer/Dockerfile .
docker push mclevey/data-collection:latest

echo "Multi-platform image built and pushed to Docker Hub"