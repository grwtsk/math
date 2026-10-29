# Group Action Quotient Equiv Subgroup Orbits Setoid Comap

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b995dc7840811a377de242c064c81d7240b30073`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientEquivSubgroupOrbitsSetoidComap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [QuotientAction](declarations/quotientaction.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [_root_.AddAction.QuotientAction](declarations/root-addaction-quotientaction.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [left_quotientAction](declarations/left-quotientaction.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [right_quotientAction](declarations/right-quotientaction-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [right_quotientAction'](declarations/right-quotientaction.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [quotient](declarations/quotient.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Quotient.smul_mk](declarations/quotient-smul-mk.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Quotient.smul_coe](declarations/quotient-smul-coe.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Quotient.mk_smul_out](declarations/quotient-mk-smul-out.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Quotient.coe_smul_out](declarations/quotient-coe-smul-out.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [_root_.QuotientGroup.out_conj_pow_minimalPeriod_mem](declarations/root-quotientgroup-out-conj-pow-minimalperiod-mem.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [_root_.MulActionHom.toQuotient](declarations/root-mulactionhom-toquotient.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.MulActionHom.toQuotient_apply](declarations/root-mulactionhom-toquotient-apply.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [mulLeftCosetsCompSubtypeVal](declarations/mulleftcosetscompsubtypeval.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ofQuotientStabilizer](declarations/ofquotientstabilizer.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](declarations/ofquotientstabilizer-mk.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](declarations/ofquotientstabilizer-mem-orbit.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](declarations/ofquotientstabilizer-smul.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](declarations/injective-ofquotientstabilizer.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [orbitEquivQuotientStabilizer](declarations/orbitequivquotientstabilizer.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](declarations/orbitprodstabilizerequivgroup.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](declarations/card-orbit-mul-card-stabilizer-eq-card-group.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](declarations/orbitequivquotientstabilizer-symm-apply.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [stabilizer_quotient](declarations/stabilizer-quotient.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](declarations/selfequivsigmaorbitsquotientstabilizer.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer'](declarations/card-eq-sum-card-group-div-card-stabilizer-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](declarations/selfequivsigmaorbitsquotientstabilizer-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_eq_sum_card_group_div_card_stabilizer](declarations/card-eq-sum-card-group-div-card-stabilizer.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sigmaFixedByEquivOrbitsProdGroup](declarations/sigmafixedbyequivorbitsprodgroup.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](declarations/sum-card-fixedby-eq-card-orbits-mul-card-group.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [isPretransitive_quotient](declarations/ispretransitive-quotient.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [finite_quotient_of_pretransitive_of_finite_quotient](declarations/finite-quotient-of-pretransitive-of-finite-quotient.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [equivSubgroupOrbitsSetoidComap](declarations/equivsubgrouporbitssetoidcomap.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [equivSubgroupOrbits](declarations/equivsubgrouporbits.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [finite_quotient_of_finite_quotient_of_finite_quotient](declarations/finite-quotient-of-finite-quotient-of-finite-quotient.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [equivSubgroupOrbitsQuotientGroup](declarations/equivsubgrouporbitsquotientgroup.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [selfEquivOrbitsQuotientProd'](declarations/selfequivorbitsquotientprod-source-edition-2.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [selfEquivOrbitsQuotientProd](declarations/selfequivorbitsquotientprod.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ConjClasses.card_carrier](declarations/conjclasses-card-carrier.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [normalCore_eq_ker](declarations/normalcore-eq-ker.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [quotientCentralizerEmbedding](declarations/quotientcentralizerembedding.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [quotientCentralizerEmbedding_apply](declarations/quotientcentralizerembedding-apply.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [quotientCenterEmbedding](declarations/quotientcenterembedding.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [quotientCenterEmbedding_apply](declarations/quotientcenterembedding-apply.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19a6c1dd36eace0904456cb76e58c028638ca7f01ca33c21640410f48b5274e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
