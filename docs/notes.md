---
layout: default
title: Notes
---

# Technical Notes

<div class="notes-container">
    <div class="intro-section">
        <h2>Learning & Reference Notes</h2>
        <p>Quick reference guides, code snippets, and technical documentation from my work and research.</p>
    </div>

    <div class="notes-content">
        {% if site.notes.size > 0 %}
            <div class="notes-table">
                <table class="note-table">
                    <tbody>
                        {% for note in site.notes %}
                        <tr>
                            <td class="note-title">
                                <a href="{{ note.url | relative_url }}">{{ note.title }}</a>
                            </td>
                            <td class="note-description">
                                {% if note.description %}
                                    {{ note.description }}
                                {% else %}
                                    {{ note.content | strip_html | truncatewords: 15 }}
                                {% endif %}
                            </td>
                        </tr>
                        {% endfor %}
                    </tbody>
                </table>
            </div>
        {% else %}
            <div class="no-notes">
                <h3>Coming Soon!</h3>
                <p>Technical notes will appear here once you add them to the <code>_notes/</code> folder.</p>
                <div class="example-info">
                    <h4>How to add a note:</h4>
                    <ol>
                        <li>Create a file in <code>docs/_notes/</code> with any name: <code>ai-in-action.md</code></li>
                        <li>Start your file with:
                            <pre><code>---
layout: default
title: "AI in Action"
description: "Understanding AI implementation in real-world scenarios"
tags: [ai, machine-learning, implementation]
date: 2024-01-15
---

# AI in Action

Your technical content here...</code></pre>
                        </li>
                        <li>The title from the front matter will appear in the index</li>
                        <li>Use tags to categorize your notes</li>
                    </ol>
                </div>
            </div>
        {% endif %}
    </div>
</div>

<style>
.notes-container {
    max-width: 700px;
    margin: 0 auto;
    padding: 2rem 1rem;
}

.intro-section {
    text-align: center;
    margin-bottom: 3rem;
}

.intro-section h2 {
    color: #333;
    font-size: 1.8rem;
    margin-bottom: 1rem;
    font-weight: 400;
}

.intro-section p {
    font-size: 1rem;
    color: #666;
    line-height: 1.6;
}

.notes-table {
    max-width: 600px;
    margin: 0 auto;
}

.note-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.95rem;
}

.note-table tbody tr {
    border-bottom: 1px solid #f0f0f0;
    transition: all 0.2s ease;
}

.note-table tbody tr:hover {
    background-color: rgba(0, 0, 0, 0.01);
}

.note-table tbody tr:last-child {
    border-bottom: none;
}

.note-table td {
    padding: 1rem 0;
    vertical-align: top;
    border: none;
}

.note-title {
    color: #333;
    font-weight: 500;
    font-size: 1rem;
    width: 40%;
    padding-right: 2rem;
}

.note-title a {
    color: #333;
    text-decoration: none;
    transition: color 0.2s ease;
}

.note-title a:hover {
    color: #000;
}

.note-description {
    color: #666;
    line-height: 1.5;
    font-size: 0.9rem;
}

.no-notes {
    text-align: center;
    padding: 3rem 2rem;
    background: #f8f9fa;
    border-radius: 10px;
}

.no-notes h3 {
    color: #333;
    margin-bottom: 1rem;
}

.example-info {
    text-align: left;
    max-width: 600px;
    margin: 2rem auto 0;
    padding: 1.5rem;
    background: white;
    border-radius: 8px;
    border: 1px solid #e9ecef;
}

.example-info h4 {
    color: #333;
    margin-bottom: 1rem;
}

.example-info ol {
    margin-bottom: 1rem;
}

.example-info li {
    margin-bottom: 0.8rem;
    color: #555;
}

.example-info pre {
    background: #f1f3f4;
    padding: 1rem;
    border-radius: 4px;
    overflow-x: auto;
    font-size: 0.85rem;
    margin: 0.5rem 0;
}

.example-info code {
    background: #f1f3f4;
    padding: 0.2rem 0.4rem;
    border-radius: 3px;
    font-size: 0.9rem;
}

.example-info pre code {
    background: none;
    padding: 0;
}

@media (max-width: 768px) {
    .notes-container {
        padding: 1rem;
    }
    
    .intro-section h2 {
        font-size: 1.6rem;
    }
    
    .note-table {
        font-size: 0.9rem;
    }
    
    .note-table td {
        padding: 0.8rem 0;
    }
    
    .note-title {
        width: 45%;
        padding-right: 1rem;
        font-size: 0.9rem;
    }
    
    .note-description {
        font-size: 0.85rem;
    }
}
</style>