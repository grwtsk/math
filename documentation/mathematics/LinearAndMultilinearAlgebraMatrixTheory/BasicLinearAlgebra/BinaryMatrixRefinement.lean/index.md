# Binary Matrix Refinement

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c69651a98e85e7dca8cbdfdb953b1a414638811`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryMatrixRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [padMatrix](declarations/padmatrix.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [padMatrix_rows](declarations/padmatrix-rows.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [padMatrix_cols](declarations/padmatrix-cols.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BinaryMatrixRefinementRule](declarations/binarymatrixrefinementrule.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ZeroPreservingRefinementRule](declarations/zeropreservingrefinementrule.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinaryMatrixRenormalizationRule](declarations/binarymatrixrenormalizationrule.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [refineMatrix](declarations/refinematrix.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [refineMatrix_rows](declarations/refinematrix-rows.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [refineMatrix_cols](declarations/refinematrix-cols.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [constRefinementRule](declarations/constrefinementrule.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [constZeroPreservingRefinementRule](declarations/constzeropreservingrefinementrule.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [refineConst](declarations/refineconst.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [zoomOutTopLeft](declarations/zoomouttopleft.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zoomOut_refine_const](declarations/zoomout-refine-const.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [refineMatrix_zero_of_zeroPreserving](declarations/refinematrix-zero-of-zeropreserving.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [bitMass](declarations/bitmass.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [matrixMass](declarations/matrixmass.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [matrixDensity](declarations/matrixdensity.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [blockAt](declarations/blockat.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [renormalizedMass](declarations/renormalizedmass.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [renormalizedEnergy](declarations/renormalizedenergy.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d33e83ec740c7d75621751581d270ba097b96feca19937b487f24fe1fb8b839 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
