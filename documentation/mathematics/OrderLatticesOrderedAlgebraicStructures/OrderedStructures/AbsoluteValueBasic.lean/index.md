# Absolute Value Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `012dfcde951ee1cd637568ea888de7ece7c622cc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AbsoluteValue](declarations/absolutevalue.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [funLike](declarations/funlike.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [zeroHomClass](declarations/zerohomclass.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [mulHomClass](declarations/mulhomclass.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [nonnegHomClass](declarations/nonneghomclass.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [subadditiveHomClass](declarations/subadditivehomclass.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_mk](declarations/coe-mk.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Simps.apply](declarations/simps-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_toMulHom](declarations/coe-tomulhom.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nonneg](declarations/nonneg.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_zero](declarations/eq-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add_le](declarations/add-le.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [listSum_le](declarations/listsum-le.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_mul](declarations/map-mul.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ne_zero_iff](declarations/ne-zero-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pos_iff](declarations/pos-iff.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_one_of_isLeftRegular](declarations/map-one-of-isleftregular.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_zero](declarations/map-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sub_le](declarations/sub-le.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_sub_eq_zero_iff](declarations/map-sub-eq-zero-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_one](declarations/map-one.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [monoidWithZeroHomClass](declarations/monoidwithzerohomclass.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toMonoidWithZeroHom](declarations/tomonoidwithzerohom.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_toMonoidWithZeroHom](declarations/coe-tomonoidwithzerohom.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toMonoidHom](declarations/tomonoidhom.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_toMonoidHom](declarations/coe-tomonoidhom.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_pow](declarations/map-pow.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [apply_nat_le_self](declarations/apply-nat-le-self.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_sub](declarations/le-sub.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_neg](declarations/map-neg.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_sub](declarations/map-sub.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [le_add](declarations/le-add.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [sub_le_add](declarations/sub-le-add.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [apply_natAbs_eq](declarations/apply-natabs-eq.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [eq_on_nat_iff_eq_on_int](declarations/eq-on-nat-iff-eq-on-int.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [abs](declarations/abs.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [abs_abv_sub_le_abv_sub](declarations/abs-abv-sub-le-abv-sub-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [trivial](declarations/trivial.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [trivial_apply](declarations/trivial-apply.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [IsNontrivial](declarations/isnontrivial.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isNontrivial_iff_ne_trivial](declarations/isnontrivial-iff-ne-trivial.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [not_isNontrivial_iff](declarations/not-isnontrivial-iff.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [not_isNontrivial_apply](declarations/not-isnontrivial-apply.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [IsNontrivial.exists_abv_gt_one](declarations/isnontrivial-exists-abv-gt-one.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [IsNontrivial.exists_abv_lt_one](declarations/isnontrivial-exists-abv-lt-one.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `class` | [IsAbsoluteValue](declarations/isabsolutevalue.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [abv_nonneg](declarations/abv-nonneg.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [Mathlib.Meta.Positivity.evalAbv](declarations/mathlib-meta-positivity-evalabv.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [abv_eq_zero](declarations/abv-eq-zero.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [abv_add](declarations/abv-add.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [abv_mul](declarations/abv-mul.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [_root_.AbsoluteValue.isAbsoluteValue](declarations/root-absolutevalue-isabsolutevalue.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [toAbsoluteValue](declarations/toabsolutevalue.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [abv_zero](declarations/abv-zero.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [abv_pos](declarations/abv-pos.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [abs_isAbsoluteValue](declarations/abs-isabsolutevalue.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [abv_one](declarations/abv-one-source-edition-2.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [abvHom](declarations/abvhom.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [abv_pow](declarations/abv-pow.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [abv_sub_le](declarations/abv-sub-le.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sub_abv_le_abv_sub](declarations/sub-abv-le-abv-sub.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [abv_neg](declarations/abv-neg.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [abv_sub](declarations/abv-sub.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [abs_abv_sub_le_abv_sub](declarations/abs-abv-sub-le-abv-sub.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [abv_one'](declarations/abv-one.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [abvHom'](declarations/abvhom-source-edition-2.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [abv_inv](declarations/abv-inv.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [abv_div](declarations/abv-div.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d705ad498d81512c5bc8369041200b8923bf357ac7703041a164ed048fa2bf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
