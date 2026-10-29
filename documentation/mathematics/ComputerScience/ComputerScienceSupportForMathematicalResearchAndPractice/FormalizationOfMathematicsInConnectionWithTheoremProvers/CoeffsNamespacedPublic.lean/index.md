# Coeffs Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coeffs/Variant9391561c99e9d32bbb1e063668c96d52944330cde57388d73e83b0afd153bd61.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4f5ced59d893e7c6da450f1693333477f8d14d4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoeffsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coeffs](declarations/coeffs.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toList](declarations/tolist.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [ofList](declarations/oflist.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [isZero](declarations/iszero.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [set](declarations/set.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [get](declarations/get.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [gcd](declarations/gcd.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [smul](declarations/smul.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [sdiv](declarations/sdiv.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [dot](declarations/dot.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [add](declarations/add.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [sub](declarations/sub.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [neg](declarations/neg.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [combo](declarations/combo.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [length](declarations/length.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [leading](declarations/leading.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [map](declarations/map.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [findIdx?](declarations/findidx.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [bmod](declarations/bmod.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [bmod_dot_sub_dot_bmod](declarations/bmod-dot-sub-dot-bmod.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bmod_length](declarations/bmod-length.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dvd_bmod_dot_sub_dot_bmod](declarations/dvd-bmod-dot-sub-dot-bmod.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [get_of_length_le](declarations/get-of-length-le.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dot_set_left](declarations/dot-set-left.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dot_sdiv_left](declarations/dot-sdiv-left.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dot_smul_left](declarations/dot-smul-left.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dot_distrib_left](declarations/dot-distrib-left.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sub_eq_add_neg](declarations/sub-eq-add-neg.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [combo_eq_smul_add_smul](declarations/combo-eq-smul-add-smul.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_dvd_dot_left](declarations/gcd-dvd-dot-left.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_length](declarations/map-length.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dot_nil_right](declarations/dot-nil-right.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [get_nil](declarations/get-nil.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dot_neg_left](declarations/dot-neg-left.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c3d25d296dbbe0caeb4170ac81f0fdaf8c7016a12dc60d415bcd73c134d568b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coeffs/Variant9391561c99e9d32bbb1e063668c96d52944330cde57388d73e83b0afd153bd61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
