# AI-Powered Resume Analyzer

An AI-powered resume analyzer built with Flask that matches candidate resumes to job descriptions, calculates a match score, and shows matched skills, missing skills, and recommendations.

## Features

- Resume upload support for PDF, DOCX, and DOC files
- Job posting and application management
- Resume parsing for skills, education, experience, and contact details
- Resume-to-job matching with match score and recommendations
- Candidate and company dashboards
- Application result view with detailed analysis

## Tech Stack

- Python
- Flask
- Flask-SQLAlchemy
- SQLite
- PyPDF2
- python-docx
- NLTK
- HTML, CSS, JavaScript

## Prerequisites

- Python installed on your machine
- A virtual environment named `venv` in the project root

## Setup

1. Open the project folder.
2. Create and activate the virtual environment if it does not already exist.

```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
```

3. Install the dependencies.

```powershell
.\venv\Scripts\python.exe -m pip install -r requirements.txt
```

## Run the App

From the project root, start the application with:

```powershell
.\venv\Scripts\python.exe app.py
```

Then open:

```text
http://127.0.0.1:5000
```

If you already activated the virtual environment, you can also use:

```powershell
python app.py
```

## Project Structure

```text
resume analyzer/
├── app.py
├── models.py
├── resume_parser.py
├── nlp_matcher.py
├── requirements.txt
├── runtime.txt
├── templates/
├── static/
└── uploads/
```

## Main Pages

- Home page
- Candidate dashboard
- Company dashboard
- Post job page
- Job details page
- Apply job page
- Application result page
- View applications page

## Notes

- The app creates the database automatically on first run.
- Uploaded resumes are stored in the `uploads/` folder.
- If imports are shown as unresolved in VS Code, make sure the workspace interpreter points to `venv\\Scripts\\python.exe`.

## License

No license has been specified for this project.