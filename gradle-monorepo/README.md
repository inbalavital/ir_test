# gradle-monorepo fixture

Multi-project Gradle build — **directly analogous to Maven multi-module**, the primary regression target.

## Structure
```
settings.gradle (include 'app', 'lib-a', 'lib-b')
app/build.gradle      -> :lib-a, :lib-b, spring-core, junit (test)
lib-a/build.gradle    -> log4j-core, jackson-databind
lib-b/build.gradle    -> :lib-a, commons-collections
```

## Cross-module deps
- app → lib-a + lib-b
- lib-b → lib-a

## Expected packages
External: log4j-core, jackson-databind, spring-core, commons-collections, junit + transitives  
Internal: lib-a, lib-b

## Critical assertion (mirrors maven fix)
- Single scan of root produces ONE BOM with **all subprojects** and their dependencies
- Each external dep deduplicated by strongId
- `lib-a` attributed to BOTH app and lib-b (its consumers)
- `GradleOriginMapper` correctly maps each component to the originating `build.gradle`
- Per-module attribution preserved (asset.file_path)
