# cargo-monorepo fixture

Cargo workspace with cross-crate path deps.

## Structure
```
Cargo.toml (workspace)
crates/app/Cargo.toml      -> path:lib-a, path:lib-b, tokio
crates/lib-a/Cargo.toml    -> serde, openssl
crates/lib-b/Cargo.toml    -> path:lib-a, hyper, chrono
```

## Cross-crate deps
- app → lib-a + lib-b
- lib-b → lib-a

## Expected packages
External: serde, tokio, openssl, hyper, chrono  
Internal workspace members: lib-a, lib-b

## What to validate
- Workspace produces single Cargo.lock; cdxgen sees all members at once
- Path-deps don't appear as external packages
- File path attribution per crate's Cargo.toml
