# Pivot Normalization Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b1bc9b94d15beb3cb56d35a83947f51ab06065b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotNormalizationEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [frameRowSpace](declarations/framerowspace.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_frameRowSpace_iff](declarations/mem-framerowspace-iff.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [row_mem_frameRowSpace](declarations/row-mem-framerowspace.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](declarations/framerowspace-mul-left-le.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](declarations/framerowspace-mul-left-eq.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pivotNormalize](declarations/pivotnormalize.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pivotNormalize_pivot](declarations/pivotnormalize-pivot.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](declarations/pivot-mul-pivotnormalize.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](declarations/framerowspace-pivotnormalize.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_pivotInverse](declarations/det-pivotinverse.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [columnMinor_pivotNormalize](declarations/columnminor-pivotnormalize.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](declarations/columnminor-pivotnormalize-ne-zero.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](declarations/orderedminor-pivotnormalize.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](declarations/allorderedminorsnonneg-pivotnormalize-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](declarations/allorderedminorspos-pivotnormalize-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [vecMul_columnSubmatrix](declarations/vecmul-columnsubmatrix.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalized_coefficients_readback](declarations/normalized-coefficients-readback.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](declarations/normalized-eq-of-framerowspace-eq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](declarations/pivotnormalize-eq-iff-rowspace.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [existsUnique_pivotNormalized](declarations/existsunique-pivotnormalized.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pivotNormalize_fixed](declarations/pivotnormalize-fixed.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pivotNormalize_transition](declarations/pivotnormalize-transition.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pivotNormalize_cocycle](declarations/pivotnormalize-cocycle.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](declarations/rank-eq-of-columnminor-ne-zero.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](declarations/finrank-framerowspace-of-columnminor-ne-zero.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b6a6db7cd82e88647e909db5d35543a763904c460bd77b6469294c12a5fdc12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
