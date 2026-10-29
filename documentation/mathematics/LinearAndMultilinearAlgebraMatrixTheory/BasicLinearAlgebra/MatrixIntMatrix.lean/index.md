# Matrix Int Matrix

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8ccf5ee529afc5eb69067839b4c883f2152e0ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixIntMatrix.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IntMatrix](declarations/intmatrix.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [row_major_lt_of_lt_mul_of_lt](declarations/row-major-lt-of-lt-mul-of-lt.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [get](declarations/get.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lt_mul_comm](declarations/lt-mul-comm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [flatToElem](declarations/flattoelem.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ofFn](declarations/offn-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ofFn_get](declarations/offn-get.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [transpose](declarations/transpose.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [zero](declarations/zero-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [IntervalMatrix](declarations/intervalmatrix.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [getBounds](declarations/getbounds.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [intervalMul](declarations/intervalmul.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [intervalAdd](declarations/intervaladd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [matmul](declarations/matmul.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [transpose](declarations/transpose-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [zero](declarations/zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ofFn](declarations/offn.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [intVal](declarations/intval.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [intVal_mul](declarations/intval-mul.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [intVal_add](declarations/intval-add.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IntMatrix.valAt](declarations/intmatrix-valat.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IntervalMatrix.mem](declarations/intervalmatrix-mem.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [foldl_add_f_eq_foldl_map](declarations/foldl-add-f-eq-foldl-map.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finRange_foldl_add_eq_sum](declarations/finrange-foldl-add-eq-sum.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Int_cast_foldl_add_gen](declarations/int-cast-foldl-add-gen.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Int_cast_foldl_add](declarations/int-cast-foldl-add.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sum_interval_le](declarations/sum-interval-le.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_mem_endpoints_left](declarations/mul-mem-endpoints-left.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mul_mem_endpoints_right](declarations/mul-mem-endpoints-right.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_lower_bound](declarations/mul-lower-bound.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_upper_bound](declarations/mul-upper-bound.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_mem_corners](declarations/mul-mem-corners.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [intervalMul_sound](declarations/intervalmul-sound.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intervalMul_sound_scaled](declarations/intervalmul-sound-scaled.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_transpose](declarations/mem-transpose.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_matmul](declarations/mem-matmul.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5dcdfd2d00f54eff960c3be8016d2b6ff78fe8684a90b32e3c1f646aa4d89f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Varianted3afbea2644d1b8f06963367a60ced7b83130d909e2b507381e6fe17b053625.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
