# Group Theory Quotient Group Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ba2ec9200577e1127bf502dd9ec7f278be2735d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [con](declarations/con.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Quotient.group](declarations/quotient-group.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mk'](declarations/mk.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mk'_apply](declarations/mk-apply.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mk'_surjective](declarations/mk-surjective.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mk'_eq_mk'](declarations/mk-eq-mk.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [monoidHom_ext](declarations/monoidhom-ext.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eq_one_iff](declarations/eq-one-iff.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ker_le_range_iff](declarations/ker-le-range-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ker_mk'](declarations/ker-mk.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_iff_div_mem](declarations/eq-iff-div-mem.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Quotient.commGroup](declarations/quotient-commgroup.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mk_one](declarations/mk-one.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_mul](declarations/mk-mul.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mk_inv](declarations/mk-inv.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mk_div](declarations/mk-div.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mk_pow](declarations/mk-pow.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_zpow](declarations/mk-zpow.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [lift](declarations/lift.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lift_mk](declarations/lift-mk.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lift_mk'](declarations/lift-mk-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lift_quot_mk](declarations/lift-quot-mk.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [map](declarations/map.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_mk](declarations/map-mk.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_mk'](declarations/map-mk-source-edition-2.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_id_apply](declarations/map-id-apply.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_id](declarations/map-id.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_map](declarations/map-map.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_comp_map](declarations/map-comp-map.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [congr](declarations/congr.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [congr_mk](declarations/congr-mk-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [congr_mk'](declarations/congr-mk.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [congr_apply](declarations/congr-apply.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [congr_refl](declarations/congr-refl.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [congr_symm](declarations/congr-symm.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [kerLift](declarations/kerlift.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [kerLift_mk](declarations/kerlift-mk.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [kerLift_mk'](declarations/kerlift-mk-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kerLift_injective](declarations/kerlift-injective.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [rangeKerLift](declarations/rangekerlift.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rangeKerLift_injective](declarations/rangekerlift-injective.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rangeKerLift_surjective](declarations/rangekerlift-surjective.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [quotientKerEquivRange](declarations/quotientkerequivrange.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [quotientKerEquivOfRightInverse](declarations/quotientkerequivofrightinverse.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [quotientBot](declarations/quotientbot.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [quotientKerEquivOfSurjective](declarations/quotientkerequivofsurjective.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [quotientMulEquivOfEq](declarations/quotientmulequivofeq.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [quotientMulEquivOfEq_mk](declarations/quotientmulequivofeq-mk.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [quotientMapSubgroupOfOfLe](declarations/quotientmapsubgroupofofle.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [quotientMapSubgroupOfOfLe_mk](declarations/quotientmapsubgroupofofle-mk.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [equivQuotientSubgroupOfOfEq](declarations/equivquotientsubgroupofofeq.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [homQuotientZPowOfHom](declarations/homquotientzpowofhom.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [homQuotientZPowOfHom_id](declarations/homquotientzpowofhom-id.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [homQuotientZPowOfHom_comp](declarations/homquotientzpowofhom-comp.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homQuotientZPowOfHom_comp_of_rightInverse](declarations/homquotientzpowofhom-comp-of-rightinverse.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [equivQuotientZPowOfEquiv](declarations/equivquotientzpowofequiv.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [equivQuotientZPowOfEquiv_refl](declarations/equivquotientzpowofequiv-refl.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [equivQuotientZPowOfEquiv_symm](declarations/equivquotientzpowofequiv-symm.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [equivQuotientZPowOfEquiv_trans](declarations/equivquotientzpowofequiv-trans.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [quotientInfEquivProdNormalQuotient](declarations/quotientinfequivprodnormalquotient.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [map_normal](declarations/map-normal.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [quotientQuotientEquivQuotientAux](declarations/quotientquotientequivquotientaux.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [quotientQuotientEquivQuotientAux_mk](declarations/quotientquotientequivquotientaux-mk.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](declarations/quotientquotientequivquotientaux-mk-mk.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [quotientQuotientEquivQuotient](declarations/quotientquotientequivquotient.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [subsingleton_quotient_top](declarations/subsingleton-quotient-top.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [subgroup_eq_top_of_subsingleton](declarations/subgroup-eq-top-of-subsingleton.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [comap_comap_center](declarations/comap-comap-center.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [fintypeOfKerLeRange](declarations/fintypeofkerlerange.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [fintypeOfKerEqRange](declarations/fintypeofkereqrange.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [fintypeOfKerOfCodom](declarations/fintypeofkerofcodom.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [fintypeOfDomOfCoker](declarations/fintypeofdomofcoker.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea412bf99088095e93836223cbcb1605c2520e4e18e42278a12af6af62aaa6c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
