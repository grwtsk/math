# Exterior Algebra Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51db4dcafbfdfe31b23071f795cd007f567ff152`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExteriorAlgebra](declarations/exterioralgebra.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ι](declarations/anonymous.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ι_sq_zero](declarations/sq-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [comp_ι_sq_zero](declarations/comp-sq-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [lift](declarations/lift.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ι_comp_lift](declarations/comp-lift.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lift_ι_apply](declarations/lift-apply.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_unique](declarations/lift-unique.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lift_comp_ι](declarations/lift-comp.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hom_ext](declarations/hom-ext.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [induction](declarations/induction.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [algebraMapInv](declarations/algebramapinv.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [algebraMap_leftInverse](declarations/algebramap-leftinverse.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [algebraMap_inj](declarations/algebramap-inj.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [algebraMap_eq_zero_iff](declarations/algebramap-eq-zero-iff.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [algebraMap_eq_one_iff](declarations/algebramap-eq-one-iff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isUnit_algebraMap](declarations/isunit-algebramap.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [invertibleAlgebraMapEquiv](declarations/invertiblealgebramapequiv.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toTrivSqZeroExt](declarations/totrivsqzeroext-source-edition-2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toTrivSqZeroExt_ι](declarations/totrivsqzeroext.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ιInv](declarations/inv.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ι_leftInverse](declarations/leftinverse.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ι_inj](declarations/inj.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ι_eq_zero_iff](declarations/eq-zero-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ι_eq_algebraMap_iff](declarations/eq-algebramap-iff.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ι_ne_one](declarations/ne-one.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ι_range_disjoint_one](declarations/range-disjoint-one.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ι_add_mul_swap](declarations/add-mul-swap.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ι_mul_prod_list](declarations/mul-prod-list.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ιMulti](declarations/multi.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ιMulti_apply](declarations/multi-apply.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ιMulti_zero_apply](declarations/multi-zero-apply.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ιMulti_succ_apply](declarations/multi-succ-apply.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ιMulti_succ_curryLeft](declarations/multi-succ-curryleft.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [toExterior](declarations/toexterior.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toExterior_ι](declarations/toexterior-source-edition-2.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a17e40f90156735cd48ba9951882701cdc325b60ef7af0c50c85a710c07be84f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
