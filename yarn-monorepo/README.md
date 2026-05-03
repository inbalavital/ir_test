# yarn-monorepo fixture

yarn workspaces with cross-module deps.

## Structure
```
pkg-a -> lodash
pkg-b -> pkg-a, axios
pkg-c -> pkg-a, pkg-b, minimist
```

## Cross-module deps
- pkg-b → pkg-a
- pkg-c → pkg-a + pkg-b

## Expected packages
External: lodash, axios, follow-redirects, minimist, typescript

## What to validate
- yarn workspaces hoisting handled correctly
- Each workspace pkg gets its own manifest path attribution
- No duplicate strongIds for shared deps
