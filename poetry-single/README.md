# poetry-single fixture

Single Poetry-managed Python project.

NOTE: CAS treats Poetry/UV pyproject.toml via `PIP` or `UV` PackageManager (see [`pyproject_toml_dt_scan.py`](cas/apps/scanner-sca/common/sca_assets_common/sca_assets_common/pyproject_toml/pyproject_toml_dt_scan.py:18)).

## Expected packages
- **Direct prod (5):** requests, urllib3, flask, jinja2, pyyaml
- **Direct dev (1):** pytest
- **Transitive:** chardet, idna, certifi, werkzeug, itsdangerous, click, MarkupSafe

## Known CVEs
Same as `pip-single`.

## What to validate
- pyproject.toml + poetry.lock parsed together
- Dev/prod separation maintained (`category = "dev"`)
