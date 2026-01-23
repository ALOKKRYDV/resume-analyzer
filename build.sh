#!/bin/bash
set -e

echo "Starting build process..."

# Upgrade pip
pip install --upgrade pip setuptools wheel

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Download NLTK data
echo "Downloading NLTK data..."
python -c "import nltk; nltk.download('punkt', quiet=True); nltk.download('stopwords', quiet=True); nltk.download('wordnet', quiet=True); nltk.download('averaged_perceptron_tagger', quiet=True)"

# Verify spaCy model
echo "Verifying spaCy model..."
python -c "import spacy; nlp = spacy.load('en_core_web_sm'); print('SpaCy model loaded successfully')"

echo "Build complete!"
