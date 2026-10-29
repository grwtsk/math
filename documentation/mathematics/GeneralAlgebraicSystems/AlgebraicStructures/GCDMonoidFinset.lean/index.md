# GCDMonoid Finset

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9aa56561e121caaaa684b69c546fe3c0709a2fb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidFinset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](declarations/lcm.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lcm_def](declarations/lcm-def.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lcm_empty](declarations/lcm-empty.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lcm_dvd_iff](declarations/lcm-dvd-iff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dvd_lcm](declarations/dvd-lcm.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lcm_insert](declarations/lcm-insert.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lcm_singleton](declarations/lcm-singleton.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalize_lcm](declarations/normalize-lcm.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lcm_union](declarations/lcm-union.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lcm_congr](declarations/lcm-congr.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lcm_mono_fun](declarations/lcm-mono-fun.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lcm_mono](declarations/lcm-mono.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lcm_image](declarations/lcm-image.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lcm_eq_lcm_image](declarations/lcm-eq-lcm-image.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lcm_eq_zero_iff](declarations/lcm-eq-zero-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [gcd](declarations/gcd.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gcd_def](declarations/gcd-def.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_empty](declarations/gcd-empty.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gcd_dvd](declarations/gcd-dvd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [gcd_insert](declarations/gcd-insert.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gcd_singleton](declarations/gcd-singleton.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normalize_gcd](declarations/normalize-gcd.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gcd_union](declarations/gcd-union.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gcd_congr](declarations/gcd-congr.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_mono_fun](declarations/gcd-mono-fun.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_mono](declarations/gcd-mono.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_image](declarations/gcd-image.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_eq_gcd_image](declarations/gcd-eq-gcd-image.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_eq_gcd_filter_ne_zero](declarations/gcd-eq-gcd-filter-ne-zero.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [extract_gcd'](declarations/extract-gcd.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [extract_gcd](declarations/extract-gcd-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_eq_of_dvd_sub](declarations/gcd-eq-of-dvd-sub.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f967ce8d1d9616a8a5b531af446ac096517da0101bbcab008e6ddf312c47b6fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
