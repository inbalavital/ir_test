# nuget-single fixture

Single .NET project with `.csproj` + `packages.lock.json`.

## Expected packages
- **Direct (4):** Newtonsoft.Json, System.Text.Encodings.Web, Microsoft.AspNetCore.Http.Connections, log4net

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `Newtonsoft.Json@12.0.3` | CVE-2024-21907 | High (DoS) |
| `System.Text.Encodings.Web@4.7.1` | CVE-2021-26701 | Critical (RCE) |
| `Microsoft.AspNetCore.Http.Connections@1.1.0` | CVE-2020-1597 | High |
| `log4net@2.0.8` | CVE-2018-1285 | High |

## What to validate
- `_get_csproj_path` resolution in [`source_file_resolver.py`](cas/apps/scanner-sca/common/sca_assets_common/sca_assets_common/dt_builder/parse_cdxgen_bom/source_file_resolver.py:34) works
- src_file is rewritten to point to .csproj
