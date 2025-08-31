---
layout: default
title: Blog
---

# Blog

<div class="page-content">
    <div class="intro-section">
        <h2>Latest Posts</h2>
        <p>Welcome to my blog where I share insights about Machine Learning, AI technologies, and data science best practices.</p>
    </div>

    <div class="posts-list">
        {% if site.posts.size > 0 %}
            {% for post in site.posts %}
            <article class="post-item">
                <div class="post-header">
                    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
                    <p class="post-date">{{ post.date | date: "%B %d, %Y" }}</p>
                </div>
                <div class="post-content">
                    {% if post.excerpt %}
                        <p>{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
                    {% else %}
                        <p>{{ post.content | strip_html | truncatewords: 30 }}</p>
                    {% endif %}
                </div>
                <div class="post-meta">
                    {% if post.tags %}
                        {% for tag in post.tags %}
                            <span class="post-tag">{{ tag }}</span>
                        {% endfor %}
                    {% endif %}
                </div>
            </article>
            {% endfor %}
        {% else %}
            <div class="no-posts">
                <h3>Coming Soon!</h3>
                <p>Blog posts will appear here once you add them to the <code>_posts/</code> folder.</p>
                <div class="example-info">
                    <h4>How to add a blog post:</h4>
                    <ol>
                        <li>Create a file in <code>docs/_posts/</code> with format: <code>YYYY-MM-DD-title.md</code></li>
                        <li>Example: <code>2024-01-15-ai-in-action.md</code></li>
                        <li>Start your file with:
                            <pre><code>---
layout: default
title: "AI in Action"
date: 2024-01-15
tags: [machine-learning, ai]
---

# AI in Action

Your content here...</code></pre>
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
    font-size: 2.5rem;
    margin-bottom: 1rem;
}

.intro-section p {
    font-size: 1.2rem;
    color: #666;
    line-height: 1.6;
}

.posts-list {
    display: flex;
    flex-direction: column;
    gap: 2rem;
}

.post-item {
    background: #f8f9fa;
    padding: 2rem;
    border-radius: 10px;
    border-left: 4px solid #007bff;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.post-item:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.post-header h3 {
    margin: 0 0 0.5rem 0;
}

.post-header h3 a {
    color: #333;
    text-decoration: none;
    font-size: 1.4rem;
}

.post-header h3 a:hover {
    color: #007bff;
}

.post-date {
    color: #007bff;
    font-size: 0.9rem;
    font-weight: 600;
    margin: 0 0 1rem 0;
}

.post-content p {
    color: #555;
    line-height: 1.6;
    margin-bottom: 1rem;
}

.post-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
}

.post-tag {
    background: #007bff;
    color: white;
    padding: 0.3rem 0.8rem;
    border-radius: 15px;
    font-size: 0.8rem;
    font-weight: 500;
}

.no-posts {
    text-align: center;
    padding: 3rem 2rem;
    background: #f8f9fa;
    border-radius: 10px;
}

.no-posts h3 {
    color: #333;
    margin-bottom: 1rem;
}

.example-info {
    text-align: left;
    max-width: 500px;
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
</style>