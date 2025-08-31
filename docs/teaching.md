---
layout: default
title: Teaching
---

# Teaching & Training

<div class="teaching-container">
    <div class="intro-section">
        <h2>Empowering Others Through Education</h2>
        <p>I'm passionate about sharing knowledge and helping others master machine learning and data science concepts through practical, hands-on learning.</p>
    </div>

    <div class="offerings-section">
        <h3>What I Offer</h3>
        
        <div class="offerings-table">
            <table class="offering-table">
                <tbody>
                    <tr>
                        <td class="offering-name">One-on-One Mentoring</td>
                        <td class="offering-description">Personalized guidance for individuals looking to break into ML/AI or advance their existing skills. Tailored learning paths based on your goals.</td>
                    </tr>
                    <tr>
                        <td class="offering-name">Corporate Training</td>
                        <td class="offering-description">Comprehensive ML/AI training programs for teams and organizations. From fundamentals to advanced topics, customized to your industry needs.</td>
                    </tr>
                    <tr>
                        <td class="offering-name">Workshop & Bootcamps</td>
                        <td class="offering-description">Intensive learning sessions covering specific ML topics. Perfect for quick skill building and staying updated with latest technologies.</td>
                    </tr>
                    <tr>
                        <td class="offering-name">Online Courses</td>
                        <td class="offering-description">Self-paced learning materials and video courses covering machine learning fundamentals to advanced topics.</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="topics-section">
        <h3>Topics I Cover</h3>
        <div class="topics-table">
            <table class="topic-table">
                <tbody>
                    <tr>
                        <td class="topic-category">Machine Learning Fundamentals</td>
                        <td class="topic-list">Supervised & Unsupervised Learning, Model Selection & Evaluation, Feature Engineering, Cross-validation & Hyperparameter Tuning</td>
                    </tr>
                    <tr>
                        <td class="topic-category">Deep Learning</td>
                        <td class="topic-list">Neural Networks & Architectures, Computer Vision (CNNs), Natural Language Processing (RNNs, Transformers), Transfer Learning & Fine-tuning</td>
                    </tr>
                    <tr>
                        <td class="topic-category">Data Science & Analytics</td>
                        <td class="topic-list">Exploratory Data Analysis, Statistical Analysis, Data Visualization, A/B Testing & Experimentation</td>
                    </tr>
                    <tr>
                        <td class="topic-category">MLOps & Production</td>
                        <td class="topic-list">Model Deployment Strategies, CI/CD for ML, Model Monitoring & Maintenance, Scalable ML Systems</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="contact-section">
        <h3>Start Learning Today</h3>
        <p>Whether you're a beginner or looking to advance your skills, I'm here to help you succeed in your ML journey.</p>
        
        <div class="contact-actions">
            <a href="https://cal.com/pastorsoto" target="_blank" class="schedule-btn">
                Schedule a call
            </a>
        </div>
    </div>
</div>

<style>
.teaching-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 2rem 1rem;
}

.intro-section {
    text-align: center;
    margin-bottom: 4rem;
}

.intro-section h2 {
    color: #333;
    font-size: 2rem;
    margin-bottom: 1rem;
    font-weight: 400;
}

.intro-section p {
    font-size: 1.1rem;
    color: #666;
    line-height: 1.6;
    max-width: 600px;
    margin: 0 auto;
}

.offerings-section, .topics-section {
    margin-bottom: 4rem;
}

.offerings-section h3, .topics-section h3 {
    color: #333;
    font-size: 1.5rem;
    margin-bottom: 2rem;
    text-align: center;
    font-weight: 400;
}

.offerings-table, .topics-table {
    max-width: 700px;
    margin: 0 auto;
}

.offering-table, .topic-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.95rem;
}

.offering-table tbody tr, .topic-table tbody tr {
    border-bottom: 1px solid #f0f0f0;
    transition: all 0.2s ease;
}

.offering-table tbody tr:hover, .topic-table tbody tr:hover {
    background-color: rgba(0, 0, 0, 0.01);
}

.offering-table tbody tr:last-child, .topic-table tbody tr:last-child {
    border-bottom: none;
}

.offering-table td, .topic-table td {
    padding: 1rem 0;
    vertical-align: top;
    border: none;
}

.offering-name, .topic-category {
    color: #333;
    font-weight: 500;
    font-size: 1rem;
    width: 35%;
    padding-right: 2rem;
}

.offering-description, .topic-list {
    color: #666;
    line-height: 1.5;
    font-size: 0.9rem;
}

.contact-section {
    text-align: center;
    background: #f8f9fa;
    padding: 3rem 2rem;
    border-radius: 10px;
    max-width: 600px;
    margin: 0 auto;
}

.contact-section h3 {
    color: #333;
    font-size: 1.5rem;
    margin-bottom: 1rem;
    font-weight: 400;
}

.contact-section p {
    font-size: 1rem;
    color: #666;
    margin-bottom: 2rem;
    line-height: 1.6;
}

.contact-actions {
    display: flex;
    justify-content: center;
}

.schedule-btn {
    display: inline-block;
    background: #333;
    color: white;
    text-decoration: none;
    padding: 0.8rem 2rem;
    font-size: 1rem;
    font-weight: 400;
    letter-spacing: 0.5px;
    border: 2px solid #333;
    border-radius: 5px;
    transition: all 0.3s ease;
}

.schedule-btn:hover {
    background: transparent;
    color: #333;
}

@media (max-width: 768px) {
    .teaching-container {
        padding: 1rem;
    }
    
    .intro-section h2 {
        font-size: 1.8rem;
    }
    
    .intro-section p {
        font-size: 1rem;
    }
    
    .offering-table, .topic-table {
        font-size: 0.9rem;
    }
    
    .offering-table td, .topic-table td {
        padding: 0.8rem 0;
    }
    
    .offering-name, .topic-category {
        width: 40%;
        padding-right: 1rem;
        font-size: 0.9rem;
    }
    
    .offering-description, .topic-list {
        font-size: 0.85rem;
    }
    
    .contact-section {
        padding: 2rem 1rem;
    }
    
    .schedule-btn {
        width: 100%;
        max-width: 300px;
        text-align: center;
    }
}
</style>