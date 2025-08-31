#!/bin/bash

# Build script for Quarto + Jekyll workflow

echo "Converting Markdown to HTML with Quarto..."

# Set up Ruby environment
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Process posts
for file in _quarto_source/posts/*.qmd _quarto_source/posts/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        filename=$(basename "$filename" .qmd)
        echo "Processing: $file"
        
        # Render to HTML in the same directory
        quarto render "$file" --to html
        
        # Move the generated HTML to _posts directory
        if [ -f "_quarto_source/posts/${filename}.html" ]; then
            mkdir -p _posts
            mv "_quarto_source/posts/${filename}.html" "_posts/${filename}.html"
            echo "Moved to: _posts/${filename}.html"
        fi
    fi
done

# Process notes  
for file in _quarto_source/notes/*.qmd _quarto_source/notes/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .md)
        filename=$(basename "$filename" .qmd)
        echo "Processing: $file"
        
        # Render to HTML in the same directory
        quarto render "$file" --to html
        
        # Move the generated HTML to _notes directory
        if [ -f "_quarto_source/notes/${filename}.html" ]; then
            mkdir -p _notes
            mv "_quarto_source/notes/${filename}.html" "_notes/${filename}.html"
            echo "Moved to: _notes/${filename}.html"
        fi
    fi
done

echo "Quarto conversion complete!"
echo "Now running Jekyll..."

# Build Jekyll site
bundle exec jekyll build

echo "Build complete!"