#!/bin/bash

# Download NLTK data
python -c "import nltk; nltk.download('punkt'); nltk.download('stopwords'); nltk.download('wordnet'); nltk.download('averaged_perceptron_tagger')"

# Download spaCy model
python -m spacy download en_core_web_sm

# Initialize database
python -c "from app import app, db; app.app_context().push(); db.create_all()"

echo "Setup complete!"
