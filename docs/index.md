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
      As a Machine Learning Engineer with 7+ years of experience, I love helping companies find opportunities in their data. I've worked with startups, established businesses, and entrepreneurs to turn their information into business value. Currently, I'm working as an independent consultant, building custom AI tools that solve real-world problems.
    </p>
    <div class="consultation-section">
      <a href="https://cal.com/pastorsoto" target="_blank" class="consultation-btn">
        Schedule a call
      </a>
      <p class="consultation-note">15-30 minute meetings available</p>
    </div>
  </div>
</div>

<!-- Latest Content Table -->
<div class="content-table-section">
  <h2>Latest Content</h2>
  <div class="table-container">
    <table class="content-table">
      <tbody>
        {% comment %} Handle external posts first {% endcomment %}
        {% if site.external_posts %}
            {% for post in site.external_posts limit: 8 %}
            <tr>
                <td class="date-cell">{{ post.date | date: "%b %d, %Y" }}</td>
                <td class="title-cell">
                    <a href="{{ post.external_url }}" target="_blank">{{ post.title }}</a>
                </td>
            </tr>
            {% endfor %}
        {% endif %}
        {% comment %} Handle internal posts and notes {% endcomment %}
        {% assign all_content = site.posts | concat: site.notes %}
        {% assign sorted_content = all_content | sort: 'date' | reverse %}
        {% for item in sorted_content limit: 8 %}
        <tr>
          <td class="date-cell">{{ item.date | date: "%b %d, %Y" }}</td>
          <td class="title-cell">
            {% if item.external_url %}
              <a href="{{ item.external_url }}" target="_blank">{{ item.title }}</a>
            {% else %}
              <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
            {% endif %}
          </td>
        </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
  
  <div class="table-footer">
    <a href="{{ '/blog' | relative_url }}" class="view-all-link">Blog</a>
    <span class="separator">•</span>
    <a href="{{ '/notes' | relative_url }}" class="view-all-link">Notes</a>
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
  margin: 0 0 2rem 0;
}

.consultation-section {
  margin-top: 2rem;
}

.consultation-btn {
  display: inline-block;
  background: #333;
  color: white;
  text-decoration: none;
  padding: 0.8rem 2rem;
  font-size: 1rem;
  font-weight: 400;
  letter-spacing: 0.5px;
  border: 2px solid #333;
  transition: all 0.3s ease;
  margin-bottom: 0.5rem;
}

.consultation-btn:hover {
  background: transparent;
  color: #333;
}

.consultation-note {
  font-size: 0.9rem;
  color: #666;
  margin: 0.5rem 0 0 0;
  font-style: italic;
}

/* Content Table Styles - Improved Minimalist Design */
.content-table-section {
  max-width: 700px;
  margin: 4rem auto 2rem;
  padding: 0 2rem;
}

.content-table-section h2 {
  color: #333;
  font-size: 1.5rem;
  margin-bottom: 2rem;
  text-align: center;
  font-weight: 400;
  letter-spacing: 0.5px;
}

.table-container {
  background: #fafafa;
  border-radius: 12px;
  padding: 1.5rem;
  margin-bottom: 2rem;
  border: 1px solid #f0f0f0;
}

.content-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
  font-size: 0.95rem;
  background: transparent;
}

.content-table tbody tr {
  transition: all 0.2s ease;
  border-radius: 8px;
}

.content-table tbody tr:hover {
  background-color: rgba(0, 0, 0, 0.02);
  transform: translateY(-1px);
}

.content-table td {
  padding: 1.2rem 1rem;
  vertical-align: middle;
  border: none;
}

.date-cell {
  color: #666;
  font-size: 0.85rem;
  font-weight: 500;
  white-space: nowrap;
  font-family: 'SF Mono', 'Monaco', 'Inconsolata', 'Roboto Mono', monospace;
  width: 100px;
  text-align: left;
  letter-spacing: 0.3px;
}

.title-cell {
  padding-left: 1.5rem;
}

.title-cell a {
  color: #333;
  text-decoration: none;
  font-weight: 500;
  font-size: 1rem;
  line-height: 1.5;
  transition: color 0.2s ease;
  display: block;
}

.title-cell a:hover {
  color: #000;
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: 2px;
}

.table-footer {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1rem;
  margin-top: 2rem;
  padding-top: 1.5rem;
  border-top: 1px solid #f0f0f0;
}

.view-all-link {
  color: #666;
  text-decoration: none;
  font-weight: 400;
  font-size: 0.9rem;
  letter-spacing: 0.5px;
  transition: color 0.2s ease;
}

.view-all-link:hover {
  color: #333;
}

.separator {
  color: #ccc;
  font-size: 0.8rem;
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
  
  .consultation-btn {
    display: block;
    text-align: center;
    width: 100%;
    max-width: 300px;
    margin: 0 auto 0.5rem auto;
  }
  
  .content-table-section {
    padding: 0 1rem;
    margin: 3rem auto 2rem;
  }
  
  .table-container {
    padding: 1rem;
  }
  
  .content-table-section h2 {
    font-size: 1.3rem;
  }
  
  .content-table {
    font-size: 0.9rem;
  }
  
  .content-table td {
    padding: 1rem 0.5rem;
  }
  
  .date-cell {
    font-size: 0.8rem;
    width: 80px;
  }
  
  .title-cell {
    padding-left: 1rem;
  }
  
  .title-cell a {
    font-size: 0.9rem;
  }
}
</style>