#!/bin/bash

IMAGE_NAME="mclevey/data-collection"
BUILDER_NAME="multiarch-builder"

if ! docker buildx inspect "$BUILDER_NAME" >/dev/null 2>&1; then
    echo "Creating a new buildx builder instance with the docker-container driver..."
    docker buildx create --name "$BUILDER_NAME" --driver docker-container --use
else
    echo "Using existing buildx builder instance: $BUILDER_NAME"
    docker buildx use "$BUILDER_NAME"
fi

docker buildx inspect --bootstrap

echo "Building multi-platform image (linux/amd64 for Codespaces and linux/arm64 for macOS with Apple Silicon)..."
docker buildx build --platform linux/amd64,linux/arm64 -t "$IMAGE_NAME:latest" -f .devcontainer/Dockerfile --push .
