# pnpm-single fixture

Single project using pnpm. Note: cdxgen treats pnpm as `npm` project type with the pnpm-lock.yaml lockfile.

## Expected packages
- **Direct (5):** lodash, axios, express, minimist, typescript (dev)
- **Transitive:** follow-redirects + express deps

## Known CVEs
Same vulnerable versions as `npm-single`.

## What to validate
- pnpm-lock.yaml is parsed correctly (not just package.json)
- Dev/prod separation maintained
