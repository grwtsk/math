# Eigenspace Basic Mem Spectrum Of Has Eigenvalue

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac57b8661000f2da4445779737b9c044bb1a47fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicMemSpectrumOfHasEigenvalue.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [eigenspace](declarations/eigenspace.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [eigenspace_zero](declarations/eigenspace-zero.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasEigenvector](declarations/haseigenvector.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HasEigenvalue](declarations/haseigenvalue.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Eigenvalues](declarations/eigenvalues.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Eigenvalues.val](declarations/eigenvalues-val.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [Eigenvalues.instCoeOut](declarations/eigenvalues-instcoeout.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [Eigenvalues.instDecidableEq](declarations/eigenvalues-instdecidableeq.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasEigenvalue_of_hasEigenvector](declarations/haseigenvalue-of-haseigenvector.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_eigenspace_iff](declarations/mem-eigenspace-iff.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasEigenvector.apply_eq_smul](declarations/haseigenvector-apply-eq-smul.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasEigenvalue.exists_hasEigenvector](declarations/haseigenvalue-exists-haseigenvector.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_spectrum_of_hasEigenvalue](declarations/mem-spectrum-of-haseigenvalue.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasEigenvalue_iff_mem_spectrum](declarations/haseigenvalue-iff-mem-spectrum.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eigenspace_div](declarations/eigenspace-div.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eigenspaces_independent](declarations/eigenspaces-independent.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eigenvectors_linearIndependent](declarations/eigenvectors-linearindependent.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [generalizedEigenspace](declarations/generalizedeigenspace.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_generalizedEigenspace](declarations/mem-generalizedeigenspace.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [generalizedEigenspace_zero](declarations/generalizedeigenspace-zero.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HasGeneralizedEigenvector](declarations/hasgeneralizedeigenvector.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [HasGeneralizedEigenvalue](declarations/hasgeneralizedeigenvalue.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [generalizedEigenrange](declarations/generalizedeigenrange.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exp_ne_zero_of_hasGeneralizedEigenvalue](declarations/exp-ne-zero-of-hasgeneralizedeigenvalue.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [maximalGeneralizedEigenspace](declarations/maximalgeneralizedeigenspace.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [generalizedEigenspace_le_maximal](declarations/generalizedeigenspace-le-maximal.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_maximalGeneralizedEigenspace](declarations/mem-maximalgeneralizedeigenspace.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [maximalGeneralizedEigenspaceIndex](declarations/maximalgeneralizedeigenspaceindex.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [maximalGeneralizedEigenspace_eq](declarations/maximalgeneralizedeigenspace-eq.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasGeneralizedEigenvalue_of_hasGeneralizedEigenvalue_of_le](declarations/hasgeneralizedeigenvalue-of-hasgeneralizedeigenvalue-of-le.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eigenspace_le_generalizedEigenspace](declarations/eigenspace-le-generalizedeigenspace.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasGeneralizedEigenvalue_of_hasEigenvalue](declarations/hasgeneralizedeigenvalue-of-haseigenvalue.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasEigenvalue_of_hasGeneralizedEigenvalue](declarations/haseigenvalue-of-hasgeneralizedeigenvalue.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasGeneralizedEigenvalue_iff_hasEigenvalue](declarations/hasgeneralizedeigenvalue-iff-haseigenvalue.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [generalizedEigenspace_le_generalizedEigenspace_finrank](declarations/generalizedeigenspace-le-generalizedeigenspace-finrank.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [generalizedEigenspace_eq_generalizedEigenspace_finrank_of_le](declarations/generalizedeigenspace-eq-generalizedeigenspace-finrank-of-le.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [generalizedEigenspace_restrict](declarations/generalizedeigenspace-restrict.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [eigenspace_restrict_le_eigenspace](declarations/eigenspace-restrict-le-eigenspace.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [generalized_eigenvec_disjoint_range_ker](declarations/generalized-eigenvec-disjoint-range-ker.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eigenspace_restrict_eq_bot](declarations/eigenspace-restrict-eq-bot.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pos_finrank_generalizedEigenspace_of_hasEigenvalue](declarations/pos-finrank-generalizedeigenspace-of-haseigenvalue.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [map_generalizedEigenrange_le](declarations/map-generalizedeigenrange-le.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1f7b4d9b6bf15950268158c92cf9b4e09f7a287130648e2a9326d87bd4ae274 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianteff472aa926893a7fa9c85ca3f8e124ae3509a189b8bab2d4c4342a04172efe4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
