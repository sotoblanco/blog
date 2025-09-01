# Personal Blog & Notes

A clean, minimal Jekyll-based website showcasing blog posts and technical notes.

## Structure

```
docs/
├── _config.yml          # Jekyll configuration
├── _layouts/            # Jekyll layouts
├── _posts/              # Blog posts
├── notes/               # Technical notes
├── images/              # Static images
├── index.md             # Homepage
├── blog.md              # Blog listing page
├── notes.md             # Notes listing page
├── hire-me.md           # Hire me page
├── teaching.md          # Teaching page
├── Gemfile              # Ruby dependencies
└── Gemfile.lock         # Locked dependencies
```

## Features

- **Blog Posts**: Dynamic blog with external posts support
- **Technical Notes**: Organized notes by category (Data Engineering, ML Engineer, AI Engineer)
- **Responsive Design**: Works on desktop and mobile
- **GitHub Pages Ready**: Configured for GitHub Pages deployment

## Adding Content

### Blog Posts
1. Create markdown files in `docs/_posts/` with format: `YYYY-MM-DD-title.md`
2. Include front matter with title, date, and tags
3. Add external posts to `_config.yml` under `external_posts`

### Notes
1. Create markdown files in `docs/notes/[category]/` 
2. Include front matter with title, date, and category
3. Add external notes to `_config.yml` under `external_notes`

## Running Locally

```bash
cd docs
bundle install
bundle exec jekyll serve
```

Visit `http://localhost:4000` to view the site.

## Deployment

This site is configured for GitHub Pages. Simply push to the main branch and GitHub Pages will automatically build and deploy the site.