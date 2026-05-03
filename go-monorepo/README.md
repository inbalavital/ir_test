# go-monorepo fixture

Go workspaces (`go.work`) with multiple modules.

## Structure
```
go.work                       (workspace)
services/api/go.mod           -> gin, shared (replace path)
services/worker/go.mod        -> jwt-go, x/crypto, shared (replace path)
libs/shared/go.mod            -> yaml.v2
```

## Cross-module deps
- api → shared (via `replace`)
- worker → shared (via `replace`)

## Expected packages
External: gin-gonic/gin, dgrijalva/jwt-go, golang.org/x/crypto, gopkg.in/yaml.v2

## What to validate
- Each `go.mod` is parsed independently
- `replace` directives don't cause duplicates of `shared` in external listing
- Workspace mode (`go.work`) handled correctly by cdxgen
- File path attribution per module's go.mod
