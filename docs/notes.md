---
layout: default
title: Notes
---

# Notes

<div class="page-content">
    <div class="intro-section">
        <h2>Latest Notes</h2>
        <p>Welcome to my notes where I share insights about Data Engineering, Machine Learning, AI technologies, and best practices.</p>
    </div>

    <div class="notes-list">
        {% if site.notes.size > 0 or site.external_notes.size > 0 %}
            <div class="notes-table">
                <table class="note-table">
                    <tbody>
                        {% comment %} Handle external notes first {% endcomment %}
                        {% if site.external_notes %}
                            {% for note in site.external_notes %}
                            <tr>
                                <td class="note-date">{{ note.date | date: "%b %d, %Y" }}</td>
                                <td class="note-category">{{ note.category }}</td>
                                <td class="note-title">
                                    <a href="{{ note.external_url }}" target="_blank">{{ note.title }}</a>
                                </td>
                            </tr>
                            {% endfor %}
                        {% endif %}
                        {% comment %} Handle internal notes {% endcomment %}
                        {% for note in site.notes %}
                        <tr>
                            <td class="note-date">{{ note.date | date: "%b %d, %Y" }}</td>
                            <td class="note-category">{{ note.category }}</td>
                            <td class="note-title">
                                <a href="{{ note.url | relative_url }}">{{ note.title }}</a>
                            </td>
                        </tr>
                        {% endfor %}
                    </tbody>
                </table>
            </div>
        {% else %}
            <div class="no-notes">
                <h3>Coming Soon!</h3>
                <p>Notes will appear here once you add them to the <code>notes/</code> folder or configure external notes.</p>
                <div class="example-info">
                    <h4>How to add notes:</h4>
                    <ol>
                        <li><strong>Internal Notes:</strong> Create files in <code>docs/notes/</code> with front matter including title, date, and category</li>
                        <li><strong>External Notes:</strong> Add to <code>_config.yml</code> under <code>external_notes:</code></li>
                        <li>Example internal note:
                            <pre><code>---
layout: default
title: "Docker Best Practices"
date: 2024-01-15
category: "Data Engineering"
---

# Docker Best Practices

Your content here...</code></pre>
                        </li>
                        <li>Example external note in <code>_config.yml</code>:
                            <pre><code>external_notes:
  - title: "External Note Title"
    date: 2024-01-15
    category: "Data Engineering"
    external_url: "https://example.com/note"</code></pre>
                        </li>
                    </ol>
                </div>
            </div>
        {% endif %}
    </div>
</div>

<style>
.page-content {
    max-width: 800px;
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
  max-width: 900px;
  margin: 0 auto;
  background: #fafafa;
  border-radius: 12px;
  padding: 1.5rem;
  border: 1px solid #f0f0f0;
}

.note-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
  font-size: 0.95rem;
}

.note-table tbody tr {
  transition: all 0.2s ease;
  border-radius: 8px;
}

.note-table tbody tr:hover {
  background-color: rgba(0, 0, 0, 0.02);
  transform: translateY(-1px);
}

.note-table tbody tr:last-child {
  border-bottom: none;
}

.note-table td {
  padding: 1.2rem 1rem;
  vertical-align: middle;
  border: none;
}

.note-date {
  color: #666;
  font-size: 0.85rem;
  font-weight: 500;
  white-space: nowrap;
  font-family: 'SF Mono', 'Monaco', 'Inconsolata', 'Roboto Mono', monospace;
  width: 100px;
  text-align: left;
  letter-spacing: 0.3px;
}

.note-category {
  color: #888;
  font-size: 0.85rem;
  font-weight: 500;
  white-space: nowrap;
  width: 150px;
  text-align: left;
}

.note-title {
  padding-left: 1.5rem;
}

.note-title a {
  color: #333;
  text-decoration: none;
  font-weight: 500;
  font-size: 1rem;
  line-height: 1.5;
  transition: color 0.2s ease;
  display: block;
}

.note-title a:hover {
  color: #000;
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: 2px;
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
    margin-bottom: 0.5rem;
    color: #555;
}

.example-info pre {
    background: #f1f3f4;
    padding: 1rem;
    border-radius: 4px;
    overflow-x: auto;
    font-size: 0.9rem;
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
    .page-content {
        padding: 1rem;
    }
    
    .intro-section h2 {
        font-size: 1.6rem;
    }
    
    .notes-table {
        padding: 1rem;
    }
    
    .note-table {
        font-size: 0.9rem;
    }
    
    .note-table td {
        padding: 1rem 0.5rem;
    }
    
    .note-date {
        font-size: 0.8rem;
        width: 80px;
    }
    
    .note-category {
        font-size: 0.8rem;
        width: 120px;
    }
    
    .note-title {
        padding-left: 1rem;
    }
    
    .note-title a {
        font-size: 0.9rem;
    }
}
</style>