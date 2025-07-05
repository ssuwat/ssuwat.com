# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the promotional website for SSUWAT, a company specializing in custom web solutions. Services include:
- Web pages
- E-commerce platforms
- Community sites
- Admin consoles
- Other custom web applications

The site will be built using Hugo static site generator with custom templates (no external themes). The repository currently contains basic git configuration and IDE settings from previous cleanup.

## Repository Structure

The repository is currently in a minimal state with most content files removed (based on recent "Remove unused files" commit). The main directories referenced in .gitignore suggest a typical Hugo project structure:

- `public/` - Build output directory (gitignored)
- `.idea/` - IntelliJ IDEA configuration (gitignored)

## Development Approach

This project uses Hugo with custom templates instead of external themes. The git submodule configuration for external themes will be removed as the site will be built from scratch.

## Development Notes

- The repository appears to be in a cleanup/restructuring phase
- No build tools, package managers, or configuration files are currently present
- Previous commits suggest this was a Hugo static site that has been stripped down
- Future development would likely involve re-adding Hugo configuration and content

## Common Commands

Since this is currently a minimal repository without build tools:
- `git status` - Check repository status
- `git submodule status` - Check submodule status
- `git submodule update --init --recursive` - Initialize submodules if needed

When Hugo is set up, typical commands will be:
- `hugo server` - Start development server
- `hugo build` - Build static site
- `hugo new site .` - Initialize Hugo site (if needed)
- `hugo new content/posts/example.md` - Create new content