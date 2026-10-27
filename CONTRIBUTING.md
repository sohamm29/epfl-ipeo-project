# Contributing Guide

Basic Steps to contribute and Setup this Project.

## 1. Clone the Repository

Clone the repository and navigate into the project directory:

```bash
git clone git@github.com:sohamm29/epfl-ipeo-project.git
cd epfl-ipeo-project
git checkout dev
```

Install dependencies using [uv](https://docs.astral.sh/uv/):

```bash
uv sync --all-extras --dev
```

## 2. Development Workflow

### Step 1: Create an Issue

Before writing code, [create a new issue](https://github.com/sohamm29/epfl-ipeo-project/issues/new/choose) on GitHub to describe the bug, feature, or documentation update you are working on.

### Step 2: Create a Branch from the Issue

Create a new branch linked to the issue and based on the **`dev`** branch:

- **Via GitHub UI:** On the Issues tab, create/choose your issue and click **"Create a branch"** under the *Development* section in the right sidebar, and make sure the branch source is set to `dev`. Then fetch and check it out locally:

  ```bash
  git fetch origin
  git checkout <issue-branch-name>
  ```

### Step 3: Make Changes and Run Local CI

Implement your changes and add/update tests as needed. Before pushing, run the local CI script to ensure everything passes:

```bash
./scripts/ci.sh
```

This script runs:

- `uv sync --all-extras --dev` (dependency check)
- `pre-commit` hooks across all files
- `ruff check` and `ruff format --check` (linting and formatting)

Fix any reported issues until `./scripts/ci.sh` completes without errors.

### Step 4: Open a Pull Request to `dev`

1. Push your branch to GitHub:

   ```bash
   git push -u origin <your-branch-name>
   ```

2. Open a Pull Request on GitHub with:

   - **Base branch:** `dev`
   - **Compare branch:** `<your-branch-name>`

3. Fill out the PR template and link the issue (e.g., `Closes #<issue-number>`).
