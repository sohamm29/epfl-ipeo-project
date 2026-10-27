# Mirrors the CI workflows (ci.yml, ruff.yml, pytest.yml) so failures can be
# caught locally before pushing.
$ErrorActionPreference = "Stop"
Set-Location (Split-Path -Parent $PSScriptRoot)

Write-Host "==> Sync dependencies"
uv sync --all-extras --dev
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "==> Pre-commit hooks"
uv run pre-commit run --all-files
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "==> Ruff lint"
uv run ruff check .
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "==> Ruff format"
uv run ruff format --check .
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
