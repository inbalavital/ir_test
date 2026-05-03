# npm-single fixture

Single `package.json` project for SCA scanner regression testing.

## Expected packages
- **Direct (6):** `lodash@4.17.15`, `axios@0.21.0`, `express@4.16.0`, `minimist@1.2.0`, `node-fetch@2.6.0`, `mocha@8.0.0` (dev)
- **Transitive (3):** `follow-redirects@1.13.0`, `qs@6.5.1`, plus mocha sub-deps
- **Total unique packages:** ~9 (depending on cdxgen depth)

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `lodash@4.17.15` | CVE-2019-10744, CVE-2020-8203 | High (prototype pollution) |
| `axios@0.21.0` | CVE-2020-28168 | Medium (SSRF) |
| `minimist@1.2.0` | CVE-2020-7598 | Critical (prototype pollution) |
| `node-fetch@2.6.0` | CVE-2020-15168 | High |
| `qs@6.5.1` (transitive) | CVE-2022-24999 | High |

## Cross-module deps
N/A (single project).

## What scanner should produce
- One asset per unique package, all attributed to `package.json` / `package-lock.json`
- DIRECT vs TRANSITIVE classification preserved
- Dev dep flag on `mocha`
