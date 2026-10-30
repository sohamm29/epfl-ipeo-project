# Image Processing and Earth Observation Semester Project: cool ass name

bla bla bla

<!-- Badge URLs point at this repository; update the owner/repo path after generating a new repository from this template -->
[![CI](https://github.com/sohamm29/epfl-ipeo-project/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/sohamm29/epfl-ipeo-project/actions/workflows/ci.yml)

[![Python 3.12+](https://img.shields.io/badge/python-3.12+-blue.svg?logo=python&logoColor=white)](https://www.python.org/downloads/)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)

</div>

---

## Project Structure

```
epfl-ipeo-project/
├── .github/                            # CI/CD Workflows and Issue/PR Templates
├── assets/                             # Image files, pictures to put in notebooks or README
├── docs/                               # Documentation files
├── notebooks/                          # Sandbox testing in notebook form, to try out different techniques or explore datasets
├── scripts/                            # Utility automation scripts
├── src/                                # Main project code
├── .dockerignore                       # Files to ignore when building docker image
├── .editorconfig                       # VSCode specific configurations to emulate same dev configuration
├── .gitattributes                      # General git configuration (remap all CRLF to LF, for uniform line endings)
├── .gitconfig                          # Useful git alias for use in the project
├── .gitignore                          # Files to ignore when commiting to remote (e.g. venv or cache)
├── .pre-commit-config.yaml             # Pre-commit hooks config
├── .python-version                     # specifies project python version
├── pyproject.toml                      # Project dependencies & config
├── CONTRIBUTING.md                     # Explains how to contribute to this project, issue creation, branch policy, ci checks etc
├── Dockerfile                          # Creation of containerized docker image
├── README.md                           # This file
└──  uv.lock                            # UV package manager lock file
```

---

## Setup and Execution

See the [Contributing Guide](CONTRIBUTING.md) for instructions on cloning the repository, setting up the environment with `uv`, and following the development workflow. Once dependencies are installed, you can run the main script using `uv`:

```bash
uv run src/main.py
```

---

## Documentation

Comprehensive documentation is available in the `docs/` directory:

| Document | Description |
| --- | --- |
| [Test](docs/test.md) | Template doc placeholder. |

---

## Contributors

- [Soham Malhotra](https://github.com/sohamm29)
- [Justin Lungu](https://github.com/JustinLungu)
- [Edouard Egger](https://github.com/sohamm29)
