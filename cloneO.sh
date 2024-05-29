#!/bin/bash

# Check if a repository URL is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <repository_url>"
    exit 1
fi

# Clone the repository
if ! git clone "$1"; then
    echo "Error: Failed to clone the repository."
    exit 1
fi

# Extract the repository name from the URL and remove '.git' extension
repo_name=$(basename "$1" .git)

# Check if the cloned repository directory exists
if [ ! -d "$repo_name" ]; then
    echo "Error: Cloned repository directory not found."
    exit 1
fi

# Open the cloned repository in Visual Studio Code
code "$repo_name"

# Check if opening in Visual Studio Code was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to open the cloned repository in Visual Studio Code."
    exit 1
fi
