#!/bin/bash

echo "🚀 Building Krowd111 for production deployment..."

# Navigate to client directory
cd client

# Clean previous builds
echo "🧹 Cleaning previous builds..."
rm -rf dist
rm -rf node_modules/.vite

# Install dependencies
echo "📦 Installing dependencies..."
npm ci

# Build the project
echo "🔨 Building the project..."
npm run build

# Check if build was successful
if [ -d "dist" ]; then
    echo "✅ Build successful! Files in dist directory:"
    ls -la dist/
    echo ""
    echo "🌐 You can now deploy the 'client/dist' directory to Netlify"
    echo "📁 Make sure to set the publish directory to 'client/dist' in Netlify"
else
    echo "❌ Build failed!"
    exit 1
fi

echo "🎉 Ready for deployment!"
