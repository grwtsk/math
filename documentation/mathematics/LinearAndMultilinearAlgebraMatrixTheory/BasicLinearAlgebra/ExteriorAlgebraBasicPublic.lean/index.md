# Exterior Algebra Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2a814c043d81108cb7adeb5d8f4c9e6f0d91d22`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExteriorAlgebra](declarations/exterioralgebra.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ι](declarations/anonymous.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [exteriorPower](declarations/exteriorpower.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ι_sq_zero](declarations/sq-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [comp_ι_sq_zero](declarations/comp-sq-zero.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lift](declarations/lift.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ι_comp_lift](declarations/comp-lift.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_ι_apply](declarations/lift-apply.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lift_unique](declarations/lift-unique.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lift_comp_ι](declarations/lift-comp.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hom_ext](declarations/hom-ext.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [induction](declarations/induction.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [algebraMapInv](declarations/algebramapinv.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [algebraMap_leftInverse](declarations/algebramap-leftinverse.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [algebraMap_inj](declarations/algebramap-inj.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [algebraMap_eq_zero_iff](declarations/algebramap-eq-zero-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [algebraMap_eq_one_iff](declarations/algebramap-eq-one-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isLocalHom_algebraMap](declarations/islocalhom-algebramap.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isUnit_algebraMap](declarations/isunit-algebramap.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [invertibleAlgebraMapEquiv](declarations/invertiblealgebramapequiv.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toTrivSqZeroExt](declarations/totrivsqzeroext.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toTrivSqZeroExt_ι](declarations/totrivsqzeroext-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ιInv](declarations/inv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ι_leftInverse](declarations/leftinverse.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ι_inj](declarations/inj.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ι_eq_zero_iff](declarations/eq-zero-iff.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ι_eq_algebraMap_iff](declarations/eq-algebramap-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ι_ne_one](declarations/ne-one.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ι_range_disjoint_one](declarations/range-disjoint-one.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ι_add_mul_swap](declarations/add-mul-swap.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ι_mul_prod_list](declarations/mul-prod-list.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ιMulti](declarations/multi.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ιMulti_apply](declarations/multi-apply.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ιMulti_zero_apply](declarations/multi-zero-apply.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ιMulti_succ_apply](declarations/multi-succ-apply.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ιMulti_succ_curryLeft](declarations/multi-succ-curryleft.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [ιMulti_eq_zero_of_not_inj](declarations/multi-eq-zero-of-not-inj.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [ιMulti_mul_ιMulti](declarations/multi-mul-multi.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [ιMulti_range](declarations/multi-range.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [ιMulti_span_fixedDegree](declarations/multi-span-fixeddegree.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [ιMulti_family](declarations/multi-family.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [ιMulti_family_mul_of_not_disjoint](declarations/multi-family-mul-of-not-disjoint.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [ιMulti_family_mul_of_disjoint](declarations/multi-family-mul-of-disjoint.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [ι_mul_ιMulti_anticomm](declarations/mul-multi-anticomm.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [ιMulti_mul_ιMulti_anticomm](declarations/multi-mul-multi-anticomm.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [map](declarations/map.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_comp_ι](declarations/map-comp.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_apply_ι](declarations/map-apply.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_apply_ιMulti](declarations/map-apply-multi.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_comp_ιMulti](declarations/map-comp-multi.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_id](declarations/map-id.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_comp_map](declarations/map-comp-map.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ι_range_map_map](declarations/range-map-map.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toTrivSqZeroExt_comp_map](declarations/totrivsqzeroext-comp-map.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ιInv_comp_map](declarations/inv-comp-map.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [leftInverse_map_iff](declarations/leftinverse-map-iff.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [map_injective](declarations/map-injective.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [map_surjective_iff](declarations/map-surjective-iff.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [map_injective_field](declarations/map-injective-field.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [toExterior](declarations/toexterior.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [toExterior_ι](declarations/toexterior-source-edition-2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=726d04d577261ae16bb3a3267cd191d2ba7f0d0cabfbb43010963e0b9d9b8a1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
