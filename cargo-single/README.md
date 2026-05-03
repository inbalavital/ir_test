# cargo-single fixture

Single Rust crate with vulnerable dependencies.

## Expected packages
- **Direct (5):** serde, tokio, openssl, hyper, chrono

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `openssl@0.10.30` | RUSTSEC-2023-0044 | High |
| `tokio@1.0.0` | CVE-2021-38191 | High (race condition) |
| `hyper@0.14.0` | RUSTSEC-2021-0078, RUSTSEC-2021-0079 | High |
| `chrono@0.4.0` | RUSTSEC-2020-0159 | Medium |

## What to validate
- Cargo.toml + Cargo.lock parsed
- See [`test_parse_cargo_bom.py`](cas/apps/scanner-sca/common/sca_assets_common/tests/dt_builder/test_parse_cargo_bom.py)
- Cargo uses `Lifecycle.BUILD` in cdxgen
