# Binary Matrix Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant33fccbc31536a12e2b0fe336642735778b0f5de2d05946041257c13cc3e59a80.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9dd94ec707737f5bee59a4cc47a333946d42ab0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BinaryMatrixNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrix](declarations/binarymatrix.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofFunction](declarations/offunction.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rows](declarations/rows.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cols](declarations/cols.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [get](declarations/get.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [constant](declarations/constant.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [zero](declarations/zero.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `constant` | [m](declarations/m.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [map](declarations/map.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [zipWith](declarations/zipwith.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [complement](declarations/complement.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [transpose](declarations/transpose.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cellCount](declarations/cellcount.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsCheckerboardPattern](declarations/ischeckerboardpattern.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [actualCount](declarations/actualcount.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [countOnes](declarations/countones.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [countZeros](declarations/countzeros.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bit_eq_zero_or_one](declarations/bit-eq-zero-or-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bit_eq_zero_iff_not_eq_one](declarations/bit-eq-zero-iff-not-eq-one.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [countOnes_add_countZeros](declarations/countones-add-countzeros.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rows_ofFunction](declarations/rows-offunction.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cols_ofFunction](declarations/cols-offunction.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [get_ofFunction](declarations/get-offunction.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rows_constant](declarations/rows-constant.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cols_constant](declarations/cols-constant.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [get_constant](declarations/get-constant.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rows_zero](declarations/rows-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cols_zero](declarations/cols-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [get_zero](declarations/get-zero.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rows_map](declarations/rows-map.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cols_map](declarations/cols-map.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [get_map](declarations/get-map.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rows_zipWith](declarations/rows-zipwith.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cols_zipWith](declarations/cols-zipwith.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [get_zipWith](declarations/get-zipwith.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rows_transpose](declarations/rows-transpose.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cols_transpose](declarations/cols-transpose.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [get_transpose](declarations/get-transpose.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rows_complement](declarations/rows-complement.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cols_complement](declarations/cols-complement.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [get_complement](declarations/get-complement.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ext_entries](declarations/ext-entries.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ext](declarations/ext.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a4dfb005d276f57fbec7da5e5e35ac96ad4af626f1eaa608812c00db579bd21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrix/Variant33fccbc31536a12e2b0fe336642735778b0f5de2d05946041257c13cc3e59a80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
