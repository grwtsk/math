# Quotient Group Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51de0d6f29844123ae5c3e8e6aaaf841bf1f59d3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/QuotientGroupBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [sound](declarations/sound.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mk_prod](declarations/mk-prod.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [strictMono_comap_prod_map](declarations/strictmono-comap-prod-map.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [kerLift](declarations/kerlift.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [kerLift_mk](declarations/kerlift-mk.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [kerLift_mk'](declarations/kerlift-mk-source-edition-2.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [kerLift_injective](declarations/kerlift-injective.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rangeKerLift](declarations/rangekerlift.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rangeKerLift_injective](declarations/rangekerlift-injective.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rangeKerLift_surjective](declarations/rangekerlift-surjective.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [quotientKerEquivRange](declarations/quotientkerequivrange.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [quotientKerEquivOfRightInverse](declarations/quotientkerequivofrightinverse.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [quotientBot](declarations/quotientbot.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [quotientKerEquivOfSurjective](declarations/quotientkerequivofsurjective.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [quotientMulEquivOfEq](declarations/quotientmulequivofeq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [quotientMulEquivOfEq_mk](declarations/quotientmulequivofeq-mk.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [quotientMapSubgroupOfOfLe](declarations/quotientmapsubgroupofofle.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [quotientMapSubgroupOfOfLe_mk](declarations/quotientmapsubgroupofofle-mk.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [equivQuotientSubgroupOfOfEq](declarations/equivquotientsubgroupofofeq.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [homQuotientZPowOfHom](declarations/homquotientzpowofhom.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [homQuotientZPowOfHom_id](declarations/homquotientzpowofhom-id.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [homQuotientZPowOfHom_comp](declarations/homquotientzpowofhom-comp.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [homQuotientZPowOfHom_comp_of_rightInverse](declarations/homquotientzpowofhom-comp-of-rightinverse.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [equivQuotientZPowOfEquiv](declarations/equivquotientzpowofequiv.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [equivQuotientZPowOfEquiv_refl](declarations/equivquotientzpowofequiv-refl.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [equivQuotientZPowOfEquiv_symm](declarations/equivquotientzpowofequiv-symm.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [equivQuotientZPowOfEquiv_trans](declarations/equivquotientzpowofequiv-trans.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [quotientInfEquivProdNormalizerQuotient](declarations/quotientinfequivprodnormalizerquotient.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [quotientInfEquivProdNormalQuotient](declarations/quotientinfequivprodnormalquotient.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [map_normal](declarations/map-normal.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [quotientQuotientEquivQuotientAux](declarations/quotientquotientequivquotientaux.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [quotientQuotientEquivQuotientAux_mk](declarations/quotientquotientequivquotientaux-mk.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](declarations/quotientquotientequivquotientaux-mk-mk.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [quotientQuotientEquivQuotient](declarations/quotientquotientequivquotient.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [le_comap_mk'](declarations/le-comap-mk.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comap_map_mk'](declarations/comap-map-mk.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [comapMk'OrderIso](declarations/comapmk-orderiso.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [subsingleton_quotient_top](declarations/subsingleton-quotient-top.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [subgroup_eq_top_of_subsingleton](declarations/subgroup-eq-top-of-subsingleton.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comap_comap_center](declarations/comap-comap-center.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mk_nat_mul](declarations/mk-nat-mul.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mk_int_mul](declarations/mk-int-mul.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f00a694eaf5e70fe04720893daa9f0bfeffcfa5333145e09eeb05d85334a206a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantf47071440d28c835072c1dcb485a54b2f09b759950f08b7266aa6401089ba566.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
