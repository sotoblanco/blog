---
layout: default
title: Notes
---

# Technical Notes

<div class="notes-container">
    <div class="intro-section">
        <h2>Learning & Reference Notes</h2>
        <p>Organized technical documentation and learning resources across different domains.</p>
    </div>

    <div class="categories-grid">
        <div class="category-card">
            <h3>Data Engineering</h3>
            <p>Data pipelines, ETL processes, and infrastructure</p>
            <a href="{{ '/notes/data-engineering' | relative_url }}" class="category-link">
                Browse Notes →
            </a>
        </div>

        <div class="category-card">
            <h3>Machine Learning Engineer</h3>
            <p>ML fundamentals, model development, and MLOps</p>
            <a href="{{ '/notes/machine-learning-engineer' | relative_url }}" class="category-link">
                Browse Notes →
            </a>
        </div>

        <div class="category-card">
            <h3>AI Engineer</h3>
            <p>LLM applications, prompt engineering, and AI systems</p>
            <a href="{{ '/notes/ai-engineer' | relative_url }}" class="category-link">
                Browse Notes →
            </a>
        </div>
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
    margin-bottom: 4rem;
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

.categories-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    margin-top: 3rem;
}

.category-card {
    background: #fafafa;
    border: 1px solid #f0f0f0;
    border-radius: 12px;
    padding: 2rem;
    text-align: center;
    transition: all 0.3s ease;
}

.category-card:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    border-color: #dee2e6;
}

.category-card h3 {
    color: #333;
    font-size: 1.3rem;
    margin-bottom: 1rem;
    font-weight: 500;
}

.category-card p {
    color: #666;
    font-size: 0.95rem;
    line-height: 1.5;
    margin-bottom: 1.5rem;
}

.category-link {
    display: inline-block;
    color: #333;
    text-decoration: none;
    font-weight: 500;
    font-size: 0.9rem;
    padding: 0.6rem 1.2rem;
    border: 2px solid #333;
    border-radius: 6px;
    transition: all 0.3s ease;
}

.category-link:hover {
    background: #333;
    color: white;
}

@media (max-width: 768px) {
    .notes-container {
        padding: 1rem;
    }
    
    .intro-section h2 {
        font-size: 1.6rem;
    }
    
    .categories-grid {
        grid-template-columns: 1fr;
        gap: 1.5rem;
    }
    
    .category-card {
        padding: 1.5rem;
    }
}
</style>