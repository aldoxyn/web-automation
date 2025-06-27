# 🚀 Robot Framework Test Automation

This repository contains Robot Framework tests that can be run locally or via GitHub Actions.

---

## ⚙️ **Setup instructions**

- Install Python dependencies (Make sure you have **Python 3.10+** installed.)

- Install required packages: `pip install -r requirements.txt`

## ⚙️ **Running Local**

Run tests by specifying a tag (mark) or suite:
```
robot --include <your_tag_or_mark> tests/
```


## ⚙️ **Github Actions**

You can trigger tests manually using GitHub Actions:

- Go to your repository’s Actions tab
- Select the workflow: Run Test based on Tag
- Click Run workflow
- Input your desired tag (e.g., buy)
- Click Run workflow

✅ The workflow will:

- Run tests filtered by the specified tag

- Upload the test reports to the run’s Artifacts
