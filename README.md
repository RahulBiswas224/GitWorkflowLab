# 🚀 Git Workflow Lab (`GitWorkflowLab`)

An interactive, practical repository designed to showcase advanced Git techniques, multi-branch workflow automation, custom Git hooks, and visual commit log tracking.

---

## 🛠️ Key Features

* **Multi-Branch Synchronization:** Automated shell scripting (`SyncAllFeatureBranches.sh`) that propagates changes from `main` across all feature branches (`feature-auth`, `feature-middleware`, `feature-login`, `feature-logout`).
* **Automated Commit Logging:** Custom Git hooks that generate and maintain a complete, formatted commit log history (`git_commit_log.txt`) automatically on every commit.
* **Visual Git Tracking:** Integrated with visual extensions like **Git Graph** for real-time repository visualization.

---

## 📁 Repository Structure

```text
GitWorkflowLab/
├── .git/hooks/              # Custom Git hooks (e.g., pre-commit logging)
├── SyncAllFeatureBranches.sh# Shell script to sync main into all feature branches
├── git_commit_log.txt       # Auto-generated complete commit log graph
├── app.js                   # Primary app codebase
├── love.js                  # Helper module / special assets
└── README.md                # Project documentation
```

---

## ⚙️ How the Auto-Logging Hook Works

This repository uses a local `.git/hooks/pre-commit` script that automatically captures the commit history across all branches before each commit snapshot:

```bash
#!/bin/bash

if [ "$GIT_LOG_HOOK_RUNNING" = "1" ]; then
    exit 0
fi
export GIT_LOG_HOOK_RUNNING=1

LOG_FILE="git_commit_log.txt"

# Generate updated multi-branch history
git --no-pager log --all --graph --decorate --pretty=format:"%h - %an, %ar : %s" > "$LOG_FILE"

# Auto-stage the updated log file
git add "$LOG_FILE"
```

---

## 🚀 Quick Start & Usage

### 1. Clone the Repository

```bash
git clone https://github.com/RahulBiswas224/GitWorkflowLab.git
cd GitWorkflowLab
```

### 2. View Visual History in Terminal

To inspect the multi-branch history graph directly in Git Bash:

```bash
git log --all --graph --oneline --decorate
```

### 3. Sync Changes Across Branches

To merge updates from `main` into all active feature branches at once:

```bash
./SyncAllFeatureBranches.sh
```

---

## 👨‍💻 Author

* Rahul Biswas — [GitHub Profile](https://github.com/RahulBiswas224)