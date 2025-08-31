---
layout: default
title: Notes
---

<div class="notes-layout">
    <!-- Sidebar Navigation -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Notes</h2>
        </div>
        
        <nav class="sidebar-nav">
            <div class="nav-section">
                <div class="nav-item nav-category" data-category="data-engineering">
                    <span class="nav-icon">▶</span>
                    <span class="nav-text">Data Engineering</span>
                </div>
                <div class="nav-subitems" id="data-engineering-subitems">
                    <div class="nav-item nav-subitem">
                        <a href="notes/data-engineering/data-pipeline-design.html" class="nav-link">Data Pipeline Design</a>
                    </div>
                    <div class="nav-item nav-subitem">
                        <a href="notes/data-engineering/docker-best-practices.html" class="nav-link">Docker Best Practices</a>
                    </div>
                </div>
            </div>

            <div class="nav-section">
                <div class="nav-item nav-category" data-category="machine-learning-engineer">
                    <span class="nav-icon">▶</span>
                    <span class="nav-text">Machine Learning Engineer</span>
                </div>
                <div class="nav-subitems" id="machine-learning-engineer-subitems">
                    <div class="nav-item nav-subitem">
                        <a href="notes/machine-learning-engineer/machine-learning-fundamentals.html" class="nav-link">Machine Learning Fundamentals</a>
                    </div>
                </div>
            </div>

            <div class="nav-section">
                <div class="nav-item nav-category" data-category="ai-engineer">
                    <span class="nav-icon">▶</span>
                    <span class="nav-text">AI Engineer</span>
                </div>
                <div class="nav-subitems" id="ai-engineer-subitems">
                    <div class="nav-item nav-subitem">
                        <a href="notes/ai-engineer/prompt-engineering.html" class="nav-link">Prompt Engineering</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <div class="content-header">
            <h1>Notes</h1>
            <p>Click on any note in the sidebar to view its content. Each note opens in a new page.</p>
        </div>

        <div class="content-table-container">
            <h2>Available Notes</h2>
            
            <div class="notes-grid">
                <div class="note-card">
                    <h3>Data Engineering</h3>
                    <ul>
                        <li><a href="notes/data-engineering/data-pipeline-design.html">Data Pipeline Design</a></li>
                        <li><a href="notes/data-engineering/docker-best-practices.html">Docker Best Practices</a></li>
                    </ul>
                </div>
                
                <div class="note-card">
                    <h3>Machine Learning Engineer</h3>
                    <ul>
                        <li><a href="notes/machine-learning-engineer/machine-learning-fundamentals.html">Machine Learning Fundamentals</a></li>
                    </ul>
                </div>
                
                <div class="note-card">
                    <h3>AI Engineer</h3>
                    <ul>
                        <li><a href="notes/ai-engineer/prompt-engineering.html">Prompt Engineering</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.notes-layout {
    display: flex;
    min-height: 100vh;
    background: #1a1a1a;
    color: #e0e0e0;
}

/* Sidebar Styles */
.sidebar {
    width: 280px;
    background: #2d2d2d;
    color: #e0e0e0;
    padding: 0;
    overflow-y: auto;
    border-right: 1px solid #404040;
    flex-shrink: 0;
}

.sidebar-header {
    padding: 1.5rem;
    border-bottom: 1px solid #404040;
}

.sidebar-header h2 {
    margin: 0;
    font-size: 1.2rem;
    font-weight: 500;
    color: #e0e0e0;
}

.sidebar-nav {
    padding: 1rem 0;
}

.nav-section {
    margin-bottom: 0.5rem;
}

.nav-item {
    padding: 0.75rem 1.5rem;
    cursor: pointer;
    transition: all 0.2s ease;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    user-select: none;
}

.nav-item:hover {
    background: #404040;
}

.nav-category {
    font-weight: 500;
    color: #e0e0e0;
}

.nav-subitems {
    display: none;
    background: #1a1a1a;
}

.nav-subitems.expanded {
    display: block;
}

.nav-subitem {
    padding-left: 2.5rem;
    font-size: 0.9rem;
    color: #b0b0b0;
}

.nav-subitem:hover {
    background: #2d2d2d;
}

.nav-link {
    color: #b0b0b0;
    text-decoration: none;
    transition: color 0.2s ease;
}

.nav-link:hover {
    color: #0066cc;
}

.nav-icon {
    font-size: 0.8rem;
    transition: transform 0.2s ease;
    color: #808080;
}

.nav-icon.expanded {
    transform: rotate(90deg);
}

.nav-text {
    flex: 1;
}

/* Main Content Styles */
.main-content {
    flex: 1;
    padding: 2rem;
    background: #1a1a1a;
    overflow-y: auto;
}

.content-header {
    margin-bottom: 2rem;
}

.content-header h1 {
    margin: 0 0 0.5rem 0;
    font-size: 2rem;
    font-weight: 400;
    color: #ffffff;
}

.content-header p {
    margin: 0;
    color: #b0b0b0;
    font-size: 1rem;
    line-height: 1.5;
}

.content-table-container {
    background: #2d2d2d;
    border-radius: 8px;
    padding: 1.5rem;
    border: 1px solid #404040;
}

.content-table-container h2 {
    margin: 0 0 1.5rem 0;
    color: #ffffff;
    font-size: 1.5rem;
}

.notes-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 1.5rem;
}

.note-card {
    background: #404040;
    border-radius: 8px;
    padding: 1.5rem;
    border: 1px solid #555;
}

.note-card h3 {
    margin: 0 0 1rem 0;
    color: #ffffff;
    font-size: 1.2rem;
    border-bottom: 1px solid #555;
    padding-bottom: 0.5rem;
}

.note-card ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

.note-card li {
    margin-bottom: 0.5rem;
}

.note-card a {
    color: #0066cc;
    text-decoration: none;
    transition: color 0.2s ease;
    font-size: 0.95rem;
}

.note-card a:hover {
    color: #4da6ff;
    text-decoration: underline;
}

/* Responsive Design */
@media (max-width: 768px) {
    .notes-layout {
        flex-direction: column;
    }
    
    .sidebar {
        width: 100%;
        max-height: 300px;
    }
    
    .main-content {
        padding: 1rem;
    }
    
    .content-header h1 {
        font-size: 1.5rem;
    }
    
    .notes-grid {
        grid-template-columns: 1fr;
    }
    
    .note-card {
        padding: 1rem;
    }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Category expansion functionality
    const categoryItems = document.querySelectorAll('.nav-category');
    
    categoryItems.forEach(item => {
        item.addEventListener('click', function() {
            const category = this.dataset.category;
            const subitems = document.getElementById(category + '-subitems');
            const icon = this.querySelector('.nav-icon');
            
            // Toggle expansion
            subitems.classList.toggle('expanded');
            icon.classList.toggle('expanded');
        });
    });
});
</script>