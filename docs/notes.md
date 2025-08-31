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
            <div class="notes-list">
                {% for note in site.notes %}
                <div class="note-item">
                    <h3><a href="{{ note.url | relative_url }}">{{ note.title }}</a></h3>
                    {% if note.description %}
                        <p class="note-description">{{ note.description }}</p>
                    {% else %}
                        <p class="note-description">{{ note.content | strip_html | truncatewords: 20 }}</p>
                    {% endif %}
                    {% if note.tags %}
                        <div class="note-tags">
                            {% for tag in note.tags %}
                                <span class="note-tag">{{ tag }}</span>
                            {% endfor %}
                        </div>
                    {% endif %}
                    <div class="note-meta">
                        {% if note.date %}
                            <span class="note-date">{{ note.date | date: "%B %Y" }}</span>
                        {% endif %}
                    </div>
                </div>
                {% endfor %}
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
    max-width: 1000px;
    margin: 0 auto;
    padding: 2rem 1rem;
}

.intro-section {
    text-align: center;
    margin-bottom: 3rem;
}

.intro-section h2 {
    color: #333;
    font-size: 2.5rem;
    margin-bottom: 1rem;
}

.intro-section p {
    font-size: 1.2rem;
    color: #666;
    line-height: 1.6;
}

.notes-list {
    display: grid;
    gap: 1.5rem;
    grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
}

.note-item {
    background: white;
    border: 1px solid #e9ecef;
    border-radius: 10px;
    padding: 1.5rem;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.note-item:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 20px rgba(0,0,0,0.1);
}

.note-item h3 {
    margin: 0 0 1rem 0;
}

.note-item h3 a {
    color: #333;
    text-decoration: none;
    font-size: 1.2rem;
    font-weight: 600;
}

.note-item h3 a:hover {
    color: #007bff;
}

.note-description {
    color: #666;
    line-height: 1.5;
    margin-bottom: 1rem;
    font-size: 0.95rem;
}

.note-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.4rem;
    margin-bottom: 1rem;
}

.note-tag {
    background: #e3f2fd;
    color: #1976d2;
    padding: 0.2rem 0.6rem;
    border-radius: 12px;
    font-size: 0.75rem;
    font-weight: 500;
}

.note-meta {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    border-top: 1px solid #f1f3f4;
    padding-top: 0.8rem;
}

.note-date {
    color: #999;
    font-size: 0.8rem;
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
</style>