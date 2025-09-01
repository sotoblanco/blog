#!/bin/bash

# Import Notion HTML Script
# Usage: ./import-notion.sh "Chapter Title" "category" "notion-export.html"

if [ $# -lt 3 ]; then
    echo "Usage: $0 \"Chapter Title\" \"category\" \"notion-export.html\""
    echo "Example: $0 \"Data Pipeline Fundamentals\" \"data-engineering\" \"notion-export.html\""
    exit 1
fi

TITLE="$1"
CATEGORY="$2"
NOTION_FILE="$3"

# Convert title to filename
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-\|-$//g')

# Create category directory if it doesn't exist
mkdir -p "notes/$CATEGORY"

# Create the HTML file
FILEPATH="notes/$CATEGORY/$FILENAME.html"

# Get current date
DATE=$(date +%Y-%m-%d)

# Extract content from Notion HTML (basic extraction)
if [ -f "$NOTION_FILE" ]; then
    echo "Processing Notion export: $NOTION_FILE"
    
    # Extract the main content (this is a basic approach)
    # You might need to adjust based on Notion's HTML structure
    CONTENT=$(grep -A 1000 '<div class="notion-page-content' "$NOTION_FILE" | head -n 1000 || cat "$NOTION_FILE")
    
    # Clean up the content (remove Notion-specific styling)
    CLEAN_CONTENT=$(echo "$CONTENT" | sed 's/<div[^>]*class="[^"]*notion-[^"]*"[^>]*>//g' | sed 's/<\/div>//g' | sed 's/<span[^>]*>//g' | sed 's/<\/span>//g')
    
else
    echo "Warning: Notion export file not found. Creating template instead."
    CLEAN_CONTENT="<h2>Introduction</h2><p>Content from Notion will go here...</p>"
fi

# Create the HTML file with our styling
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

/* Table styling */
.note-content table {
    width: 100%;
    border-collapse: collapse;
    margin: 1.5rem 0;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.note-content table th {
    background: #f8f9fa;
    color: #333;
    font-weight: 600;
    text-align: left;
    padding: 1rem;
    border-bottom: 1px solid #e9ecef;
    font-size: 0.95rem;
}

.note-content table td {
    padding: 1rem;
    border-bottom: 1px solid #f1f3f4;
    color: #333;
    font-size: 0.95rem;
    line-height: 1.5;
}

.note-content table tr:last-child td {
    border-bottom: none;
}

.note-content table tr:hover {
    background: #f8f9fa;
}

.note-content table tbody tr:nth-child(even) {
    background: #fafbfc;
}

.note-content table tbody tr:nth-child(even):hover {
    background: #f1f3f4;
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
    <p class="note-subtitle">Chapter from Data Engineering Notes</p>
    <div class="note-tags">
        <span class="note-tag">$CATEGORY</span>
        <span class="note-tag">CHAPTER</span>
    </div>
    <p class="note-date">$DATE</p>
</div>

<div class="note-content">
$CLEAN_CONTENT
</div>
EOF

echo "✅ Created note from Notion export: $FILEPATH"
echo ""
echo "📝 Next steps:"
echo "1. Review and edit the content in $FILEPATH"
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
echo ""
echo "💡 Tips:"
echo "- You may need to manually clean up the HTML content"
echo "- Remove any Notion-specific styling that doesn't look right"
echo "- Add proper headings and structure if needed"
