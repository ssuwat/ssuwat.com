#!/bin/bash

# Deploy script for Hugo site to gh-pages branch using existing worktree
set -e

echo "🚀 Starting deployment process..."

# Check if we're in the right directory
if [ ! -f "hugo.toml" ]; then
    echo "❌ Error: hugo.toml not found. Please run this script from the project root."
    exit 1
fi

# Define paths
DEPLOY_DIR="public"

# Check if worktree exists
if [ ! -d "$DEPLOY_DIR" ] || [ ! -e "$DEPLOY_DIR/.git" ]; then
    echo "❌ Error: gh-pages worktree not found. Please set up worktree first:"
    echo "   git worktree add public gh-pages"
    exit 1
fi

# Build the site directly to the worktree directory
echo "🔨 Building Hugo site..."
hugo --destination="$DEPLOY_DIR" --minify

# Check if build was successful
if [ ! -d "$DEPLOY_DIR" ]; then
    echo "❌ Error: Build failed. Public directory not found."
    exit 1
fi

# Navigate to deploy directory
cd "$DEPLOY_DIR"

# Add all changes
echo "📦 Adding changes..."
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "✅ No changes to deploy."
    cd - > /dev/null
    exit 0
fi

# Commit changes
commit_msg="deploy: Update site $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_msg"

# Push to remote
echo "🚀 Pushing to gh-pages branch..."
git push origin gh-pages

# Return to project root
cd - > /dev/null

echo "✅ Deployment complete!"
echo "🌐 Your site should be available at: https://ssuwat.com"