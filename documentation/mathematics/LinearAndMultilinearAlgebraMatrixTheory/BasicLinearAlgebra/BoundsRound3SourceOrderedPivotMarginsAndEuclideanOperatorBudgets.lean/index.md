# Bounds Round3 Source Ordered Pivot Margins And Euclidean Operator Budgets

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedPivotFintype](declarations/orderedpivotfintype.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [card_orderedPivots](declarations/card-orderedpivots.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [orderedPermutationEquiv](declarations/orderedpermutationequiv.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [columnMinor_comp_perm_sq](declarations/columnminor-comp-perm-sq.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sum_columnMinor_sq](declarations/sum-columnminor-sq.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_orderedMinor_sq_eq_one](declarations/sum-orderedminor-sq-eq-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exists_orderedMinor_sq_margin](declarations/exists-orderedminor-sq-margin.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exists_orderedMinor_margin](declarations/exists-orderedminor-margin.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [abs_columnMinor_mul_left](declarations/abs-columnminor-mul-left.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](declarations/l2-opnorm-le-one-of-orthonormalrows.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [euclidean_norm_restrict_le](declarations/euclidean-norm-restrict-le.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [l2_opNorm_columnSubmatrix_le](declarations/l2-opnorm-columnsubmatrix-le.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [det_sq_mul_norm_sq_le_image](declarations/det-sq-mul-norm-sq-le-image.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [l2_opNorm_inverse_le_margin](declarations/l2-opnorm-inverse-le-margin.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [controlled_pivot_operator_bounds](declarations/controlled-pivot-operator-bounds.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [controlled_transition_operator_bounds](declarations/controlled-transition-operator-bounds.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [orthonormalRows_dimension_le](declarations/orthonormalrows-dimension-le.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [controlledPivotThreshold](declarations/controlledpivotthreshold.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [controlledPivotDomain](declarations/controlledpivotdomain.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isOpen_controlledPivotDomain](declarations/isopen-controlledpivotdomain.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [controlledPivotDomain_cover](declarations/controlledpivotdomain-cover.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [controlledCover_normalization_bound](declarations/controlledcover-normalization-bound.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [controlledCover_transition_bounds](declarations/controlledcover-transition-bounds.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [abs_det_eq_one_of_orthogonal](declarations/abs-det-eq-one-of-orthogonal.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [controlledPivotDomain_orthogonal_iff](declarations/controlledpivotdomain-orthogonal-iff.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [controlledCover_rank_zero](declarations/controlledcover-rank-zero.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3e298226e588a25021f5c6bce2d2e4c95c71d6605784a192425e462837ada97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
