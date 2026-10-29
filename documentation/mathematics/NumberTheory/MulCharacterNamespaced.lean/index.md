# Mul Character Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44c24736cb73bfb179e93247f6f130dd15bf26ff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/MulCharacterNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](declarations/mulchar.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [funLike](declarations/funlike.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MulCharClass](declarations/mulcharclass.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trivial](declarations/trivial.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_mk](declarations/coe-mk.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ext'](declarations/ext-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_nonunit](declarations/map-nonunit.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext_iff](declarations/ext-iff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toUnitHom](declarations/tounithom.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_toUnitHom](declarations/coe-tounithom.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ofUnitHom](declarations/ofunithom.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ofUnitHom_coe](declarations/ofunithom-coe.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [equivToUnitHom](declarations/equivtounithom.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toUnitHom_eq](declarations/tounithom-eq.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofUnitHom_eq](declarations/ofunithom-eq.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_equivToUnitHom](declarations/coe-equivtounithom.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [equivToUnitHom_symm_coe](declarations/equivtounithom-symm-coe.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_one](declarations/map-one.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_zero](declarations/map-zero.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_ringChar](declarations/map-ringchar.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [hasOne](declarations/hasone.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [inhabited](declarations/inhabited.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [one_apply_coe](declarations/one-apply-coe.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mul](declarations/mul.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [hasMul](declarations/hasmul.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_apply](declarations/mul-apply.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coeToFun_mul](declarations/coetofun-mul.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [one_mul](declarations/one-mul.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_one](declarations/mul-one.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [inv](declarations/inv.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [hasInv](declarations/hasinv.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inv_apply_eq_inv](declarations/inv-apply-eq-inv-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_apply_eq_inv'](declarations/inv-apply-eq-inv.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inv_apply](declarations/inv-apply-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [inv_apply'](declarations/inv-apply.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [inv_mul](declarations/inv-mul.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [commGroup](declarations/commgroup.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pow_apply_coe](declarations/pow-apply-coe.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pow_apply'](declarations/pow-apply.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsNontrivial](declarations/isnontrivial.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isNontrivial_iff](declarations/isnontrivial-iff.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [IsQuadratic](declarations/isquadratic.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsQuadratic.eq_of_eq_coe](declarations/isquadratic-eq-of-eq-coe.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ringHomComp](declarations/ringhomcomp.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsNontrivial.comp](declarations/isnontrivial-comp.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsQuadratic.comp](declarations/isquadratic-comp.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsQuadratic.inv](declarations/isquadratic-inv.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsQuadratic.sq_eq_one](declarations/isquadratic-sq-eq-one.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsQuadratic.pow_char](declarations/isquadratic-pow-char.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsQuadratic.pow_even](declarations/isquadratic-pow-even.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsQuadratic.pow_odd](declarations/isquadratic-pow-odd.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsNontrivial.sum_eq_zero](declarations/isnontrivial-sum-eq-zero.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sum_one_eq_card_units](declarations/sum-one-eq-card-units.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=192775f9339cb0477e356eb5cb39f8e8e3114bc4f377b4faba9ded37808e3f98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
