# Binary Matrix

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63f25566a631dfda2493dbe767ceb84528f1ae98`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BinaryMatrix.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrix](declarations/binarymatrix.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofFunction](declarations/offunction.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rows](declarations/rows.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cols](declarations/cols.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [get](declarations/get.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [constant](declarations/constant.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [zero](declarations/zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `constant` | [m](declarations/m.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [map](declarations/map.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [zipWith](declarations/zipwith.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [complement](declarations/complement.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [transpose](declarations/transpose.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cellCount](declarations/cellcount.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsCheckerboardPattern](declarations/ischeckerboardpattern.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [actualCount](declarations/actualcount.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [countOnes](declarations/countones.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [countZeros](declarations/countzeros.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bit_eq_zero_or_one](declarations/bit-eq-zero-or-one.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bit_eq_zero_iff_not_eq_one](declarations/bit-eq-zero-iff-not-eq-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [countOnes_add_countZeros](declarations/countones-add-countzeros.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rows_ofFunction](declarations/rows-offunction.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cols_ofFunction](declarations/cols-offunction.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [get_ofFunction](declarations/get-offunction.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rows_constant](declarations/rows-constant.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cols_constant](declarations/cols-constant.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [get_constant](declarations/get-constant.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rows_zero](declarations/rows-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cols_zero](declarations/cols-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [get_zero](declarations/get-zero.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rows_map](declarations/rows-map.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cols_map](declarations/cols-map.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [get_map](declarations/get-map.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rows_zipWith](declarations/rows-zipwith.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cols_zipWith](declarations/cols-zipwith.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [get_zipWith](declarations/get-zipwith.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rows_transpose](declarations/rows-transpose.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cols_transpose](declarations/cols-transpose.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [get_transpose](declarations/get-transpose.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rows_complement](declarations/rows-complement.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cols_complement](declarations/cols-complement.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [get_complement](declarations/get-complement.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ext_entries](declarations/ext-entries.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ext](declarations/ext.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d143a6b7b4ba7cf4cadcd2d4299a3a5b7dd9bab5e750eaef579adf7d75aca489 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
