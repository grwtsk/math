# GCDMonoid Finset Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `621944666a4b689301958380f6885eb3178ed201`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidFinsetNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](declarations/lcm.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lcm_def](declarations/lcm-def.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lcm_empty](declarations/lcm-empty.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lcm_dvd_iff](declarations/lcm-dvd-iff.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dvd_lcm](declarations/dvd-lcm.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lcm_insert](declarations/lcm-insert.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lcm_singleton](declarations/lcm-singleton.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalize_lcm](declarations/normalize-lcm.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lcm_union](declarations/lcm-union.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lcm_congr](declarations/lcm-congr.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lcm_mono_fun](declarations/lcm-mono-fun.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lcm_mono](declarations/lcm-mono.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lcm_image](declarations/lcm-image.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lcm_eq_lcm_image](declarations/lcm-eq-lcm-image.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lcm_eq_zero_iff](declarations/lcm-eq-zero-iff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lcm_ne_zero_iff](declarations/lcm-ne-zero-iff.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [gcd](declarations/gcd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_def](declarations/gcd-def.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gcd_empty](declarations/gcd-empty.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gcd_dvd](declarations/gcd-dvd.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gcd_cons](declarations/gcd-cons.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_insert](declarations/gcd-insert.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gcd_singleton](declarations/gcd-singleton.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [normalize_gcd](declarations/normalize-gcd.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_union](declarations/gcd-union.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_congr](declarations/gcd-congr.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_mono_fun](declarations/gcd-mono-fun.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_mono](declarations/gcd-mono.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_image](declarations/gcd-image.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_eq_gcd_image](declarations/gcd-eq-gcd-image.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_ne_zero_iff](declarations/gcd-ne-zero-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gcd_eq_gcd_filter_ne_zero](declarations/gcd-eq-gcd-filter-ne-zero.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_mul_left'](declarations/gcd-mul-left.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_mul_right'](declarations/gcd-mul-right.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [extract_gcd'](declarations/extract-gcd.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [extract_gcd](declarations/extract-gcd-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [gcd_div_eq_one](declarations/gcd-div-eq-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [gcd_div_id_eq_one](declarations/gcd-div-id-eq-one.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_eq_of_dvd_sub](declarations/gcd-eq-of-dvd-sub.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Int.finsetGcd_nonneg](declarations/int-finsetgcd-nonneg.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=948c0d5d64e66d797c947fdfed225bd96e38fd95ba5e7626a89f0eb2c8820386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant8ed90a9a49c7d58aec3ef256a3e4c8084aeb92bcfc80fd2783d452fc5f92c866.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
