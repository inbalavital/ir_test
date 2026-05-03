# poetry-monorepo fixture

Multi-pyproject layout simulating a Poetry "workspace" (Poetry doesn't natively support workspaces, so we use path-deps).

## Structure
```
services/api/pyproject.toml      -> flask, requests, shared-lib (path)
services/worker/pyproject.toml   -> celery, requests, urllib3, shared-lib (path)
libs/shared/pyproject.toml       -> jinja2, pyyaml
```

## Cross-module deps
- api → shared-lib (path dep)
- worker → shared-lib (path dep)
- Both api & worker share `requests`

## Expected packages
External: flask, requests, urllib3, celery, jinja2, pyyaml + transitives  
Internal: shared-lib (referenced by api & worker)

## What to validate
- Each pyproject.toml is treated as a project root
- Path-deps to local packages don't break parsing
- Shared external deps deduplicated by strongId
- File path attribution per pyproject.toml
