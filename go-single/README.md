# go-single fixture

Single Go module.

## Expected packages
- **Direct (4):** gin-gonic/gin, golang.org/x/crypto, dgrijalva/jwt-go, yaml.v2
- **Transitive:** various gin/crypto deps

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `golang.org/x/crypto@v0.0.0-20190308221718-c2843e01d9a2` | CVE-2019-11840 | High |
| `dgrijalva/jwt-go@3.2.0+incompatible` | CVE-2020-26160 | High (auth bypass) |
| `yaml.v2@2.2.2` | CVE-2019-11254 | Medium (DoS) |
| `gin-gonic/gin@1.6.0` | CVE-2020-28483 | High |

## What to validate
- go.mod + go.sum parsed
- pseudo-versions (`v0.0.0-...`) handled
- `+incompatible` suffix handled
