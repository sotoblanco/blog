#!/bin/bash

# Build script for Quarto + Jekyll workflow

echo "Converting Markdown to HTML with Quarto..."

# Process posts
for file in _quarto_source/posts/*.qmd _quarto_source/posts/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        filename=$(basename "$filename" .qmd)
        echo "Processing: $file -> _posts/${filename}.html"
        quarto render "$file" --to html --output "_posts/${filename}.html"
    fi
done

# Process notes  
for file in _quarto_source/notes/*.qmd _quarto_source/notes/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        filename=$(basename "$filename" .qmd)
        echo "Processing: $file -> _notes/${filename}.html"
        quarto render "$file" --to html --output "_notes/${filename}.html"
    fi
done

echo "Quarto conversion complete!"
echo "Now running Jekyll..."

# Build Jekyll site
bundle exec jekyll build

echo "Build complete!"