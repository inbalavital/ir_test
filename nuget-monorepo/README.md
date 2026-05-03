# nuget-monorepo fixture

.NET solution with multiple projects + ProjectReference cross-deps.

## Structure
```
Solution.sln
src/App/App.csproj   -> Newtonsoft.Json, ref LibA, ref LibB
src/LibA/LibA.csproj -> log4net
src/LibB/LibB.csproj -> System.Text.Encodings.Web, ref LibA
```

## Cross-module deps
- App → LibA + LibB
- LibB → LibA

## Expected packages
External: Newtonsoft.Json, log4net, System.Text.Encodings.Web

## What to validate
- Each csproj scanned independently OR rolled-up from .sln
- ProjectReference doesn't pollute external listing
- `_get_csproj_path` correctly attributes packages to their owning csproj (per-module attribution)
- No duplicate strongIds for shared deps if any
