# Notion-like Notes System Guide

## 🎯 Overview

Your notes system has been transformed into a Notion-like interface with:
- **Hierarchical navigation** with expandable categories
- **Individual note pages** that load content from separate markdown files
- **Breadcrumb navigation** for easy navigation
- **Modern dark theme** with excellent readability
- **Responsive design** that works on all devices

## 📁 File Structure

```
docs/
├── notes.md                    # Main notes interface
├── _notes/                     # All individual note files
│   ├── data-engineering/
│   │   ├── data-pipeline-design.md
│   │   └── docker-best-practices.md
│   ├── ai-engineer/
│   │   └── prompt-engineering.md
│   ├── machine-learning-fundamentals.md
│   ├── example-template.md     # Template for new notes
│   └── README.md              # Documentation
├── add-note.sh                # Script to create new notes
└── NOTES_SYSTEM_GUIDE.md      # This guide
```

## 🚀 How to Add New Notes

### Method 1: Using the Automated Script (Recommended)

```bash
cd docs
./add-note.sh "Your Note Title" "category" "description" "tags"
```

**Example:**
```bash
./add-note.sh "Kubernetes Deployment" "data-engineering" "Kubernetes deployment strategies and best practices" "kubernetes,containers,orchestration"
```

The script will:
- ✅ Create the markdown file with proper front matter
- ✅ Generate a kebab-case filename
- ✅ Create the category directory if needed
- ✅ Show you the HTML to add to navigation

### Method 2: Manual Creation

1. **Create the markdown file** in the appropriate category folder
2. **Add front matter** with required metadata
3. **Write your content** using standard markdown
4. **Update navigation** in `docs/notes.md`

## 📝 Note File Format

Every note file must have this structure:

```markdown
---
layout: default
title: "Your Note Title"
description: "A brief description of what this note covers"
tags: [category, topic, subtopic]
category: your-category
date: 2024-01-01
---

# Your Note Title

## Introduction

Your content here...

## Main Sections

### Subsections

- Bullet points
- More content

## Code Examples

```python
def example():
    return "Hello World"
```

## Important Notes

> **Note**: Use blockquotes for important information.
```

## 🔧 Required Front Matter Fields

| Field | Description | Example |
|-------|-------------|---------|
| `title` | The title of your note | `"Docker Best Practices"` |
| `description` | Brief description for the notes list | `"Essential Docker commands and best practices"` |
| `tags` | Array of tags for categorization | `[docker, containers, devops]` |
| `category` | The category this note belongs to | `data-engineering` |
| `date` | Publication date | `2024-01-01` |

## 📂 Supported Categories

- **data-engineering**: Data pipelines, ETL, infrastructure, DevOps
- **machine-learning-engineer**: ML fundamentals, MLOps, model development
- **ai-engineer**: LLM applications, prompt engineering, AI systems

## 🔗 Updating Navigation

After creating a note file, you need to add it to the navigation in `docs/notes.md`:

### 1. Add to Sidebar Navigation

Find the appropriate category section and add:

```html
<div class="nav-item nav-subitem" data-note="your-note-slug" data-file="_notes/your-category/your-note.md">
    <span class="nav-text">Your Note Title</span>
</div>
```

### 2. Add to Category Table

Update the `getCategoryNotes()` function to include your note:

```javascript
'data-engineering': `
    <tr>
        <td class="note-title">
            <a href="#" class="note-link" data-note="your-note-slug" data-file="_notes/your-category/your-note.md">Your Note Title</a>
        </td>
        <td class="note-description">
            Your note description
        </td>
    </tr>
    // ... other notes
`,
```

## 🎨 Features

### Navigation
- **Expandable Categories**: Click the ▶ icon to expand/collapse
- **Active State**: Selected items are highlighted in blue
- **Breadcrumbs**: Shows current location and allows navigation back

### Content Display
- **Dynamic Loading**: Content loads from markdown files
- **Metadata Display**: Shows tags, dates, and descriptions
- **Markdown Support**: Full markdown rendering with syntax highlighting
- **Responsive Design**: Works on desktop and mobile

### Styling
- **Dark Theme**: Easy on the eyes with excellent contrast
- **Code Highlighting**: Syntax highlighting for code blocks
- **Typography**: Clean, readable fonts and spacing

## 🔍 How It Works

1. **Category View**: Shows all notes in a category as a table
2. **Note Selection**: Click on any note to view its full content
3. **Content Loading**: The system fetches the markdown file and renders it
4. **Navigation**: Use breadcrumbs or sidebar to navigate between views

## 📱 Mobile Support

The system is fully responsive:
- Sidebar collapses on mobile devices
- Touch-friendly navigation
- Readable content on small screens
- Optimized spacing and typography

## 🛠️ Technical Details

- **Frontend**: Pure HTML/CSS/JavaScript (no frameworks)
- **Content**: Markdown files with YAML front matter
- **Styling**: Custom CSS with dark theme
- **Navigation**: Client-side routing with history management

## 🎯 Best Practices

### Content Organization
- Use clear, descriptive titles
- Organize content with headers (H1, H2, H3)
- Include code examples when relevant
- Add tags for easy categorization

### File Management
- Use kebab-case for filenames
- Keep files in appropriate category folders
- Update navigation when adding new notes
- Use the automated script for consistency

### Writing Style
- Start with a clear introduction
- Use bullet points for lists
- Include code examples with syntax highlighting
- Add blockquotes for important notes or warnings

## 🚀 Getting Started

1. **Explore existing notes** to understand the format
2. **Use the template** (`example-template.md`) as a starting point
3. **Run the script** to create your first note
4. **Update navigation** to include your new note
5. **Test the system** by clicking through the interface

## 📚 Examples

See these files for examples:
- `_notes/data-engineering/data-pipeline-design.md` - Complex technical content
- `_notes/ai-engineer/prompt-engineering.md` - Detailed guide with examples
- `_notes/example-template.md` - Template for new notes

## 🆘 Troubleshooting

### Common Issues

1. **Note not appearing**: Check that navigation is updated in `docs/notes.md`
2. **Content not loading**: Verify the file path in the `data-file` attribute
3. **Styling issues**: Ensure the markdown file has proper front matter
4. **Navigation problems**: Check that category names match exactly

### File Paths

Make sure file paths in the `data-file` attribute are correct:
- ✅ `_notes/data-engineering/my-note.md`
- ❌ `notes/data-engineering/my-note.md`

The system is now ready to use! Start by exploring the existing notes and then create your own using the provided tools and templates.
