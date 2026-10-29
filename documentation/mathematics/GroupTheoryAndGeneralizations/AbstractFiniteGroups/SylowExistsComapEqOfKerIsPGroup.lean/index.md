# Sylow Exists Comap Eq Of Ker Is PGroup

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 63 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Sylow](declarations/sylow.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [_root_.IsPGroup.toSylow](declarations/root-ispgroup-tosylow.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [_root_.IsPGroup.toSylow_coe](declarations/root-ispgroup-tosylow-coe.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [_root_.IsPGroup.mem_toSylow](declarations/root-ispgroup-mem-tosylow.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofCard](declarations/ofcard.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_ofCard](declarations/coe-ofcard.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [comapOfKerIsPGroup](declarations/comapofkerispgroup.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_comapOfKerIsPGroup](declarations/coe-comapofkerispgroup.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [comapOfInjective](declarations/comapofinjective.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_comapOfInjective](declarations/coe-comapofinjective.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [subtype](declarations/subtype.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [subtype_injective](declarations/subtype-injective.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsPGroup.exists_le_sylow](declarations/ispgroup-exists-le-sylow.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [nonempty](declarations/nonempty.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inhabited](declarations/inhabited.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_comap_eq_of_ker_isPGroup](declarations/exists-comap-eq-of-ker-ispgroup.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_comap_eq_of_injective](declarations/exists-comap-eq-of-injective.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_comap_subtype_eq](declarations/exists-comap-subtype-eq.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finite_of_ker_is_pGroup](declarations/finite-of-ker-is-pgroup.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finite_of_injective](declarations/finite-of-injective.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [pointwiseMulAction](declarations/pointwisemulaction.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pointwise_smul_def](declarations/pointwise-smul-def.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [mulAction](declarations/mulaction.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [smul_def](declarations/smul-def.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_subgroup_smul](declarations/coe-subgroup-smul.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_smul](declarations/coe-smul.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [smul_le](declarations/smul-le.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [smul_subtype](declarations/smul-subtype.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_eq_iff_mem_normalizer](declarations/smul-eq-iff-mem-normalizer.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_eq_of_normal](declarations/smul-eq-of-normal.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Subgroup.sylow_mem_fixedPoints_iff](declarations/subgroup-sylow-mem-fixedpoints-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsPGroup.inf_normalizer_sylow](declarations/ispgroup-inf-normalizer-sylow.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsPGroup.sylow_mem_fixedPoints_iff](declarations/ispgroup-sylow-mem-fixedpoints-iff.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Sylow.isPretransitive_of_finite](declarations/sylow-ispretransitive-of-finite.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [card_sylow_modEq_one](declarations/card-sylow-modeq-one.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_dvd_card_sylow](declarations/not-dvd-card-sylow.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [equivSMul](declarations/equivsmul.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [equiv](declarations/equiv.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [orbit_eq_top](declarations/orbit-eq-top.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [stabilizer_eq_normalizer](declarations/stabilizer-eq-normalizer.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [conj_eq_normalizer_conj_of_mem_centralizer](declarations/conj-eq-normalizer-conj-of-mem-centralizer.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [conj_eq_normalizer_conj_of_mem](declarations/conj-eq-normalizer-conj-of-mem.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [equivQuotientNormalizer](declarations/equivquotientnormalizer.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [card_eq_card_quotient_normalizer](declarations/card-eq-card-quotient-normalizer.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [card_eq_index_normalizer](declarations/card-eq-index-normalizer.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [card_dvd_index](declarations/card-dvd-index.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [not_dvd_index_aux](declarations/not-dvd-index-aux.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [not_dvd_index'](declarations/not-dvd-index.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [not_dvd_index](declarations/not-dvd-index-source-edition-2.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [mapSurjective](declarations/mapsurjective.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_mapSurjective](declarations/coe-mapsurjective.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mapSurjective_surjective](declarations/mapsurjective-surjective.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [normalizer_sup_eq_top](declarations/normalizer-sup-eq-top-source-edition-2.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [normalizer_sup_eq_top'](declarations/normalizer-sup-eq-top.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [QuotientGroup.card_preimage_mk](declarations/quotientgroup-card-preimage-mk.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_fixedPoints_mul_left_cosets_iff_mem_normalizer](declarations/mem-fixedpoints-mul-left-cosets-iff-mem-normalizer.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [fixedPointsMulLeftCosetsEquivQuotient](declarations/fixedpointsmulleftcosetsequivquotient.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [card_quotient_normalizer_modEq_card_quotient](declarations/card-quotient-normalizer-modeq-card-quotient.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [card_normalizer_modEq_card](declarations/card-normalizer-modeq-card.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [prime_dvd_card_quotient_normalizer](declarations/prime-dvd-card-quotient-normalizer.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [prime_pow_dvd_card_normalizer](declarations/prime-pow-dvd-card-normalizer.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [exists_subgroup_card_pow_succ](declarations/exists-subgroup-card-pow-succ.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [exists_subgroup_card_pow_prime_le](declarations/exists-subgroup-card-pow-prime-le.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [exists_subgroup_card_pow_prime](declarations/exists-subgroup-card-pow-prime.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [exists_subgroup_card_pow_prime_of_le_card](declarations/exists-subgroup-card-pow-prime-of-le-card.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [exists_subgroup_le_card_pow_prime_of_le_card](declarations/exists-subgroup-le-card-pow-prime-of-le-card.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [exists_subgroup_le_card_le](declarations/exists-subgroup-le-card-le.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [pow_dvd_card_of_pow_dvd_card](declarations/pow-dvd-card-of-pow-dvd-card.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [dvd_card_of_dvd_card](declarations/dvd-card-of-dvd-card.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [card_coprime_index](declarations/card-coprime-index.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [ne_bot_of_dvd_card](declarations/ne-bot-of-dvd-card.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [card_eq_multiplicity](declarations/card-eq-multiplicity.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [unique_of_normal](declarations/unique-of-normal.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [characteristic_of_normal](declarations/characteristic-of-normal.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [normal_of_normalizer_normal](declarations/normal-of-normalizer-normal.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [normalizer_normalizer](declarations/normalizer-normalizer.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [normal_of_all_max_subgroups_normal](declarations/normal-of-all-max-subgroups-normal.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [normal_of_normalizerCondition](declarations/normal-of-normalizercondition.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [directProductOfNormal](declarations/directproductofnormal.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d41e3a01f0718ae741524b634391e62ad4e0d3e9b23c92fb1e89b2409beac19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
