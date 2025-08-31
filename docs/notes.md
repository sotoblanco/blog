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
                    <div class="nav-item nav-subitem" data-note="data-pipeline-design" data-file="_notes/data-engineering/data-pipeline-design.md">
                        <span class="nav-text">Data Pipeline Design</span>
                    </div>
                    <div class="nav-item nav-subitem" data-note="docker-best-practices" data-file="_notes/data-engineering/docker-best-practices.md">
                        <span class="nav-text">Docker Best Practices</span>
                    </div>
                </div>
            </div>

            <div class="nav-section">
                <div class="nav-item nav-category" data-category="machine-learning-engineer">
                    <span class="nav-icon">▶</span>
                    <span class="nav-text">Machine Learning Engineer</span>
                </div>
                <div class="nav-subitems" id="machine-learning-engineer-subitems">
                    <div class="nav-item nav-subitem" data-note="machine-learning-fundamentals" data-file="_notes/machine-learning-fundamentals.md">
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
                    <div class="nav-item nav-subitem" data-note="prompt-engineering" data-file="_notes/ai-engineer/prompt-engineering.md">
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
                                <a href="#" class="note-link" data-note="data-pipeline-design" data-file="_notes/data-engineering/data-pipeline-design.md">Data Pipeline Design</a>
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
                <div class="note-tags" id="note-tags">
                    <span class="tag">DATA</span>
                    <span class="tag">PIPELINES</span>
                </div>
                <p id="note-subtitle">Best practices for building scalable and reliable data pipelines</p>
                <p class="note-date" id="note-date">February 29, 2024</p>
            </div>

            <div class="note-content" id="note-content">
                <!-- Note content will be loaded here -->
                <div class="loading">Loading content...</div>
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

.loading {
    text-align: center;
    color: #808080;
    font-style: italic;
    padding: 2rem;
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

.note-content strong {
    color: #ffffff;
    font-weight: 600;
}

.note-content a {
    color: #0066cc;
    text-decoration: none;
}

.note-content a:hover {
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
            const file = this.dataset.file;
            loadNote(note, file);
        });
    });
    
    // Note link clicks in table
    document.addEventListener('click', function(e) {
        if (e.target.classList.contains('note-link')) {
            e.preventDefault();
            const note = e.target.dataset.note;
            const file = e.target.dataset.file;
            loadNote(note, file);
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
    
    function loadNote(note, file) {
        currentNote = note;
        
        // Update breadcrumbs
        const noteCategory = document.getElementById('note-category');
        const noteTitleBreadcrumb = document.getElementById('note-title-breadcrumb');
        const noteContentTitle = document.getElementById('note-content-title');
        
        noteCategory.textContent = getCategoryName(currentCategory);
        noteTitleBreadcrumb.textContent = getNoteTitle(note);
        noteContentTitle.textContent = getNoteTitle(note);
        
        // Load note content from file
        loadNoteContentFromFile(file);
        
        // Show note view
        showNoteView();
    }
    
    async function loadNoteContentFromFile(file) {
        const noteContent = document.getElementById('note-content');
        noteContent.innerHTML = '<div class="loading">Loading content...</div>';
        
        try {
            const response = await fetch(file);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            
            const text = await response.text();
            const { frontMatter, content } = parseMarkdownFile(text);
            
            // Update note metadata
            updateNoteMetadata(frontMatter);
            
            // Convert markdown to HTML and display
            const htmlContent = convertMarkdownToHtml(content);
            noteContent.innerHTML = htmlContent;
            
        } catch (error) {
            console.error('Error loading note:', error);
            noteContent.innerHTML = '<p>Error loading content. Please try again.</p>';
        }
    }
    
    function parseMarkdownFile(text) {
        // Simple front matter parser
        const frontMatterRegex = /^---\n([\s\S]*?)\n---\n([\s\S]*)$/;
        const match = text.match(frontMatterRegex);
        
        if (match) {
            const frontMatterText = match[1];
            const content = match[2];
            
            // Parse front matter
            const frontMatter = {};
            frontMatterText.split('\n').forEach(line => {
                const colonIndex = line.indexOf(':');
                if (colonIndex > 0) {
                    const key = line.substring(0, colonIndex).trim();
                    let value = line.substring(colonIndex + 1).trim();
                    
                    // Remove quotes if present
                    if ((value.startsWith('"') && value.endsWith('"')) || 
                        (value.startsWith("'") && value.endsWith("'"))) {
                        value = value.slice(1, -1);
                    }
                    
                    frontMatter[key] = value;
                }
            });
            
            return { frontMatter, content };
        }
        
        return { frontMatter: {}, content: text };
    }
    
    function updateNoteMetadata(frontMatter) {
        // Update title
        if (frontMatter.title) {
            document.getElementById('note-content-title').textContent = frontMatter.title;
            document.getElementById('note-title-breadcrumb').textContent = frontMatter.title;
        }
        
        // Update subtitle/description
        if (frontMatter.description) {
            document.getElementById('note-subtitle').textContent = frontMatter.description;
        }
        
        // Update tags
        const tagsContainer = document.getElementById('note-tags');
        if (frontMatter.tags) {
            const tags = frontMatter.tags.replace(/[\[\]]/g, '').split(',').map(tag => tag.trim());
            tagsContainer.innerHTML = tags.map(tag => `<span class="tag">${tag.toUpperCase()}</span>`).join('');
        } else {
            tagsContainer.innerHTML = '';
        }
        
        // Update date
        if (frontMatter.date) {
            const date = new Date(frontMatter.date);
            document.getElementById('note-date').textContent = date.toLocaleDateString('en-US', {
                year: 'numeric',
                month: 'long',
                day: 'numeric'
            });
        }
    }
    
    function convertMarkdownToHtml(markdown) {
        // Simple markdown to HTML converter
        let html = markdown;
        
        // Headers
        html = html.replace(/^### (.*$)/gim, '<h3>$1</h3>');
        html = html.replace(/^## (.*$)/gim, '<h2>$1</h2>');
        html = html.replace(/^# (.*$)/gim, '<h1>$1</h1>');
        
        // Bold
        html = html.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
        
        // Italic
        html = html.replace(/\*(.*?)\*/g, '<em>$1</em>');
        
        // Code blocks
        html = html.replace(/```([\s\S]*?)```/g, '<pre><code>$1</code></pre>');
        
        // Inline code
        html = html.replace(/`(.*?)`/g, '<code>$1</code>');
        
        // Links
        html = html.replace(/\[([^\]]+)\]\(([^)]+)\)/g, '<a href="$2">$1</a>');
        
        // Lists
        html = html.replace(/^\* (.*$)/gim, '<li>$1</li>');
        html = html.replace(/^- (.*$)/gim, '<li>$1</li>');
        
        // Wrap consecutive list items in ul tags
        html = html.replace(/(<li>.*<\/li>)/gs, '<ul>$1</ul>');
        
        // Paragraphs
        html = html.replace(/^(?!<[h|u|o|p|d|b|t|s|n])(.+)$/gim, '<p>$1</p>');
        
        // Clean up empty paragraphs
        html = html.replace(/<p><\/p>/g, '');
        
        return html;
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
                        <a href="#" class="note-link" data-note="data-pipeline-design" data-file="_notes/data-engineering/data-pipeline-design.md">Data Pipeline Design</a>
                    </td>
                    <td class="note-description">
                        Best practices for building scalable and reliable data pipelines
                    </td>
                </tr>
                <tr>
                    <td class="note-title">
                        <a href="#" class="note-link" data-note="docker-best-practices" data-file="_notes/data-engineering/docker-best-practices.md">Docker Best Practices</a>
                    </td>
                    <td class="note-description">
                        Essential Docker commands and best practices for containerization
                    </td>
                </tr>
            `,
            'machine-learning-engineer': `
                <tr>
                    <td class="note-title">
                        <a href="#" class="note-link" data-note="machine-learning-fundamentals" data-file="_notes/machine-learning-fundamentals.md">Machine Learning Fundamentals</a>
                    </td>
                    <td class="note-description">
                        Core concepts and principles every ML practitioner should know
                    </td>
                </tr>
            `,
            'ai-engineer': `
                <tr>
                    <td class="note-title">
                        <a href="#" class="note-link" data-note="prompt-engineering" data-file="_notes/ai-engineer/prompt-engineering.md">Prompt Engineering</a>
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
    
    // Initialize with default category
    updateCategoryContent('data-engineering');
});
</script>