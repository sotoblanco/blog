# Notes System Guide

This directory contains all the individual note files for the Notion-like notes system.

## File Structure

```
_notes/
├── data-engineering/
│   └── data-pipeline-design.md
├── ai-engineer/
│   └── prompt-engineering.md
├── machine-learning-fundamentals.md
└── example-template.md
```

## How to Add New Notes

### 1. Create a New Markdown File

Create a new `.md` file in the appropriate category folder (or in the root `_notes/` directory for general notes).

### 2. Use the Required Front Matter

Every note file must start with front matter that includes:

```yaml
---
layout: default
title: "Your Note Title"
description: "A brief description of what this note covers"
tags: [category, topic, subtopic]
category: your-category
date: 2024-01-01
---
```

**Required Fields:**
- `title`: The title of your note
- `description`: A brief description that appears in the notes list
- `tags`: Array of tags for categorization (displayed as badges)
- `category`: The category this note belongs to
- `date`: Publication date

### 3. Write Your Content

After the front matter, write your note content using standard Markdown:

```markdown
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

### 4. Update the Navigation

After creating your note file, you need to update the navigation in `docs/notes.md`:

1. Add a new nav item in the appropriate category section
2. Update the `data-file` attribute to point to your new file
3. Add the note to the category's notes table

Example:
```html
<div class="nav-item nav-subitem" data-note="your-note-slug" data-file="_notes/your-category/your-note.md">
    <span class="nav-text">Your Note Title</span>
</div>
```

## Categories

The system currently supports these categories:

- **data-engineering**: Data pipelines, ETL, infrastructure
- **machine-learning-engineer**: ML fundamentals, MLOps, model development
- **ai-engineer**: LLM applications, prompt engineering, AI systems

## File Naming Convention

- Use kebab-case for filenames: `my-note-title.md`
- Keep names descriptive but concise
- Avoid spaces and special characters

## Content Guidelines

- Start with a clear introduction
- Use headers to organize content hierarchically
- Include code examples when relevant
- Use bullet points for lists
- Add blockquotes for important notes or warnings
- Include links to related topics when possible

## Example

See `example-template.md` for a complete example of a properly formatted note.
