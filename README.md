# Vulnerable NPM Test Repository

**WARNING: This repository is intentionally vulnerable. DO NOT use in production.**

This repository was generated for security scanner testing purposes.
It contains a single `package.json` with 869 dependencies,
all referencing NPM packages at known-vulnerable versions with critical and high severity CVEs.

## Estimated Issues

- **Unique packages:** 869
- **Estimated critical/high CVEs:** ~973

## Usage

Run any SCA scanner against this repo:

```bash
# npm audit (requires lockfile first)
npm i --package-lock-only --ignore-scripts
npm audit

# Or use CAS, Snyk, Trivy, etc. — they can scan package.json directly
```

## Generated

Date: 2026-09-22T08:13:02.506Z
Generator: generate.js
