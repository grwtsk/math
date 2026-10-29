# Perm Centralizer Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d69eedbbaa6aea3acbc9778d6e1be02643b802a3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/PermCentralizerNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [Subgroup.Centralizer.toConjAct_smul_mem_cycleFactorsFinset](declarations/subgroup-centralizer-toconjact-smul-mem-cyclefactorsfinset.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Subgroup.Centralizer.cycleFactorsFinset_mulAction](declarations/subgroup-centralizer-cyclefactorsfinset-mulaction.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toPermHom](declarations/topermhom.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [centralizer_smul_def](declarations/centralizer-smul-def.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [val_centralizer_smul](declarations/val-centralizer-smul.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toPermHom_apply](declarations/topermhom-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_toPermHom](declarations/coe-topermhom.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [range_toPermHom'](declarations/range-topermhom.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_range_toPermHom'_iff](declarations/mem-range-topermhom-iff-source-edition-3.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_ker_toPermHom_iff](declarations/mem-ker-topermhom-iff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Basis](declarations/basis.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonempty](declarations/nonempty.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_support_self](declarations/mem-support-self.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [injective](declarations/injective.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cycleOf_eq](declarations/cycleof-eq.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sameCycle](declarations/samecycle.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofPermHomFun](declarations/ofpermhomfun.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_fixedPoints_or_exists_zpow_eq](declarations/mem-fixedpoints-or-exists-zpow-eq.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofPermHomFun_apply_of_cycleOf_mem](declarations/ofpermhomfun-apply-of-cycleof-mem.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ofPermHomFun_apply_of_mem_fixedPoints](declarations/ofpermhomfun-apply-of-mem-fixedpoints.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ofPermHomFun_apply_mem_support_cycle_iff](declarations/ofpermhomfun-apply-mem-support-cycle-iff.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ofPermHomFun_commute_zpow_apply](declarations/ofpermhomfun-commute-zpow-apply.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofPermHomFun_mul](declarations/ofpermhomfun-mul.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ofPermHomFun_one](declarations/ofpermhomfun-one.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [ofPermHom](declarations/ofpermhom.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ofPermHom_apply](declarations/ofpermhom-apply.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ofPermHom_support](declarations/ofpermhom-support.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [card_ofPermHom_support](declarations/card-ofpermhom-support.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ofPermHom_mem_centralizer](declarations/ofpermhom-mem-centralizer.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toCentralizer](declarations/tocentralizer.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toCentralizer_apply](declarations/tocentralizer-apply.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toCentralizer_equivariant](declarations/tocentralizer-equivariant.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toPermHom_apply_toCentralizer](declarations/topermhom-apply-tocentralizer.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_range_toPermHom_iff](declarations/mem-range-topermhom-iff.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_range_toPermHom_iff'](declarations/mem-range-topermhom-iff-source-edition-2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [range_toPermHom_eq_range_toPermHom'](declarations/range-topermhom-eq-range-topermhom.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [nat_card_range_toPermHom](declarations/nat-card-range-topermhom.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [kerParam](declarations/kerparam.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [kerParam_apply](declarations/kerparam-apply.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [kerParam_injective](declarations/kerparam-injective.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [kerParam_range_eq](declarations/kerparam-range-eq.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [kerParam_range_le_centralizer](declarations/kerparam-range-le-centralizer.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [kerParam_range_card](declarations/kerparam-range-card.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sign_kerParam_apply_apply](declarations/sign-kerparam-apply-apply.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cycleType_kerParam_apply_apply](declarations/cycletype-kerparam-apply-apply.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [nat_card_centralizer](declarations/nat-card-centralizer.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [card_isConj_mul_eq](declarations/card-isconj-mul-eq.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [card_isConj_eq](declarations/card-isconj-eq.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [card_of_cycleType_eq_zero_iff](declarations/card-of-cycletype-eq-zero-iff.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [card_of_cycleType_mul_eq](declarations/card-of-cycletype-mul-eq.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [card_of_cycleType](declarations/card-of-cycletype.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [card_of_cycleType_singleton](declarations/card-of-cycletype-singleton.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e34e71e6459f0e29d9e25f154784035feab55ff90504e0e0c5fdd92839e801c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
