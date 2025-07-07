# SSUWAT Company Website

This is the official website for SSUWAT, a company specializing in custom web solutions.

## Project Overview

SSUWAT provides tailored web solutions including:
- Web pages
- E-commerce platforms
- Community sites
- Admin consoles
- Other custom web applications

## Technical Stack

- **Static Site Generator**: Hugo
- **Styling**: Tailwind CSS
- **Languages**: Korean (default) and English
- **Deployment**: Static hosting

## Development

### Prerequisites

- Hugo (v0.147.9 or later)
- Node.js and pnpm (for Tailwind CSS)

### Getting Started

1. Clone the repository
2. Install dependencies:
   ```bash
   pnpm install
   ```
3. Run development server:
   ```bash
   pnpm run dev
   ```
4. Build for production:
   ```bash
   pnpm run build
   ```

## Portfolio Management

### Adding a New Portfolio Item

1. Create a new YAML file in `data/portfolio/` directory (e.g., `myproject.yaml`)
2. Follow this structure:

```yaml
title: "Project Name"
url: "https://project-url.com/"
category: "category_key"  # Should match i18n keys
weight: 3  # Display order (lower numbers appear first)
screenshot: "filename-without-extension"  # Will look for .png or .jpg in /static/images/portfolio/
icon:
  name: "icon-name"
  viewBox: "0 0 24 24"
  path: "SVG path data"
color:
  from: "color-50"    # Tailwind color for gradient start
  to: "color-100"     # Tailwind color for gradient end
  text: "color-600"   # Tailwind color for text
  icon: "color-400"   # Tailwind color for icon
description:
  ko: "Korean description"
  en: "English description"
```

### Categories

Current categories:
- `event_tech` - Event Technology
- `social_platform` - Social Platform

To add more categories:
1. Add the category key to your portfolio YAML file
2. Add translations in `/i18n/ko.toml` and `/i18n/en.toml`:
   ```toml
   [portfolio]
   your_category = "Your Category Name"
   ```

### Screenshots

1. Place screenshot images in `/static/images/portfolio/`
2. Use the filename specified in the `screenshot` field
3. Supported formats: .png, .jpg
4. Recommended specs:
   - Width: 800-1200px
   - Aspect ratio: 16:9 or similar
   - File size: Optimized for web (under 500KB)

### Example: Adding a New Project

1. Create `/data/portfolio/newproject.yaml`:
```yaml
title: "New Project"
url: "https://newproject.com/"
category: "event_tech"
weight: 3
screenshot: "newproject-screenshot"
icon:
  name: "chart-bar"
  viewBox: "0 0 24 24"
  path: "M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"
color:
  from: "green-50"
  to: "green-100"
  text: "green-600"
  icon: "green-400"
description:
  ko: "새로운 프로젝트 설명"
  en: "New project description"
```

2. Add screenshot (optional):
   - Save as `/static/images/portfolio/newproject-screenshot.png`

3. The project will automatically appear on the portfolio section!

## Internationalization

The site supports Korean and English languages. Translation files are located in:
- `/i18n/ko.toml` - Korean translations
- `/i18n/en.toml` - English translations

## Project Structure

```
ssuwat.com/
├── content/          # Page content
├── data/            # Data files
│   └── portfolio/   # Portfolio items
├── i18n/            # Translation files
├── layouts/         # Hugo templates
├── static/          # Static assets
│   └── images/      # Images
│       └── portfolio/  # Portfolio screenshots
├── hugo.toml        # Hugo configuration
├── package.json     # Node.js dependencies
└── tailwind.config.js  # Tailwind CSS configuration
```

## Business Information

- **Representative**: 조석규 (Seokgyu Cho)
- **Business Registration Number**: 484-16-00500
- **Email**: seokgyu.cho@ssuwat.com

## License

© 2024 SSUWAT. All rights reserved.