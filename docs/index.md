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
      I am a <strong>Medical Doctor</strong> and <strong>AI/ML Engineer</strong> based in Mérida, Venezuela. I specialize in bridging the gap between clinical medicine and scalable AI infrastructure, building tools from first principles—starting with the tensors and hospital workflows I live in every day.
    </p>
    <p class="intro-text">
      Currently, I am developing the <strong>Automated Clinical Scribe</strong> to solve clinical documentation burnout and <strong>Code-app</strong> to teach AI engineering by implementation. I help organizations turn complex data into reliable, production-ready healthcare solutions.
    </p>
    <div class="consultation-section">
      <!-- Google Calendar Appointment Scheduling begin -->
      <link rel="preload" href="https://calendar.google.com/calendar/scheduling-button-script.css" as="style">
<link href="https://calendar.google.com/calendar/scheduling-button-script.css" rel="stylesheet">
      <script src="https://calendar.google.com/calendar/scheduling-button-script.js" async></script>
      <div id="calendar-btn-placeholder">
  <button class="consultation-btn" disabled>Loading appointment scheduler...</button>
</div>
<script>
(function() {
  var target = document.currentScript;
  window.addEventListener('load', function() {
    calendar.schedulingButton.load({
      url: 'https://calendar.google.com/calendar/appointments/schedules/AcZssZ1P3R7cPyhp3t2X3ySB0P99XaUGD4NhXQkwGEQ-9VRW_9Ouew3j3AkVwRpOdLYSwxEYlgOnHBaR?gv=true',
      color: '#616161',
      label: 'Book an appointment',
      target,
    });
    // Optionally hide the placeholder after loading
    document.getElementById('calendar-btn-placeholder').style.display = 'none';
  });
})();
</script>
      <!-- end Google Calendar Appointment Scheduling -->
      <p class="consultation-note">15-30 minute meetings available</p>
    </div>
  </div>
</div>

<!-- Latest Content Table -->
<div class="content-table-section">
  <h2>The Engineering Log</h2>
  <div class="table-container">
    <table class="content-table">
      <tbody>
        {% assign all_content = site.posts | concat: site.notes %}
        {% if site.external_posts %}
            {% assign all_content = all_content | concat: site.external_posts %}
        {% endif %}
        {% assign sorted_content = all_content | sort: 'date' | reverse %}
        {% for item in sorted_content limit: 12 %}
        <tr>
          <td class="date-cell">{{ item.date | date: "%b %Y" }}</td>
          <td class="title-cell">
            {% if item.external_url %}
              <a href="{{ item.external_url }}" target="_blank" class="external-link">{{ item.title }} <span class="link-arrow">↗</span></a>
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

<!-- Connect Section -->
<div class="connect-section">
    <h3>Connect with me</h3>
    <a href="https://x.com/PastorSotoB1" target="_blank">X (Twitter)</a> &nbsp;|&nbsp;
    <a href="https://www.linkedin.com/in/pastorsoto/" target="_blank">LinkedIn</a> &nbsp;|&nbsp;
    <a href="https://github.com/sotoblanco" target="_blank">GitHub</a>
</div>
<div class="contact-box">
    <h3>Ask a Question or Send a Message</h3>
    <iframe src="https://forms.gle/crZEndJLzD1eJBsYA" width="100%" height="600" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
</div>

<style>
.home-container {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  margin: 0 auto 4rem;
}

.profile-section {
  margin-bottom: 2rem;
}

.profile-image {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  object-fit: cover;
  filter: grayscale(100%);
  transition: filter 0.3s ease;
}

.profile-image:hover {
  filter: grayscale(0%);
}

.content-section h1 {
  font-size: 2.2rem;
  line-height: 1.1;
  margin-bottom: 2rem;
}

.intro-text {
  font-size: 1.1rem;
  color: var(--text);
  max-width: 650px;
}

.intro-text strong {
  font-weight: 600;
  border-bottom: 1px solid var(--border);
}

/* Engineering Log / Table Styles */
.content-table-section {
  margin-top: 4rem;
}

.content-table-section h2 {
  font-size: 0.8rem;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: var(--text-muted);
  margin-bottom: 2rem;
  border-bottom: 1px solid var(--border);
  padding-bottom: 0.5rem;
}

.table-container {
  background: transparent;
  border-radius: 0;
  padding: 0;
  border: none;
}

.content-table {
  width: 100%;
  border-collapse: collapse;
}

.content-table td {
  padding: 1rem 0;
  border-bottom: 1px solid var(--border);
}

.date-cell {
  font-family: var(--font-mono);
  font-size: 0.75rem;
  color: var(--text-muted);
  width: 100px;
}

.title-cell a {
  font-size: 0.95rem;
  font-weight: 400;
  color: var(--text);
  text-decoration: none;
  display: inline-block;
}

.title-cell a:hover {
  text-decoration: underline;
}

.link-arrow {
  font-size: 0.7rem;
  margin-left: 4px;
  vertical-align: middle;
}

.table-footer {
  margin-top: 2rem;
  display: flex;
  gap: 1rem;
  font-size: 0.8rem;
}

.view-all-link {
  color: var(--text-muted);
  text-decoration: none;
  border-bottom: 1px solid transparent;
}

.view-all-link:hover {
  color: var(--text);
  border-bottom: 1px solid var(--text);
}

/* Remove old components */
.consultation-section, .contact-box, .connect-section {
    display: none;
}

@media (max-width: 768px) {
  .content-section h1 { font-size: 1.8rem; }
}
</style>