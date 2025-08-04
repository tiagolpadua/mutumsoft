# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based static website for Mutum Soft, configured to deploy to GitHub Pages. The site uses the Minima theme and is hosted at `https://tiagolpadua.github.io/mutumsoft` with the base URL `/mutumsoft`.

## Development Commands

### Setup and Installation

```bash
# Install dependencies
bundle install
# Or use the provided script
./run-install.sh
```

### Development Server

```bash
# Start local development server
bundle exec jekyll serve
# Or use the provided script
./run-server.sh
```

The development server will be available at `http://localhost:4000/mutumsoft`

### Build

```bash
# Build for production
bundle exec jekyll build --baseurl "/mutumsoft"
```

## Site Architecture

### Configuration

- **\_config.yml**: Main Jekyll configuration with site metadata, theme settings, and GitHub Pages configuration
- **Gemfile**: Ruby dependencies including `github-pages` gem for GitHub Pages compatibility
- Uses Ruby 3.1+ and the Minima theme

### Content Structure

- **\_posts/**: Blog posts in Markdown format following Jekyll naming convention (`YEAR-MONTH-DAY-title.MARKUP`)
- **about.markdown**: Static about page
- **index.markdown**: Home page using the `home` layout
- **404.html**: Custom 404 error page

### GitHub Pages Integration

- Automated deployment via GitHub Actions (`.github/workflows/jekyll.yml`)
- Builds and deploys on pushes to `main` branch
- Uses Ruby/setup-ruby action with bundler caching
- Deploys to GitHub Pages environment

### Site Configuration Details

- **Domain**: tiagolpadua.github.io
- **Base URL**: /mutumsoft
- **Theme**: minima (~> 2.5)
- **Plugins**: jekyll-feed for RSS/Atom feed generation
- **Social**: GitHub (tiagolpadua) and Twitter (tiagolpadua) integration

## Development Notes

- The site builds to `_site/` directory
- Jekyll requires server restart when `_config.yml` is modified
- Blog posts must follow Jekyll naming convention and include proper front matter
- The site is configured for GitHub Pages deployment with appropriate baseurl handling
