# composer-monorepo fixture

Composer doesn't have native workspaces; we use **path repositories** to share local packages.

## Structure
```
composer.json (root)              -> path repos lib-a, lib-b; symfony/http-foundation
packages/lib-a/composer.json      -> monolog/monolog
packages/lib-b/composer.json      -> path:lib-a, guzzlehttp/guzzle
```

## Cross-module deps
- root → lib-a + lib-b (path repos)
- lib-b → lib-a (path repo)

## Expected packages
External: monolog/monolog, guzzlehttp/guzzle, symfony/http-foundation  
Internal: fixture/lib-a, fixture/lib-b

## What to validate
- Each composer.json scanned independently
- Path-deps don't pollute external listing
- Composer's `/` namespace delimiter handled correctly (`vendor/package`)
- File path attribution per composer.json
