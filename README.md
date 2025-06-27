# 🚀 Robot Framework Test Automation

This repository contains Robot Framework tests that can be run locally or via GitHub Actions.

---

## ⚙️ **Setup instructions**

### 1️⃣ Install Python dependencies

Make sure you have **Python 3.10+** installed.

Install required packages:
```bash
pip install -r requirements.txt

You can trigger tests manually using GitHub Actions:

1️⃣ Go to your repository’s Actions tab
2️⃣ Select the workflow: Run Test based on Tag
3️⃣ Click Run workflow
4️⃣ Input your desired mark (e.g., buy)
5️⃣ Click Run workflow

✅ The workflow will:

- Run tests filtered by the specified tag

- Upload the test reports to the run’s Artifacts
