# Fraction Ring Namespaced Of Field

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29c65eee57715228326981f87ce8633e774e94c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FractionRingNamespacedOfField.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](declarations/isfractionring.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Rat.isFractionRing](declarations/rat-isfractionring.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [of_field](declarations/of-field.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [to_map_eq_zero_iff](declarations/to-map-eq-zero-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [injective](declarations/injective.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_inj](declarations/coe-inj.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isDomain](declarations/isdomain.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [toField](declarations/tofield.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [surjective_iff_isField](declarations/surjective-iff-isfield.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mk'_mk_eq_div](declarations/mk-mk-eq-div.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk'_eq_div](declarations/mk-eq-div.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [div_surjective](declarations/div-surjective.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isUnit_map_of_injective](declarations/isunit-map-of-injective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mk'_eq_zero_iff_eq_zero](declarations/mk-eq-zero-iff-eq-zero.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk'_eq_one_iff_eq](declarations/mk-eq-one-iff-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [closure_range_algebraMap](declarations/closure-range-algebramap.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq](declarations/ringhom-fieldrange-eq-of-comp-eq.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq_of_range_eq](declarations/ringhom-fieldrange-eq-of-comp-eq-of-range-eq.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lift](declarations/lift.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lift_unique](declarations/lift-unique.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ringHom_ext](declarations/ringhom-ext.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [injective_comp_algebraMap](declarations/injective-comp-algebramap.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [liftAlgHom](declarations/liftalghom.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [liftAlgHom_toRingHom](declarations/liftalghom-toringhom.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_liftAlgHom](declarations/coe-liftalghom.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [liftAlgHom_apply](declarations/liftalghom-apply.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lift_algebraMap](declarations/lift-algebramap.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lift_fieldRange](declarations/lift-fieldrange.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift_fieldRange_eq_of_range_eq](declarations/lift-fieldrange-eq-of-range-eq.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lift_mk'](declarations/lift-mk.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [map](declarations/map.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [ringEquivOfRingEquiv](declarations/ringequivofringequiv.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [ringEquivOfRingEquiv_algebraMap](declarations/ringequivofringequiv-algebramap.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [ringEquivOfRingEquiv_symm](declarations/ringequivofringequiv-symm.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [algEquivOfAlgEquiv](declarations/algequivofalgequiv.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [algEquivOfAlgEquiv_algebraMap](declarations/algequivofalgequiv-algebramap.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [algEquivOfAlgEquiv_symm](declarations/algequivofalgequiv-symm.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [fieldEquivOfAlgEquiv](declarations/fieldequivofalgequiv.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [restrictScalars_fieldEquivOfAlgEquiv](declarations/restrictscalars-fieldequivofalgequiv.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [fieldEquivOfAlgEquiv_algebraMap](declarations/fieldequivofalgequiv-algebramap.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [fieldEquivOfAlgEquiv_refl](declarations/fieldequivofalgequiv-refl.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [fieldEquivOfAlgEquiv_trans](declarations/fieldequivofalgequiv-trans.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [fieldEquivOfAlgEquivHom](declarations/fieldequivofalgequivhom.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [fieldEquivOfAlgEquivHom_apply](declarations/fieldequivofalgequivhom-apply.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [fieldEquivOfAlgEquivHom_injective](declarations/fieldequivofalgequivhom-injective.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](declarations/isfractionring-iff-of-base-ringequiv.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [nontrivial](declarations/nontrivial.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [algebraMap_injective_of_field_isFractionRing](declarations/algebramap-injective-of-field-isfractionring.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [FaithfulSMul.of_field_isFractionRing](declarations/faithfulsmul-of-field-isfractionring.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [FractionRing](declarations/fractionring.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [unique](declarations/unique.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [field](declarations/field.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mk_eq_div](declarations/mk-eq-div-source-edition-2.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [liftAlgebra](declarations/liftalgebra.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [isScalarTower_liftAlgebra](declarations/isscalartower-liftalgebra.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [algebraMap_liftAlgebra](declarations/algebramap-liftalgebra.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [algEquiv](declarations/algequiv.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46be940ddf4da09b31928e491a2634bb5578b0ca7ae8ce4fbe12cc4d07622f77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
