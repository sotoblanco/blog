#!/bin/bash

# Add Note Script for Simple HTML Notes System
# Usage: ./add-note.sh "Note Title" "category" "description" "tags"

if [ $# -lt 4 ]; then
    echo "Usage: $0 \"Note Title\" \"category\" \"description\" \"tags\""
    echo "Example: $0 \"Docker Best Practices\" \"data-engineering\" \"Essential Docker commands and best practices\" \"docker,containers,devops\""
    exit 1
fi

TITLE="$1"
CATEGORY="$2"
DESCRIPTION="$3"
TAGS="$4"

# Convert title to filename
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-\|-$//g')

# Create category directory if it doesn't exist
mkdir -p "notes/$CATEGORY"

# Create the HTML file
FILEPATH="notes/$CATEGORY/$FILENAME.html"

# Get current date
DATE=$(date +%Y-%m-%d)

# Convert tags to HTML format
TAGS_HTML=$(echo "$TAGS" | tr ',' '\n' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//' | tr '[:lower:]' '[:upper:]' | sed 's/^/<span class="tag">/' | sed 's/$/<\/span>/' | tr '\n' ' ')

# Create the HTML file
cat > "$FILEPATH" << EOF
---
layout: default
title: "$TITLE"
---

<style>
/* Note-specific styling that matches the site theme */
.note-header {
    margin-bottom: 2rem;
    padding-bottom: 1rem;
    border-bottom: 1px solid #e9ecef;
}

.note-title {
    color: #333;
    font-size: 2.5rem;
    font-weight: 400;
    margin: 0 0 0.5rem 0;
}

.note-subtitle {
    color: #666;
    font-size: 1.1rem;
    margin: 0 0 1rem 0;
}

.note-tags {
    display: flex;
    gap: 0.5rem;
    margin-bottom: 1rem;
    flex-wrap: wrap;
}

.note-tag {
    background: #007bff;
    color: white;
    padding: 0.25rem 0.75rem;
    border-radius: 4px;
    font-size: 0.8rem;
    font-weight: 500;
}

.note-date {
    color: #666;
    font-size: 0.9rem;
}

.note-content {
    background: #f8f9fa;
    border-radius: 8px;
    padding: 2rem;
    border: 1px solid #e9ecef;
    margin-top: 2rem;
}

.note-content h1, .note-content h2, .note-content h3 {
    color: #333;
    margin-top: 2rem;
    margin-bottom: 1rem;
}

.note-content h1 {
    font-size: 1.8rem;
    border-bottom: 1px solid #e9ecef;
    padding-bottom: 0.5rem;
}

.note-content h2 {
    font-size: 1.4rem;
}

.note-content h3 {
    font-size: 1.2rem;
}

.note-content p {
    margin-bottom: 1rem;
    color: #333;
}

.note-content ul, .note-content ol {
    margin-bottom: 1rem;
    padding-left: 2rem;
}

.note-content li {
    margin-bottom: 0.5rem;
    color: #333;
}

.note-content code {
    background: #e9ecef;
    padding: 0.2rem 0.4rem;
    border-radius: 4px;
    font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
    font-size: 0.9rem;
    color: #333;
}

.note-content pre {
    background: #f8f9fa;
    padding: 1rem;
    border-radius: 8px;
    overflow-x: auto;
    margin: 1rem 0;
    border: 1px solid #e9ecef;
}

.note-content pre code {
    background: none;
    padding: 0;
}

.note-content blockquote {
    border-left: 4px solid #007bff;
    padding-left: 1rem;
    margin: 1rem 0;
    color: #666;
    font-style: italic;
    background: #f8f9fa;
    padding: 1rem;
    border-radius: 4px;
}

.note-content strong {
    color: #333;
    font-weight: 600;
}

.note-content a {
    color: #007bff;
    text-decoration: none;
}

.note-content a:hover {
    text-decoration: underline;
}

.back-link {
    display: inline-block;
    margin-bottom: 2rem;
    color: #007bff;
    text-decoration: none;
    font-weight: 500;
}

.back-link:hover {
    text-decoration: underline;
}

/* Responsive design */
@media (max-width: 768px) {
    .note-title {
        font-size: 2rem;
    }
    
    .note-content {
        padding: 1rem;
    }
    
    .note-tags {
        gap: 0.25rem;
    }
    
    .note-tag {
        font-size: 0.75rem;
        padding: 0.2rem 0.6rem;
    }
}
</style>

<div class="note-header">
    <a href="/notes" class="back-link">← Back to Notes</a>
    
    <h1 class="note-title">$TITLE</h1>
    <p class="note-subtitle">$DESCRIPTION</p>
    <div class="note-tags">
        $TAGS_HTML
    </div>
    <p class="note-date">$DATE</p>
</div>

<div class="note-content">
        <h2>Introduction</h2>
        <p>$DESCRIPTION</p>

        <h2>Main Content</h2>
        <p>Add your content here...</p>

        <h3>Key Points</h3>
        <ul>
            <li><strong>Point 1:</strong> Description</li>
            <li><strong>Point 2:</strong> Description</li>
            <li><strong>Point 3:</strong> Description</li>
        </ul>

        <h3>Code Examples</h3>
        <p>When you need to show code:</p>
        <pre><code>def example_function():
    """This is an example function."""
    return "Hello, World!"</code></pre>

        <h3>Important Notes</h3>
        <blockquote>
            <strong>Note:</strong> Add important information, warnings, or tips here.
        </blockquote>

        <h2>Conclusion</h2>
        <p>Summarize the key takeaways from this note.</p>

        <h2>Related Topics</h2>
        <ul>
            <li><a href="related-note-1.html">Related Note 1</a></li>
            <li><a href="related-note-2.html">Related Note 2</a></li>
        </ul>
    </div>
</div>
EOF

echo "✅ Created note: $FILEPATH"
echo ""
echo "📝 Next steps:"
echo "1. Edit the content in $FILEPATH"
echo "2. Update the navigation in docs/notes.md"
echo "3. Add the note to the appropriate category section"
echo ""
echo "🔗 To add to navigation, add this HTML to docs/notes.md:"
echo "<div class=\"nav-item nav-subitem\">"
echo "    <a href=\"notes/$CATEGORY/$FILENAME.html\" class=\"nav-link\">$TITLE</a>"
echo "</div>"
echo ""
echo "📋 And add this to the notes grid:"
echo "<li><a href=\"notes/$CATEGORY/$FILENAME.html\">$TITLE</a></li>"
