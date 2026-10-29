# Mul Char Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1946164d82bcbd41f15e053d24ac92b20fa6411`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/MulCharBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](declarations/mulchar.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [MulChar.instFunLike](declarations/mulchar-instfunlike.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MulCharClass](declarations/mulcharclass.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trivial](declarations/trivial.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_mk](declarations/coe-mk.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ext'](declarations/ext.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_nonunit](declarations/map-nonunit.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toUnitHom](declarations/tounithom.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_toUnitHom](declarations/coe-tounithom.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ofUnitHom](declarations/ofunithom.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofUnitHom_coe](declarations/ofunithom-coe.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [equivToUnitHom](declarations/equivtounithom.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toUnitHom_eq](declarations/tounithom-eq.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofUnitHom_eq](declarations/ofunithom-eq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_equivToUnitHom](declarations/coe-equivtounithom.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [equivToUnitHom_symm_coe](declarations/equivtounithom-symm-coe.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [coe_toMonoidHom](declarations/coe-tomonoidhom.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_one](declarations/map-one.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_zero](declarations/map-zero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toMonoidWithZeroHom](declarations/tomonoidwithzerohom.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_ringChar](declarations/map-ringchar.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [hasOne](declarations/hasone.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [inhabited](declarations/inhabited.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [one_apply_coe](declarations/one-apply-coe.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [one_apply](declarations/one-apply.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mul](declarations/mul.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [hasMul](declarations/hasmul.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_apply](declarations/mul-apply.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeToFun_mul](declarations/coetofun-mul.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [one_mul](declarations/one-mul.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_one](declarations/mul-one.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [inv](declarations/inv.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [hasInv](declarations/hasinv.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inv_apply_eq_inv](declarations/inv-apply-eq-inv.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [inv_apply_eq_inv'](declarations/inv-apply-eq-inv-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [inv_apply](declarations/inv-apply-source-edition-2.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inv_apply'](declarations/inv-apply.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [inv_mul](declarations/inv-mul.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [commGroup](declarations/commgroup.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pow_apply_coe](declarations/pow-apply-coe.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pow_apply'](declarations/pow-apply.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [equivToUnitHom_mul_apply](declarations/equivtounithom-mul-apply.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mulEquivToUnitHom](declarations/mulequivtounithom.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [eq_one_iff](declarations/eq-one-iff.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [ne_one_iff](declarations/ne-one-iff.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IsQuadratic](declarations/isquadratic.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsQuadratic.eq_of_eq_coe](declarations/isquadratic-eq-of-eq-coe.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [ringHomComp](declarations/ringhomcomp.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [ringHomComp_one](declarations/ringhomcomp-one.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [ringHomComp_inv](declarations/ringhomcomp-inv.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [ringHomComp_mul](declarations/ringhomcomp-mul.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [ringHomComp_pow](declarations/ringhomcomp-pow.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [injective_ringHomComp](declarations/injective-ringhomcomp.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [ringHomComp_eq_one_iff](declarations/ringhomcomp-eq-one-iff.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [ringHomComp_ne_one_iff](declarations/ringhomcomp-ne-one-iff.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsQuadratic.comp](declarations/isquadratic-comp.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsQuadratic.inv](declarations/isquadratic-inv.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsQuadratic.sq_eq_one](declarations/isquadratic-sq-eq-one.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsQuadratic.pow_char](declarations/isquadratic-pow-char.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsQuadratic.pow_even](declarations/isquadratic-pow-even.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsQuadratic.pow_odd](declarations/isquadratic-pow-odd.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [isQuadratic_iff_sq_eq_one](declarations/isquadratic-iff-sq-eq-one.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [pow_card_eq_one](declarations/pow-card-eq-one.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [orderOf_pos](declarations/orderof-pos.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [sum_eq_zero_of_ne_one](declarations/sum-eq-zero-of-ne-one.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [sum_one_eq_card_units](declarations/sum-one-eq-card-units.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [val_neg_one_eq_one_of_odd_order](declarations/val-neg-one-eq-one-of-odd-order.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a27bfbd1302f720c530ccb611d6d733d79131244945a527bc24719e4c0b08d56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
