#!/bin/bash

# Add Note Script for Notion-like Notes System
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
mkdir -p "_notes/$CATEGORY"

# Create the markdown file
FILEPATH="_notes/$CATEGORY/$FILENAME.md"

# Get current date
DATE=$(date +%Y-%m-%d)

# Create the file with front matter
cat > "$FILEPATH" << EOF
---
layout: default
title: "$TITLE"
description: "$DESCRIPTION"
tags: [$TAGS]
category: $CATEGORY
date: $DATE
---

# $TITLE

## Introduction

$DESCRIPTION

## Main Content

Add your content here...

## Key Points

- Point 1
- Point 2
- Point 3

## Code Examples

\`\`\`bash
# Add your code examples here
echo "Hello World"
\`\`\`

## Important Notes

> **Note**: Add important information, warnings, or tips here.

## Conclusion

Summarize the key takeaways from this note.

## Related Topics

- [Related Note 1](link-to-note)
- [Related Note 2](link-to-note)
EOF

echo "✅ Created note: $FILEPATH"
echo ""
echo "📝 Next steps:"
echo "1. Edit the content in $FILEPATH"
echo "2. Update the navigation in docs/notes.md"
echo "3. Add the note to the appropriate category section"
echo ""
echo "🔗 To add to navigation, add this HTML to docs/notes.md:"
echo "<div class=\"nav-item nav-subitem\" data-note=\"$FILENAME\" data-file=\"_notes/$CATEGORY/$FILENAME.md\">"
echo "    <span class=\"nav-text\">$TITLE</span>"
echo "</div>"
