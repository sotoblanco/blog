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
        <!-- Default Category View -->
        <div id="category-view" class="content-view">
            <div class="content-header">
                <div class="breadcrumbs">
                    <span class="breadcrumb-item">Notes</span>
                    <span class="breadcrumb-separator">></span>
                    <span class="breadcrumb-item" id="current-category">Data Engineering</span>
                </div>
                <h1 id="content-title">Data Engineering</h1>
                <p id="content-description">Data pipelines, ETL processes, infrastructure, and best practices</p>
            </div>

            <div class="content-table-container">
                <table class="content-table" id="notes-table">
                    <tbody>
                        <tr>
                            <td class="note-title">
                                <a href="#" class="note-link" data-note="data-pipeline-design">Data Pipeline Design</a>
                            </td>
                            <td class="note-description">
                                Best practices for building scalable and reliable data pipelines
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Individual Note View -->
        <div id="note-view" class="content-view" style="display: none;">
            <div class="content-header">
                <div class="breadcrumbs">
                    <span class="breadcrumb-item">Notes</span>
                    <span class="breadcrumb-separator">></span>
                    <span class="breadcrumb-item" id="note-category">Data Engineering</span>
                    <span class="breadcrumb-separator">></span>
                    <span class="breadcrumb-item" id="note-title-breadcrumb">Data Pipeline Design</span>
                </div>
                <h1 id="note-content-title">Data Pipeline Design</h1>
                <div class="note-tags">
                    <span class="tag">DATA</span>
                    <span class="tag">PIPELINES</span>
                </div>
                <p id="note-subtitle">Best practices for building scalable and reliable data pipelines</p>
                <p class="note-date">February 29, 2024</p>
            </div>

            <div class="note-content" id="note-content">
                <!-- Note content will be loaded here -->
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

.nav-item.active {
    background: #0066cc;
    color: white;
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

.nav-subitem.active {
    background: #0066cc;
    color: white;
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

.content-view {
    max-width: 800px;
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
    color: #808080;
}

.breadcrumb-item {
    color: #e0e0e0;
    font-weight: 500;
    cursor: pointer;
    transition: color 0.2s ease;
}

.breadcrumb-item:hover {
    color: #0066cc;
}

.breadcrumb-separator {
    color: #808080;
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

.note-tags {
    display: flex;
    gap: 0.5rem;
    margin: 1rem 0;
}

.tag {
    background: #404040;
    color: #e0e0e0;
    padding: 0.25rem 0.75rem;
    border-radius: 4px;
    font-size: 0.8rem;
    font-weight: 500;
}

.note-date {
    color: #808080;
    font-size: 0.9rem;
    margin-top: 0.5rem;
}

.content-table-container {
    background: #2d2d2d;
    border-radius: 8px;
    padding: 1.5rem;
    border: 1px solid #404040;
}

.content-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    font-size: 0.95rem;
}

.content-table tbody tr {
    transition: all 0.2s ease;
    border-bottom: 1px solid #404040;
}

.content-table tbody tr:last-child {
    border-bottom: none;
}

.content-table tbody tr:hover {
    background-color: #404040;
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

.note-link {
    color: #0066cc;
    text-decoration: none;
    font-weight: 500;
    font-size: 1rem;
    line-height: 1.4;
    transition: color 0.2s ease;
    cursor: pointer;
}

.note-link:hover {
    color: #4da6ff;
    text-decoration: underline;
}

.note-description {
    color: #b0b0b0;
    line-height: 1.5;
    font-size: 0.9rem;
}

.note-content {
    background: #2d2d2d;
    border-radius: 8px;
    padding: 2rem;
    border: 1px solid #404040;
    line-height: 1.6;
    color: #e0e0e0;
}

.note-content h1, .note-content h2, .note-content h3 {
    color: #ffffff;
    margin-top: 2rem;
    margin-bottom: 1rem;
}

.note-content h1 {
    font-size: 1.8rem;
    border-bottom: 1px solid #404040;
    padding-bottom: 0.5rem;
}

.note-content h2 {
    font-size: 1.4rem;
}

.note-content h3 {
    font-size: 1.2rem;
}

.note-content p {
    margin-bottom: 1rem;
}

.note-content ul, .note-content ol {
    margin-bottom: 1rem;
    padding-left: 2rem;
}

.note-content li {
    margin-bottom: 0.5rem;
}

.note-content code {
    background: #404040;
    padding: 0.2rem 0.4rem;
    border-radius: 4px;
    font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
    font-size: 0.9rem;
}

.note-content pre {
    background: #404040;
    padding: 1rem;
    border-radius: 8px;
    overflow-x: auto;
    margin: 1rem 0;
}

.note-content pre code {
    background: none;
    padding: 0;
}

.note-content blockquote {
    border-left: 4px solid #0066cc;
    padding-left: 1rem;
    margin: 1rem 0;
    color: #b0b0b0;
    font-style: italic;
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
    
    .note-content {
        padding: 1rem;
    }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
    let currentCategory = 'data-engineering';
    let currentNote = null;
    
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
            
            // Update content if not already showing a note
            if (!currentNote) {
                updateCategoryContent(category);
            }
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
            
            // Load specific note
            const note = this.dataset.note;
            loadNote(note);
        });
    });
    
    // Note link clicks in table
    document.addEventListener('click', function(e) {
        if (e.target.classList.contains('note-link')) {
            e.preventDefault();
            const note = e.target.dataset.note;
            loadNote(note);
        }
    });
    
    // Breadcrumb navigation
    document.addEventListener('click', function(e) {
        if (e.target.classList.contains('breadcrumb-item')) {
            const text = e.target.textContent;
            if (text === 'Notes') {
                showCategoryView();
            } else if (text === getCategoryName(currentCategory)) {
                showCategoryView();
            }
        }
    });
    
    function updateCategoryContent(category) {
        currentCategory = category;
        currentNote = null;
        
        const contentTitle = document.getElementById('content-title');
        const contentDescription = document.getElementById('content-description');
        const currentCategoryElement = document.getElementById('current-category');
        const notesTable = document.getElementById('notes-table');
        
        // Update breadcrumbs and title
        currentCategoryElement.textContent = getCategoryName(category);
        contentTitle.textContent = getCategoryName(category);
        contentDescription.textContent = getCategoryDescription(category);
        
        // Update table content
        notesTable.innerHTML = getCategoryNotes(category);
        
        // Show category view
        showCategoryView();
    }
    
    function loadNote(note) {
        currentNote = note;
        
        // Update breadcrumbs
        const noteCategory = document.getElementById('note-category');
        const noteTitleBreadcrumb = document.getElementById('note-title-breadcrumb');
        const noteContentTitle = document.getElementById('note-content-title');
        
        noteCategory.textContent = getCategoryName(currentCategory);
        noteTitleBreadcrumb.textContent = getNoteTitle(note);
        noteContentTitle.textContent = getNoteTitle(note);
        
        // Load note content
        loadNoteContent(note);
        
        // Show note view
        showNoteView();
    }
    
    function loadNoteContent(note) {
        const noteContent = document.getElementById('note-content');
        
        // For now, we'll show placeholder content
        // In a real implementation, you'd fetch the actual markdown content
        const content = getNoteContent(note);
        noteContent.innerHTML = content;
    }
    
    function showCategoryView() {
        document.getElementById('category-view').style.display = 'block';
        document.getElementById('note-view').style.display = 'none';
    }
    
    function showNoteView() {
        document.getElementById('category-view').style.display = 'none';
        document.getElementById('note-view').style.display = 'block';
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
                        <a href="#" class="note-link" data-note="data-pipeline-design">Data Pipeline Design</a>
                    </td>
                    <td class="note-description">
                        Best practices for building scalable and reliable data pipelines
                    </td>
                </tr>
            `,
            'machine-learning-engineer': `
                <tr>
                    <td class="note-title">
                        <a href="#" class="note-link" data-note="machine-learning-fundamentals">Machine Learning Fundamentals</a>
                    </td>
                    <td class="note-description">
                        Core concepts and principles every ML practitioner should know
                    </td>
                </tr>
            `,
            'ai-engineer': `
                <tr>
                    <td class="note-title">
                        <a href="#" class="note-link" data-note="prompt-engineering">Prompt Engineering</a>
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
    
    function getNoteContent(note) {
        const contents = {
            'data-pipeline-design': `
                <h2>Overview</h2>
                <p>Data pipeline design is a critical aspect of modern data engineering. This guide covers the fundamental principles and best practices for building scalable, reliable, and maintainable data pipelines.</p>
                
                <h2>Key Principles</h2>
                <ul>
                    <li><strong>Reliability:</strong> Ensure data consistency and fault tolerance</li>
                    <li><strong>Scalability:</strong> Design for growth and increased data volumes</li>
                    <li><strong>Maintainability:</strong> Write clean, documented, and testable code</li>
                    <li><strong>Monitoring:</strong> Implement comprehensive logging and alerting</li>
                </ul>
                
                <h2>Architecture Patterns</h2>
                <h3>Batch Processing</h3>
                <p>Traditional batch processing involves processing data in chunks at scheduled intervals. This approach is suitable for:</p>
                <ul>
                    <li>Large datasets that don't require real-time processing</li>
                    <li>Complex transformations that benefit from batch optimization</li>
                    <li>Cost-effective processing during off-peak hours</li>
                </ul>
                
                <h3>Stream Processing</h3>
                <p>Real-time stream processing handles data as it arrives, enabling:</p>
                <ul>
                    <li>Immediate insights and actions</li>
                    <li>Reduced latency for time-sensitive applications</li>
                    <li>Continuous data processing</li>
                </ul>
                
                <h2>Best Practices</h2>
                <blockquote>
                    Always design your pipelines with failure in mind. Implement proper error handling, retry mechanisms, and data validation at every step.
                </blockquote>
                
                <h3>Data Validation</h3>
                <p>Implement comprehensive data validation at multiple levels:</p>
                <ul>
                    <li>Schema validation for data structure</li>
                    <li>Business rule validation for data quality</li>
                    <li>Statistical validation for data distribution</li>
                </ul>
                
                <h3>Error Handling</h3>
                <p>Robust error handling is essential for production pipelines:</p>
                <ul>
                    <li>Implement retry logic with exponential backoff</li>
                    <li>Log detailed error information for debugging</li>
                    <li>Set up alerts for critical failures</li>
                    <li>Maintain data lineage for troubleshooting</li>
                </ul>
            `,
            'machine-learning-fundamentals': `
                <h2>Core Concepts</h2>
                <p>Machine learning fundamentals form the foundation of all ML work. Understanding these concepts is essential for building effective models and systems.</p>
                
                <h2>Supervised Learning</h2>
                <p>In supervised learning, we train models on labeled data to make predictions on new, unseen data.</p>
                
                <h3>Classification</h3>
                <p>Classification tasks involve predicting discrete categories or classes:</p>
                <ul>
                    <li>Binary classification (two classes)</li>
                    <li>Multi-class classification (multiple classes)</li>
                    <li>Multi-label classification (multiple labels per instance)</li>
                </ul>
                
                <h3>Regression</h3>
                <p>Regression tasks predict continuous numerical values:</p>
                <ul>
                    <li>Linear regression for simple relationships</li>
                    <li>Polynomial regression for non-linear patterns</li>
                    <li>Time series forecasting</li>
                </ul>
                
                <h2>Unsupervised Learning</h2>
                <p>Unsupervised learning finds patterns in data without predefined labels:</p>
                <ul>
                    <li>Clustering to group similar data points</li>
                    <li>Dimensionality reduction for feature extraction</li>
                    <li>Anomaly detection for identifying outliers</li>
                </ul>
                
                <h2>Model Evaluation</h2>
                <p>Proper model evaluation is crucial for understanding performance:</p>
                <ul>
                    <li>Cross-validation for robust performance estimation</li>
                    <li>Metrics selection based on business objectives</li>
                    <li>Bias-variance tradeoff understanding</li>
                </ul>
            `,
            'prompt-engineering': `
                <h2>Introduction to Prompt Engineering</h2>
                <p>Prompt engineering is the art and science of crafting effective inputs for large language models to achieve desired outputs. It's a crucial skill for working with modern AI systems.</p>
                
                <h2>Fundamental Principles</h2>
                <h3>Clarity and Specificity</h3>
                <p>Clear, specific prompts lead to better results:</p>
                <ul>
                    <li>Be explicit about the desired output format</li>
                    <li>Specify the tone, style, and length</li>
                    <li>Provide context when necessary</li>
                </ul>
                
                <h3>Few-Shot Learning</h3>
                <p>Providing examples in your prompt can significantly improve results:</p>
                <blockquote>
                    Example: "Translate the following to French: 'Hello' → 'Bonjour'. Now translate: 'Good morning'"
                </blockquote>
                
                <h2>Advanced Techniques</h2>
                <h3>Chain-of-Thought Prompting</h3>
                <p>Encourage the model to show its reasoning process:</p>
                <ul>
                    <li>Ask for step-by-step explanations</li>
                    <li>Request intermediate calculations</li>
                    <li>Use phrases like "Let's think through this step by step"</li>
                </ul>
                
                <h3>Role-Based Prompting</h3>
                <p>Assign specific roles to guide the model's behavior:</p>
                <ul>
                    <li>"You are an expert data scientist..."</li>
                    <li>"Act as a helpful coding assistant..."</li>
                    <li>"Pretend you're a teacher explaining to a beginner..."</li>
                </ul>
                
                <h2>Common Pitfalls</h2>
                <p>Avoid these common prompt engineering mistakes:</p>
                <ul>
                    <li>Vague or ambiguous instructions</li>
                    <li>Overly complex prompts that confuse the model</li>
                    <li>Failing to specify output constraints</li>
                    <li>Not testing prompts with different variations</li>
                </ul>
                
                <h2>Best Practices</h2>
                <ul>
                    <li>Iterate and refine your prompts</li>
                    <li>Test with multiple examples</li>
                    <li>Consider the model's limitations</li>
                    <li>Document successful prompt patterns</li>
                </ul>
            `
        };
        return contents[note] || '<p>Content not available.</p>';
    }
    
    // Initialize with default category
    updateCategoryContent('data-engineering');
});
</script>