# pnpm-monorepo fixture

pnpm workspaces with workspace protocol cross-module deps.

## Structure
```
pkg-a -> lodash
pkg-b -> pkg-a (workspace:*), axios
pkg-c -> pkg-b (workspace:*), minimist
```

## Cross-module deps via `workspace:*`
- pkg-b depends on pkg-a
- pkg-c depends on pkg-b → transitively on pkg-a

## Expected packages
- External: lodash, axios, follow-redirects, minimist, typescript
- Workspace internal: pkg-a, pkg-b (referenced by other workspace pkgs)

## What to validate
- `workspace:*` resolved correctly
- No phantom deps from pnpm hoisting
- Each workspace package's `main_manifest_file_path` points to its own `package.json`
- Each external package appears once (uniquely keyed)
