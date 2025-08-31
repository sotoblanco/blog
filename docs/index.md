---
layout: default
title: Home
---

<div class="home-container">
  <div class="profile-section">
    <img src="images/profile_pic.png" alt="Profile Picture" class="profile-image">
  </div>
  <div class="content-section">
    <h1>Welcome</h1>
    <p class="intro-text">
      I am a Machine Learning Engineer with over 7 years of experience. I have worked in many projects for companies, early start-up and individuals that wanted to pursue data to grow their business. I am currently an independent consultant helping business in AI solutions.
    </p>
  </div>
</div>

<!-- Latest Content Table -->
<div class="content-table-section">
  <h2>Latest Content</h2>
  <div class="table-container">
    <table class="content-table">
      <thead>
        <tr>
          <th>Title</th>
          <th>Type</th>
          <th>Date</th>
          <th>Tags</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        {% assign all_content = site.posts | concat: site.notes | sort: 'date' | reverse %}
        {% for item in all_content limit: 10 %}
        <tr>
          <td class="title-cell">
            <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
          </td>
          <td class="type-cell">
            {% if item.collection == 'posts' %}
              <span class="content-type post-type">Blog Post</span>
            {% else %}
              <span class="content-type note-type">Note</span>
            {% endif %}
          </td>
          <td class="date-cell">
            {{ item.date | date: "%b %d, %Y" }}
          </td>
          <td class="tags-cell">
            {% if item.tags %}
              {% for tag in item.tags limit: 3 %}
                <span class="tag">{{ tag }}</span>
              {% endfor %}
              {% if item.tags.size > 3 %}
                <span class="tag-more">+{{ item.tags.size | minus: 3 }}</span>
              {% endif %}
            {% else %}
              <span class="no-tags">—</span>
            {% endif %}
          </td>
          <td class="description-cell">
            {% if item.excerpt %}
              {{ item.excerpt | strip_html | truncatewords: 15 }}
            {% elsif item.description %}
              {{ item.description | truncatewords: 15 }}
            {% else %}
              {{ item.content | strip_html | truncatewords: 15 }}
            {% endif %}
          </td>
        </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
  
  <div class="table-footer">
    <a href="{{ '/blog' | relative_url }}" class="view-all-link">View All Blog Posts →</a>
    <a href="{{ '/notes' | relative_url }}" class="view-all-link">View All Notes →</a>
  </div>
</div>

<style>
.home-container {
  display: flex;
  align-items: center;
  gap: 2rem;
  max-width: 1200px;
  margin: 2rem auto;
  padding: 2rem;
}

.profile-section {
  flex: 0 0 300px;
}

.profile-image {
  width: 100%;
  max-width: 300px;
  height: auto;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.content-section {
  flex: 1;
  padding-left: 2rem;
}

.content-section h1 {
  color: #333;
  font-size: 2.5rem;
  margin-bottom: 1rem;
  font-weight: 600;
}

.intro-text {
  font-size: 1.2rem;
  line-height: 1.6;
  color: #555;
  margin: 0;
}

/* Content Table Styles */
.content-table-section {
  max-width: 1200px;
  margin: 3rem auto 2rem;
  padding: 0 2rem;
}

.content-table-section h2 {
  color: #333;
  font-size: 2rem;
  margin-bottom: 1.5rem;
  text-align: center;
  font-weight: 600;
}

.table-container {
  overflow-x: auto;
  background: white;
  border-radius: 10px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  margin-bottom: 2rem;
}

.content-table {
  width: 100%;
  border-collapse: collapse;
  font-size: 0.95rem;
}

.content-table thead {
  background: linear-gradient(135deg, #007bff, #0056b3);
  color: white;
}

.content-table th {
  padding: 1rem 0.8rem;
  text-align: left;
  font-weight: 600;
  text-transform: uppercase;
  font-size: 0.85rem;
  letter-spacing: 0.5px;
}

.content-table tbody tr {
  border-bottom: 1px solid #e9ecef;
  transition: background-color 0.2s ease;
}

.content-table tbody tr:hover {
  background-color: #f8f9fa;
}

.content-table tbody tr:last-child {
  border-bottom: none;
}

.content-table td {
  padding: 1rem 0.8rem;
  vertical-align: top;
}

.title-cell a {
  color: #333;
  text-decoration: none;
  font-weight: 600;
  font-size: 1rem;
  line-height: 1.4;
}

.title-cell a:hover {
  color: #007bff;
}

.type-cell {
  white-space: nowrap;
}

.content-type {
  padding: 0.4rem 0.8rem;
  border-radius: 20px;
  font-size: 0.8rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.post-type {
  background: #e3f2fd;
  color: #1976d2;
}

.note-type {
  background: #f3e5f5;
  color: #7b1fa2;
}

.date-cell {
  color: #666;
  font-size: 0.9rem;
  white-space: nowrap;
}

.tags-cell {
  min-width: 150px;
}

.tag {
  display: inline-block;
  background: #007bff;
  color: white;
  padding: 0.2rem 0.6rem;
  border-radius: 12px;
  font-size: 0.75rem;
  font-weight: 500;
  margin: 0.1rem 0.2rem 0.1rem 0;
  white-space: nowrap;
}

.tag-more {
  display: inline-block;
  background: #6c757d;
  color: white;
  padding: 0.2rem 0.5rem;
  border-radius: 12px;
  font-size: 0.75rem;
  font-weight: 500;
  margin: 0.1rem 0.2rem 0.1rem 0;
}

.no-tags {
  color: #999;
  font-style: italic;
}

.description-cell {
  color: #555;
  line-height: 1.5;
  max-width: 300px;
}

.table-footer {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin-top: 1.5rem;
}

.view-all-link {
  color: #007bff;
  text-decoration: none;
  font-weight: 600;
  padding: 0.5rem 1rem;
  border: 2px solid #007bff;
  border-radius: 25px;
  transition: all 0.2s ease;
}

.view-all-link:hover {
  background: #007bff;
  color: white;
  transform: translateY(-1px);
}

/* Responsive design */
@media (max-width: 768px) {
  .home-container {
    flex-direction: column;
    text-align: center;
    padding: 1rem;
  }
  
  .profile-section {
    flex: none;
  }
  
  .content-section {
    padding-left: 0;
    padding-top: 1rem;
  }
  
  .content-section h1 {
    font-size: 2rem;
  }
  
  .intro-text {
    font-size: 1.1rem;
  }
  
  .content-table-section {
    padding: 0 1rem;
  }
  
  .content-table-section h2 {
    font-size: 1.5rem;
  }
  
  .content-table {
    font-size: 0.85rem;
  }
  
  .content-table th,
  .content-table td {
    padding: 0.6rem 0.4rem;
  }
  
  .description-cell {
    display: none;
  }
  
  .content-table th:last-child,
  .content-table td:last-child {
    display: none;
  }
  
  .table-footer {
    flex-direction: column;
    gap: 1rem;
  }
  
  .view-all-link {
    display: block;
    text-align: center;
  }
}

@media (max-width: 480px) {
  .tags-cell {
    min-width: auto;
  }
  
  .tag {
    font-size: 0.7rem;
    padding: 0.15rem 0.4rem;
  }
  
  .content-table th:nth-child(4),
  .content-table td:nth-child(4) {
    display: none;
  }
}
</style>