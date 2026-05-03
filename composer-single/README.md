# composer-single fixture

Single PHP composer project.

## Expected packages
- **Direct (4):** guzzlehttp/guzzle, symfony/http-foundation, monolog/monolog, phpmailer/phpmailer
- **Direct dev (1):** phpunit/phpunit

## Known CVEs
| Package | CVE | Severity |
|---|---|---|
| `guzzlehttp/guzzle@6.5.0` | CVE-2022-29248 | High |
| `symfony/http-foundation@4.4.0` | CVE-2021-21424 | High |
| `monolog/monolog@1.25.0` | CVE-2022-24828 (via psr/log) | Medium |
| `phpmailer/phpmailer@6.1.0` | CVE-2020-13625 | High (XSS) |

## What to validate
- composer.json + composer.lock parsed
- See [`test_parse_composer_bom.py`](cas/apps/scanner-sca/common/sca_assets_common/tests/dt_builder/test_parse_composer_bom.py)
- COMPOSER uses `/` as group delimiter (see [`graph_helpers.py`](cas/apps/scanner-sca/common/sca_assets_common/sca_assets_common/dt_builder/parse_cdxgen_bom/graph_helpers.py:12))
