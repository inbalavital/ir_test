# pip-single fixture

Single `requirements.txt` Python project.

## Expected packages
- **Direct (5):** requests, urllib3, flask, jinja2, pyyaml
- **Transitive:** chardet, idna, certifi (requests deps); werkzeug, itsdangerous, click (flask deps); MarkupSafe (jinja2)

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `requests@2.20.0` | CVE-2018-18074 | High |
| `urllib3@1.25.8` | CVE-2020-26137, CVE-2021-33503 | Medium/High |
| `flask@1.0.0` | CVE-2018-1000656 | Medium |
| `jinja2@2.10` | CVE-2019-10906, CVE-2020-28493 | High (sandbox escape, ReDoS) |
| `pyyaml@5.1` | CVE-2020-1747 | Critical (RCE via load) |

## What to validate
- Each requirement gets parsed once
- DIRECT vs TRANSITIVE classification
- File path attribution to `requirements.txt`
