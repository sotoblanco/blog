#!/bin/bash

# Convert a single Quarto file for testing

if [ $# -eq 0 ]; then
    echo "Usage: ./convert-single.sh filename.qmd"
    exit 1
fi

file="$1"
if [ ! -f "$file" ]; then
    echo "File $file not found"
    exit 1
fi

echo "Converting $file..."

# Set up Ruby environment
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Get filename without extension and path
filename=$(basename "$file" .qmd)
dir=$(dirname "$file")

# Render the file
quarto render "$file" --to html

# Check if HTML was created
if [ -f "${dir}/${filename}.html" ]; then
    echo "HTML created successfully"
    
    # Move to appropriate Jekyll directory
    if [[ "$dir" == *"posts"* ]]; then
        mkdir -p _posts
        mv "${dir}/${filename}.html" "_posts/${filename}.html"
        echo "Moved to _posts/${filename}.html"
    elif [[ "$dir" == *"notes"* ]]; then
        mkdir -p _notes
        mv "${dir}/${filename}.html" "_notes/${filename}.html"
        echo "Moved to _notes/${filename}.html"
    fi
else
    echo "Error: HTML file not created"
    exit 1
fi

echo "Conversion complete!"