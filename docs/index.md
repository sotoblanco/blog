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
    <div class="consultation-section">
      <a href="https://cal.com/pastorsoto" target="_blank" class="consultation-btn">
        Book a Consultation
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
      <thead>
        <tr>
          <th>Date</th>
          <th>Title</th>
        </tr>
      </thead>
      <tbody>
        {% assign all_content = site.posts | concat: site.notes | sort: 'date' | reverse %}
        {% for item in all_content limit: 10 %}
        <tr>
          <td class="date-cell">
            {{ item.date | date: "%b %d, %Y" }}
          </td>
          <td class="title-cell">
            <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
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

/* Content Table Styles - Minimalist Design */
.content-table-section {
  max-width: 800px;
  margin: 3rem auto 2rem;
  padding: 0 2rem;
}

.content-table-section h2 {
  color: #333;
  font-size: 1.8rem;
  margin-bottom: 2rem;
  text-align: center;
  font-weight: 400;
  letter-spacing: 0.5px;
}

.table-container {
  background: transparent;
  margin-bottom: 2rem;
}

.content-table {
  width: 100%;
  border-collapse: collapse;
  font-size: 1rem;
  background: transparent;
}

.content-table thead {
  border-bottom: 2px solid #333;
}

.content-table th {
  padding: 1rem 0;
  text-align: left;
  font-weight: 500;
  font-size: 0.9rem;
  color: #333;
  text-transform: uppercase;
  letter-spacing: 1px;
  border: none;
}

.content-table th:first-child {
  width: 120px;
}

.content-table tbody tr {
  border-bottom: 1px solid #eee;
  transition: all 0.2s ease;
}

.content-table tbody tr:hover {
  background-color: rgba(0, 0, 0, 0.02);
}

.content-table tbody tr:last-child {
  border-bottom: none;
}

.content-table td {
  padding: 1.2rem 0;
  vertical-align: middle;
  border: none;
}

.date-cell {
  color: #666;
  font-size: 0.9rem;
  font-weight: 400;
  white-space: nowrap;
  font-family: 'Courier New', monospace;
}

.title-cell a {
  color: #333;
  text-decoration: none;
  font-weight: 400;
  font-size: 1rem;
  line-height: 1.4;
  transition: color 0.2s ease;
}

.title-cell a:hover {
  color: #000;
}

.table-footer {
  display: flex;
  justify-content: center;
  gap: 3rem;
  margin-top: 2rem;
  padding-top: 2rem;
  border-top: 1px solid #eee;
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
  }
  
  .content-table-section h2 {
    font-size: 1.5rem;
  }
  
  .content-table {
    font-size: 0.9rem;
  }
  
  .content-table td {
    padding: 1rem 0;
  }
  
  .content-table th:first-child {
    width: 100px;
  }
  
  .date-cell {
    font-size: 0.8rem;
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
</style>