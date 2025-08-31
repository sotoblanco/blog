---
layout: default
title: Home
---

<div class="home-container">
  <div class="profile-section">
    <img src="../images/profile_pic.png" alt="Profile Picture" class="profile-image">
  </div>
  <div class="content-section">
    <h1>Welcome</h1>
    <p class="intro-text">
      I am a Machine Learning Engineer with over 7 years of experience. I have worked in many projects for companies, early start-up and individuals that wanted to pursue data to grow their business. I am currently an independent consultant helping business in AI solutions.
    </p>
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
}
</style>