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
                    <div class="nav-item nav-subitem" data-note="data-pipeline-design">
                        <span class="nav-text">Data Pipeline Design</span>
                    </div>
                </div>
            </div>

            <div class="nav-section">
                <div class="nav-item nav-category" data-category="machine-learning-engineer">
                    <span class="nav-icon">▶</span>
                    <span class="nav-text">Machine Learning Engineer</span>
                </div>
                <div class="nav-subitems" id="machine-learning-engineer-subitems">
                    <div class="nav-item nav-subitem" data-note="machine-learning-fundamentals">
                        <span class="nav-text">Machine Learning Fundamentals</span>
                    </div>
                </div>
            </div>

            <div class="nav-section">
                <div class="nav-item nav-category" data-category="ai-engineer">
                    <span class="nav-icon">▶</span>
                    <span class="nav-text">AI Engineer</span>
                </div>
                <div class="nav-subitems" id="ai-engineer-subitems">
                    <div class="nav-item nav-subitem" data-note="prompt-engineering">
                        <span class="nav-text">Prompt Engineering</span>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <div class="content-header">
            <div class="breadcrumbs">
                <span class="breadcrumb-item">Notes</span>
                <span class="breadcrumb-separator">></span>
                <span class="breadcrumb-item" id="current-category">Data Engineering</span>
                <span class="breadcrumb-separator" id="subcategory-separator" style="display: none;">></span>
                <span class="breadcrumb-item" id="current-subcategory" style="display: none;"></span>
            </div>
            <h1 id="content-title">Data Engineering</h1>
            <p id="content-description">Data pipelines, ETL processes, infrastructure, and best practices</p>
        </div>

        <div class="content-table-container">
            <table class="content-table" id="notes-table">
                <tbody>
                    <tr>
                        <td class="note-title">
                            <a href="{{ '/notes/data-engineering/data-pipeline-design' | relative_url }}">Data Pipeline Design</a>
                        </td>
                        <td class="note-description">
                            Best practices for building scalable and reliable data pipelines
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<style>
.notes-layout {
    display: flex;
    min-height: 100vh;
    background: #f8f9fa;
}

/* Sidebar Styles */
.sidebar {
    width: 280px;
    background: #2d3748;
    color: white;
    padding: 0;
    overflow-y: auto;
    border-right: 1px solid #4a5568;
}

.sidebar-header {
    padding: 1.5rem;
    border-bottom: 1px solid #4a5568;
}

.sidebar-header h2 {
    margin: 0;
    font-size: 1.2rem;
    font-weight: 500;
    color: #e2e8f0;
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
}

.nav-item:hover {
    background: #4a5568;
}

.nav-item.active {
    background: #3182ce;
    color: white;
}

.nav-category {
    font-weight: 500;
    color: #e2e8f0;
}

.nav-subitems {
    display: none;
    background: #1a202c;
}

.nav-subitems.expanded {
    display: block;
}

.nav-subitem {
    padding-left: 2.5rem;
    font-size: 0.9rem;
    color: #cbd5e0;
}

.nav-subitem:hover {
    background: #2d3748;
}

.nav-subitem.active {
    background: #3182ce;
    color: white;
}

.nav-icon {
    font-size: 0.8rem;
    transition: transform 0.2s ease;
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
    background: white;
}

.content-header {
    margin-bottom: 2rem;
}

.breadcrumbs {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    margin-bottom: 1rem;
    font-size: 0.9rem;
    color: #666;
}

.breadcrumb-item {
    color: #333;
    font-weight: 500;
}

.breadcrumb-separator {
    color: #999;
}

.content-header h1 {
    margin: 0 0 0.5rem 0;
    font-size: 2rem;
    font-weight: 400;
    color: #333;
}

.content-header p {
    margin: 0;
    color: #666;
    font-size: 1rem;
    line-height: 1.5;
}

.content-table-container {
    background: #fafafa;
    border-radius: 8px;
    padding: 1.5rem;
    border: 1px solid #e2e8f0;
}

.content-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    font-size: 0.95rem;
}

.content-table tbody tr {
    transition: all 0.2s ease;
    border-bottom: 1px solid #e2e8f0;
}

.content-table tbody tr:last-child {
    border-bottom: none;
}

.content-table tbody tr:hover {
    background-color: rgba(0, 0, 0, 0.02);
}

.content-table td {
    padding: 1rem 0;
    vertical-align: top;
    border: none;
}

.note-title {
    width: 40%;
    padding-right: 2rem;
}

.note-title a {
    color: #3182ce;
    text-decoration: none;
    font-weight: 500;
    font-size: 1rem;
    line-height: 1.4;
    transition: color 0.2s ease;
}

.note-title a:hover {
    color: #2c5aa0;
    text-decoration: underline;
}

.note-description {
    color: #666;
    line-height: 1.5;
    font-size: 0.9rem;
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
    
    .content-table-container {
        padding: 1rem;
    }
    
    .note-title {
        width: 50%;
        padding-right: 1rem;
    }
    
    .note-description {
        font-size: 0.85rem;
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
            
            // Update content
            updateContent(category);
        });
    });
    
    // Subitem selection functionality
    const subitems = document.querySelectorAll('.nav-subitem');
    
    subitems.forEach(item => {
        item.addEventListener('click', function() {
            // Remove active class from all subitems
            subitems.forEach(subitem => subitem.classList.remove('active'));
            
            // Add active class to clicked item
            this.classList.add('active');
            
            // Update content for specific note
            const note = this.dataset.note;
            updateNoteContent(note);
        });
    });
    
    function updateContent(category) {
        const contentTitle = document.getElementById('content-title');
        const contentDescription = document.getElementById('content-description');
        const currentCategory = document.getElementById('current-category');
        const notesTable = document.getElementById('notes-table');
        
        // Update breadcrumbs and title
        currentCategory.textContent = getCategoryName(category);
        contentTitle.textContent = getCategoryName(category);
        contentDescription.textContent = getCategoryDescription(category);
        
        // Update table content
        notesTable.innerHTML = getCategoryNotes(category);
    }
    
    function updateNoteContent(note) {
        // This would load specific note content
        // For now, just update breadcrumbs
        const currentSubcategory = document.getElementById('current-subcategory');
        const subcategorySeparator = document.getElementById('subcategory-separator');
        
        currentSubcategory.textContent = getNoteTitle(note);
        currentSubcategory.style.display = 'inline';
        subcategorySeparator.style.display = 'inline';
    }
    
    function getCategoryName(category) {
        const names = {
            'data-engineering': 'Data Engineering',
            'machine-learning-engineer': 'Machine Learning Engineer',
            'ai-engineer': 'AI Engineer'
        };
        return names[category] || category;
    }
    
    function getCategoryDescription(category) {
        const descriptions = {
            'data-engineering': 'Data pipelines, ETL processes, infrastructure, and best practices',
            'machine-learning-engineer': 'ML fundamentals, model development, MLOps, and best practices',
            'ai-engineer': 'LLM applications, prompt engineering, AI systems, and emerging technologies'
        };
        return descriptions[category] || '';
    }
    
    function getCategoryNotes(category) {
        const notes = {
            'data-engineering': `
                <tr>
                    <td class="note-title">
                        <a href="{{ '/notes/data-engineering/data-pipeline-design' | relative_url }}">Data Pipeline Design</a>
                    </td>
                    <td class="note-description">
                        Best practices for building scalable and reliable data pipelines
                    </td>
                </tr>
            `,
            'machine-learning-engineer': `
                <tr>
                    <td class="note-title">
                        <a href="{{ '/notes/machine-learning-engineer/machine-learning-fundamentals' | relative_url }}">Machine Learning Fundamentals</a>
                    </td>
                    <td class="note-description">
                        Core concepts and principles every ML practitioner should know
                    </td>
                </tr>
            `,
            'ai-engineer': `
                <tr>
                    <td class="note-title">
                        <a href="{{ '/notes/ai-engineer/prompt-engineering' | relative_url }}">Prompt Engineering</a>
                    </td>
                    <td class="note-description">
                        Techniques for crafting effective prompts for large language models
                    </td>
                </tr>
            `
        };
        return notes[category] || '';
    }
    
    function getNoteTitle(note) {
        const titles = {
            'data-pipeline-design': 'Data Pipeline Design',
            'machine-learning-fundamentals': 'Machine Learning Fundamentals',
            'prompt-engineering': 'Prompt Engineering'
        };
        return titles[note] || note;
    }
});
</script>