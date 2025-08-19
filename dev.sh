#!/bin/bash

# Quick development script for local Jekyll site
# This allows you to experiment quickly without GitHub Actions

echo "🚀 Starting local Jekyll development server..."
echo "📁 Working directory: $(pwd)"

# Set PATH for local gems
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# Set bundle config to use local vendor directory
bundle config set --local path 'vendor/bundle'

# Start Jekyll server with live reload
echo "📡 Starting server at http://127.0.0.1:4000"
echo "🔄 Live reload enabled - changes will be reflected automatically"
echo "⛔ Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --livereload --drafts --future --incremental