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
        {% if site.posts.size > 0 or site.external_posts.size > 0 %}
            <div class="posts-table">
                <table class="post-table">
                    <tbody>
                        {% comment %} Handle external posts first {% endcomment %}
                        {% if site.external_posts %}
                            {% for post in site.external_posts %}
                            <tr>
                                <td class="post-date">{{ post.date | date: "%b %d, %Y" }}</td>
                                <td class="post-title">
                                    <a href="{{ post.external_url }}" target="_blank">{{ post.title }}</a>
                                </td>
                            </tr>
                            {% endfor %}
                        {% endif %}
                        {% comment %} Handle internal posts {% endcomment %}
                        {% for post in site.posts %}
                        <tr>
                            <td class="post-date">{{ post.date | date: "%b %d, %Y" }}</td>
                            <td class="post-title">
                                <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
                            </td>
                        </tr>
                        {% endfor %}
                    </tbody>
                </table>
            </div>
        {% else %}
            <div class="no-posts">
                <h3>Coming Soon!</h3>
                <p>Blog posts will appear here once you add them to the <code>_posts/</code> folder.</p>
            </div>
        {% endif %}
    </div>

    <div class="videos-section">
      <h2>Videos</h2>
      <p class="videos-intro">Selected talks and walkthroughs. Click a title to open the video in a new tab.</p>
      <ul class="video-list">
        <!-- Replace these sample items with your actual video titles and URLs -->
        <li class="video-item">
          <a class="video-link" href="https://www.youtube.com/watch?v=zk0Xpf2SHPU&t" target="_blank" rel="noopener">Talk — How InternVL3.5 Decouples Vision and Language for Efficiency </a>
          <span class="video-meta">— 60 min</span>
        </li>
        <li class="video-item">
          <a class="video-link" href="https://www.youtube.com/watch?v=5km62e4nDaw&t" target="_blank" rel="noopener">Podcast — From Medicine to Machine Learning: How Public Learning Turned into a Career </a>
          <span class="video-meta">— 61 min</span>
        </li>
        <!-- Add more items as needed -->
      </ul>
    </div>
</div>

<style>
.page-content {
    max-width: 600px;
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

.connect-section {
    margin-top: 1.5rem;
    font-size: 1.05rem;
    text-align: center;
}

.connect-section h3 {
    margin-bottom: 0.5rem;
    color: #333;
    font-weight: 500;
}

.connect-section a {
    color: #0077b5;
    text-decoration: none;
    font-weight: 500;
    margin: 0 0.5rem;
    transition: color 0.2s;
}

.connect-section a:hover {
    color: #005582;
    text-decoration: underline;
}

.posts-table {
  max-width: 700px;
  margin: 0 auto;
  background: #fafafa;
  border-radius: 12px;
  padding: 1.5rem;
  border: 1px solid #f0f0f0;
}

.post-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
  font-size: 0.95rem;
}

.post-table tbody tr {
  transition: all 0.2s ease;
  border-radius: 8px;
}

.post-table tbody tr:hover {
  background-color: rgba(0, 0, 0, 0.02);
  transform: translateY(-1px);
}

.post-table tbody tr:last-child {
  border-bottom: none;
}

.post-table td {
  padding: 1.2rem 1rem;
  vertical-align: middle;
  border: none;
}

.post-date {
  color: #666;
  font-size: 0.85rem;
  font-weight: 500;
  white-space: nowrap;
  font-family: 'SF Mono', 'Monaco', 'Inconsolata', 'Roboto Mono', monospace;
  width: 100px;
  text-align: left;
  letter-spacing: 0.3px;
}

.post-title {
  padding-left: 1.5rem;
}

.post-title a {
  color: #333;
  text-decoration: none;
  font-weight: 500;
  font-size: 1rem;
  line-height: 1.5;
  transition: color 0.2s ease;
  display: block;
}

.post-title a:hover {
  color: #000;
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: 2px;
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

.contact-box {
    margin: 2rem auto 0;
    padding: 1.5rem;
    background: #f8f9fa;
    border-radius: 10px;
    max-width: 600px;
    text-align: center;
}

.contact-box h3 {
    margin-bottom: 1rem;
    color: #333;
    font-weight: 500;
}

.contact-box iframe {
    border-radius: 8px;
    border: 1px solid #e9ecef;
    background: white;
}

.videos-section {
  max-width: 900px;
  margin: 2.5rem auto;
  padding: 0 1rem;
  text-align: left;
}

.videos-section h2 {
  color: #333;
  margin-bottom: 0.5rem;
}

.videos-intro {
  color: #666;
  margin-bottom: 0.75rem;
  font-size: 0.95rem;
}

.video-list {
  list-style: none;
  margin: 0;
  padding: 0;
  border-radius: 8px;
  background: #fafafa;
  border: 1px solid #f0f0f0;
}

.video-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0.75rem 1rem;
  border-bottom: 1px solid #f0f0f0;
}

.video-item:last-child {
  border-bottom: none;
}

.video-link {
  color: #333;
  text-decoration: none;
  font-weight: 500;
}

.video-link:hover {
  color: #000;
  text-decoration: underline;
}

.video-meta {
  color: #666;
  font-size: 0.9rem;
  margin-left: 1rem;
  white-space: nowrap;
}

/* small screens tweak */
@media (max-width: 480px) {
  .videos-section { padding: 0; }
  .video-item { flex-direction: column; align-items: flex-start; gap: 0.5rem; }
  .video-meta { margin-left: 0; }
}

@media (max-width: 768px) {
    .page-content {
        padding: 1rem;
    }
    
    .intro-section h2 {
        font-size: 1.6rem;
    }
    
    .posts-table {
        padding: 1rem;
    }
    
    .post-table {
        font-size: 0.9rem;
    }
    
    .post-table td {
        padding: 1rem 0.5rem;
    }
    
    .post-date {
        font-size: 0.8rem;
        width: 80px;
    }
    
    .post-title {
        padding-left: 1rem;
    }
    
    .post-title a {
        font-size: 0.9rem;
    }
}
</style>