# pip-monorepo fixture

Multiple sub-projects each with their own `requirements.txt`.

## Structure
```
services/api/requirements.txt        -> flask, requests, pyyaml
services/worker/requirements.txt     -> requests, urllib3, celery
libs/shared/requirements.txt         -> jinja2, pyyaml
```

## Cross-module overlap
- `requests` appears in both `api` and `worker`
- `pyyaml` appears in both `api` and `shared`

## Expected packages
**Distinct:** flask, requests, urllib3, celery, jinja2, pyyaml + transitives

## Critical assertion
For each shared package (e.g. `requests@2.20.0`):
- BEFORE fix: may appear duplicated per requirements.txt → multiple strongIds
- AFTER fix: single strongId, with file path attribution to ALL requirements.txt files containing it
