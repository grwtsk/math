# Fraction Ring Of Field

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7bfae6bbb41fd2c98a31988c8b3a1be32dac730`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FractionRingOfField.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](declarations/isfractionring.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Rat.isFractionRing](declarations/rat-isfractionring.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [of_field](declarations/of-field.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [to_map_eq_zero_iff](declarations/to-map-eq-zero-iff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [injective](declarations/injective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_inj](declarations/coe-inj.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isDomain](declarations/isdomain.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [toField](declarations/tofield.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [surjective_iff_isField](declarations/surjective-iff-isfield.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mk'_mk_eq_div](declarations/mk-mk-eq-div.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk'_eq_div](declarations/mk-eq-div.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [div_surjective](declarations/div-surjective.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isUnit_map_of_injective](declarations/isunit-map-of-injective.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mk'_eq_zero_iff_eq_zero](declarations/mk-eq-zero-iff-eq-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk'_eq_one_iff_eq](declarations/mk-eq-one-iff-eq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [closure_range_algebraMap](declarations/closure-range-algebramap.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq](declarations/ringhom-fieldrange-eq-of-comp-eq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq_of_range_eq](declarations/ringhom-fieldrange-eq-of-comp-eq-of-range-eq.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lift](declarations/lift.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lift_unique](declarations/lift-unique.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ringHom_ext](declarations/ringhom-ext.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [injective_comp_algebraMap](declarations/injective-comp-algebramap.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [liftAlgHom](declarations/liftalghom.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [liftAlgHom_toRingHom](declarations/liftalghom-toringhom.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_liftAlgHom](declarations/coe-liftalghom.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [liftAlgHom_apply](declarations/liftalghom-apply.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lift_algebraMap](declarations/lift-algebramap.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lift_fieldRange](declarations/lift-fieldrange.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift_fieldRange_eq_of_range_eq](declarations/lift-fieldrange-eq-of-range-eq.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lift_mk'](declarations/lift-mk.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [map](declarations/map.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [ringEquivOfRingEquiv](declarations/ringequivofringequiv.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [ringEquivOfRingEquiv_algebraMap](declarations/ringequivofringequiv-algebramap.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [ringEquivOfRingEquiv_symm](declarations/ringequivofringequiv-symm.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [algEquivOfAlgEquiv](declarations/algequivofalgequiv.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [algEquivOfAlgEquiv_algebraMap](declarations/algequivofalgequiv-algebramap.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [algEquivOfAlgEquiv_symm](declarations/algequivofalgequiv-symm.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [fieldEquivOfAlgEquiv](declarations/fieldequivofalgequiv.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [restrictScalars_fieldEquivOfAlgEquiv](declarations/restrictscalars-fieldequivofalgequiv.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [fieldEquivOfAlgEquiv_algebraMap](declarations/fieldequivofalgequiv-algebramap.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [fieldEquivOfAlgEquiv_refl](declarations/fieldequivofalgequiv-refl.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [fieldEquivOfAlgEquiv_trans](declarations/fieldequivofalgequiv-trans.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [fieldEquivOfAlgEquivHom](declarations/fieldequivofalgequivhom.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [fieldEquivOfAlgEquivHom_apply](declarations/fieldequivofalgequivhom-apply.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [fieldEquivOfAlgEquivHom_injective](declarations/fieldequivofalgequivhom-injective.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](declarations/isfractionring-iff-of-base-ringequiv.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [nontrivial](declarations/nontrivial.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [algebraMap_injective_of_field_isFractionRing](declarations/algebramap-injective-of-field-isfractionring.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [FaithfulSMul.of_field_isFractionRing](declarations/faithfulsmul-of-field-isfractionring.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [FractionRing](declarations/fractionring.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [unique](declarations/unique.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [field](declarations/field.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mk_eq_div](declarations/mk-eq-div-source-edition-2.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftAlgebra](declarations/liftalgebra.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [isScalarTower_liftAlgebra](declarations/isscalartower-liftalgebra.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [algebraMap_liftAlgebra](declarations/algebramap-liftalgebra.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [algEquiv](declarations/algequiv.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70a9d70a990d8f988c46c294b4be3e52d2ab4cc7bf1561183cd13d608c22b893 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
