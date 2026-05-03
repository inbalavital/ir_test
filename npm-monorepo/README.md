# npm-monorepo fixture

npm workspaces monorepo with cross-module dependencies — **critical** for testing the maven single-iteration fix on multi-module projects.

## Structure
```
packages/
  pkg-a  (leaf)            -> lodash, minimist
  pkg-b  (depends on pkg-a) -> axios, express
  pkg-c  (depends on a, b)  -> node-fetch
```

## Cross-module deps
- `pkg-b` depends on `pkg-a`
- `pkg-c` depends on both `pkg-a` and `pkg-b`

## Expected packages
- **Direct external (6):** lodash, minimist, axios, express, node-fetch, typescript (dev)
- **Direct internal (3):** @fixture/pkg-a, @fixture/pkg-b — appear as components of pkg-b/pkg-c
- **Transitive:** follow-redirects, plus express deps

## Known CVEs
Same as `npm-single`. Critical assertion: each CVE should be reported **once per unique package**, not duplicated per workspace where it appears (unless per-module attribution is required).

## What to validate
1. No duplicate `strongId` across workspaces for the same package version
2. `pkg-a` is attributed to all 3 packages that depend on it (direct/transitive chain)
3. Dev dep classification preserved on `typescript`
4. `main_manifest_file_path` for cross-module internal packages points to their own `package.json`
