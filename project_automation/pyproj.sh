#!/bin/bash

set -euo pipefail

# Function to print usage
usage() {
    echo "Usage: $0 <project_name>"
    exit 1
}

# Check if a project name is provided
if [[ $# -eq 0 ]]; then
    usage
fi

PROJECT_NAME="$1"

# Validate project name
if [[ ! "$PROJECT_NAME" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    echo "Error: Project name can only contain letters, numbers, underscores, and hyphens."
    exit 1
fi

# Function to create a directory if it doesn't exist
create_dir() {
    local dir="$1"
    mkdir -p "$dir"
    printf "Created directory: %s\n" "$dir"
}

# Function to create a file if it doesn't exist
create_file() {
    local file="$1"
    if [[ ! -f "$file" ]]; then
        touch "$file"
        printf "Created file: %s\n" "$file"
    fi
}

# Function to build the project structure
build_project_structure() {
    create_dir "$PROJECT_NAME"
    create_dir "$PROJECT_NAME/app"
    create_dir "$PROJECT_NAME/app/routers"
    create_dir "$PROJECT_NAME/app/schemas"
    create_dir "$PROJECT_NAME/app/services"
    create_dir "$PROJECT_NAME/app/repositories"
    create_dir "$PROJECT_NAME/app/models"
    create_dir "$PROJECT_NAME/app/middleware"
    create_dir "$PROJECT_NAME/app/utils"
    create_dir "$PROJECT_NAME/app/config"
    create_dir "$PROJECT_NAME/migrations"
    create_dir "$PROJECT_NAME/tests"
    create_dir "$PROJECT_NAME/docs"

    # Add default files
    create_file "$PROJECT_NAME/README.md"
    for dir in "$PROJECT_NAME/app" "$PROJECT_NAME/app/routers" "$PROJECT_NAME/app/schemas" "$PROJECT_NAME/app/services" "$PROJECT_NAME/app/repositories" "$PROJECT_NAME/app/models" "$PROJECT_NAME/app/middleware" "$PROJECT_NAME/app/utils" "$PROJECT_NAME/app/config"; do
        create_file "$dir/__init__.py"
    done
}

# Main function to initiate the script
main() {
    build_project_structure
    printf "Directory structure for '%s' created successfully.\n" "$PROJECT_NAME"
}

main
