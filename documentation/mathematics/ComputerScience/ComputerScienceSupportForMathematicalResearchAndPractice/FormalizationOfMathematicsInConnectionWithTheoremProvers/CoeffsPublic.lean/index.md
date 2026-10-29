# Coeffs Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coeffs/Variante54f3c3b3027b79c3e4d61d1374dbc361ee6a6bc7220956da7d15ff003d72fc6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `609a89e2c9c80d4bca493eea627b09a48237a02f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoeffsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coeffs](declarations/coeffs.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toList](declarations/tolist.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [ofList](declarations/oflist.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [isZero](declarations/iszero.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [set](declarations/set.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [get](declarations/get.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [gcd](declarations/gcd.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [smul](declarations/smul.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [sdiv](declarations/sdiv.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [dot](declarations/dot.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [add](declarations/add.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [sub](declarations/sub.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [neg](declarations/neg.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [combo](declarations/combo.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [length](declarations/length.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [leading](declarations/leading.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [map](declarations/map.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [findIdx?](declarations/findidx.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [bmod](declarations/bmod.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [bmod_dot_sub_dot_bmod](declarations/bmod-dot-sub-dot-bmod.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bmod_length](declarations/bmod-length.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dvd_bmod_dot_sub_dot_bmod](declarations/dvd-bmod-dot-sub-dot-bmod.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [get_of_length_le](declarations/get-of-length-le.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dot_set_left](declarations/dot-set-left.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dot_sdiv_left](declarations/dot-sdiv-left.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dot_smul_left](declarations/dot-smul-left.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dot_distrib_left](declarations/dot-distrib-left.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sub_eq_add_neg](declarations/sub-eq-add-neg.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [combo_eq_smul_add_smul](declarations/combo-eq-smul-add-smul.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_dvd_dot_left](declarations/gcd-dvd-dot-left.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_length](declarations/map-length.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dot_nil_right](declarations/dot-nil-right.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [get_nil](declarations/get-nil.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dot_neg_left](declarations/dot-neg-left.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=831e431896d26001d148f37c14ad75ebffb8b1255e068e7048293195911075da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coeffs/Variante54f3c3b3027b79c3e4d61d1374dbc361ee6a6bc7220956da7d15ff003d72fc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
