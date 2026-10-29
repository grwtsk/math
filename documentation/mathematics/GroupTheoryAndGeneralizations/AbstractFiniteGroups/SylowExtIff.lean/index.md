# Sylow Ext Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**79 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9cc54b6af9d7453bedad270fd15b9cc8222d86a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Sylow](declarations/sylow.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext_iff](declarations/ext-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [mulActionLeft](declarations/mulactionleft.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [comapOfKerIsPGroup](declarations/comapofkerispgroup.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_comapOfKerIsPGroup](declarations/coe-comapofkerispgroup.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [comapOfInjective](declarations/comapofinjective.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_comapOfInjective](declarations/coe-comapofinjective.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [subtype](declarations/subtype.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [subtype_injective](declarations/subtype-injective.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsPGroup.exists_le_sylow](declarations/ispgroup-exists-le-sylow.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Sylow.nonempty](declarations/sylow-nonempty.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Sylow.inhabited](declarations/sylow-inhabited.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Sylow.exists_comap_eq_of_ker_isPGroup](declarations/sylow-exists-comap-eq-of-ker-ispgroup.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Sylow.exists_comap_eq_of_injective](declarations/sylow-exists-comap-eq-of-injective.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Sylow.exists_comap_subtype_eq](declarations/sylow-exists-comap-subtype-eq.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Sylow.fintypeOfKerIsPGroup](declarations/sylow-fintypeofkerispgroup.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Sylow.fintypeOfInjective](declarations/sylow-fintypeofinjective.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [Sylow.pointwiseMulAction](declarations/sylow-pointwisemulaction.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Sylow.pointwise_smul_def](declarations/sylow-pointwise-smul-def.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Sylow.mulAction](declarations/sylow-mulaction.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Sylow.smul_def](declarations/sylow-smul-def.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Sylow.coe_subgroup_smul](declarations/sylow-coe-subgroup-smul.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Sylow.coe_smul](declarations/sylow-coe-smul.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Sylow.smul_le](declarations/sylow-smul-le.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Sylow.smul_subtype](declarations/sylow-smul-subtype.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Sylow.smul_eq_iff_mem_normalizer](declarations/sylow-smul-eq-iff-mem-normalizer.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Sylow.smul_eq_of_normal](declarations/sylow-smul-eq-of-normal.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Subgroup.sylow_mem_fixedPoints_iff](declarations/subgroup-sylow-mem-fixedpoints-iff.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsPGroup.inf_normalizer_sylow](declarations/ispgroup-inf-normalizer-sylow.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsPGroup.sylow_mem_fixedPoints_iff](declarations/ispgroup-sylow-mem-fixedpoints-iff.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_sylow_modEq_one](declarations/card-sylow-modeq-one.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [not_dvd_card_sylow](declarations/not-dvd-card-sylow.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [Sylow.equivSMul](declarations/sylow-equivsmul.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Sylow.equiv](declarations/sylow-equiv.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Sylow.orbit_eq_top](declarations/sylow-orbit-eq-top.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Sylow.stabilizer_eq_normalizer](declarations/sylow-stabilizer-eq-normalizer.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Sylow.conj_eq_normalizer_conj_of_mem_centralizer](declarations/sylow-conj-eq-normalizer-conj-of-mem-centralizer.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Sylow.conj_eq_normalizer_conj_of_mem](declarations/sylow-conj-eq-normalizer-conj-of-mem.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Sylow.equivQuotientNormalizer](declarations/sylow-equivquotientnormalizer.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [card_sylow_eq_card_quotient_normalizer](declarations/card-sylow-eq-card-quotient-normalizer.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [card_sylow_eq_index_normalizer](declarations/card-sylow-eq-index-normalizer.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [card_sylow_dvd_index](declarations/card-sylow-dvd-index.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_dvd_index_sylow'](declarations/not-dvd-index-sylow.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [not_dvd_index_sylow](declarations/not-dvd-index-sylow-source-edition-2.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Sylow.normalizer_sup_eq_top](declarations/sylow-normalizer-sup-eq-top-source-edition-2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Sylow.normalizer_sup_eq_top'](declarations/sylow-normalizer-sup-eq-top.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [QuotientGroup.card_preimage_mk](declarations/quotientgroup-card-preimage-mk.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_fixedPoints_mul_left_cosets_iff_mem_normalizer](declarations/mem-fixedpoints-mul-left-cosets-iff-mem-normalizer.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [fixedPointsMulLeftCosetsEquivQuotient](declarations/fixedpointsmulleftcosetsequivquotient.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [card_quotient_normalizer_modEq_card_quotient](declarations/card-quotient-normalizer-modeq-card-quotient.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [card_normalizer_modEq_card](declarations/card-normalizer-modeq-card.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [prime_dvd_card_quotient_normalizer](declarations/prime-dvd-card-quotient-normalizer.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [prime_pow_dvd_card_normalizer](declarations/prime-pow-dvd-card-normalizer.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [exists_subgroup_card_pow_succ](declarations/exists-subgroup-card-pow-succ.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [exists_subgroup_card_pow_prime_le](declarations/exists-subgroup-card-pow-prime-le.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [exists_subgroup_card_pow_prime](declarations/exists-subgroup-card-pow-prime.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [pow_dvd_card_of_pow_dvd_card](declarations/pow-dvd-card-of-pow-dvd-card.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [dvd_card_of_dvd_card](declarations/dvd-card-of-dvd-card.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [card_coprime_index](declarations/card-coprime-index.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ne_bot_of_dvd_card](declarations/ne-bot-of-dvd-card.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [card_eq_multiplicity](declarations/card-eq-multiplicity.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [ofCard](declarations/ofcard.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_ofCard](declarations/coe-ofcard.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [subsingleton_of_normal](declarations/subsingleton-of-normal.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [characteristic_of_normal](declarations/characteristic-of-normal.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [normal_of_normalizer_normal](declarations/normal-of-normalizer-normal.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [normalizer_normalizer](declarations/normalizer-normalizer.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [normal_of_all_max_subgroups_normal](declarations/normal-of-all-max-subgroups-normal.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [normal_of_normalizerCondition](declarations/normal-of-normalizercondition.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [directProductOfNormal](declarations/directproductofnormal.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f43f4a7792ac5e0701c944874bb0b2098b75925194582d810705374059849a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
