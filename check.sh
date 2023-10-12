#!/bin/bash

# Define the container name
container_name="my-container"


# Check if the container is running
if docker ps -q --filter name="$container_name" | grep -q .; then
    # Container is running, so stop and remove it
    echo "Stopping and removing existing container: $container_name"
    docker stop "$container_name"
    docker rm "$container_name"
else
    echo "No existing container found with the name: $container_name"
    def customImage = docker.build("my-container:${env.BUILD_ID}")
    customImage.push()
fi

# Deploy a new container (replace this with your actual Docker run command)
docker run -d --name "$container_name" Contenerize-NodeJS-application-and-deploy-with-jenkins:/

