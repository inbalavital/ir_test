# gradle-single fixture

Single Gradle build with vulnerable dependencies.

## Expected packages
- **Direct (5):** log4j-core, jackson-databind, spring-core, commons-collections, junit (test)
- **Transitive:** log4j-api, jackson-core, jackson-annotations, spring-jcl, hamcrest

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `log4j-core@2.14.0` | CVE-2021-44228 (Log4Shell) | Critical |
| `jackson-databind@2.9.10` | CVE-2019-14439, CVE-2020-36518 | High (RCE) |
| `commons-collections@3.2.1` | CVE-2015-7501 | Critical (deserialization RCE) |
| `spring-core@5.2.0.RELEASE` | CVE-2022-22965 (Spring4Shell) | Critical |

## What to validate
- build.gradle parsed (uses GradleOriginMapper)
- testImplementation classified properly
- Transitive deps included
