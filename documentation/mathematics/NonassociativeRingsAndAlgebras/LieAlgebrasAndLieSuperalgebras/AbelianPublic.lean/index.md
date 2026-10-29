# Abelian Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5edea4b5c08393e1828db6da3384b2ec694df5f2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/AbelianPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsTrivial](declarations/liemodule-istrivial.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [trivial_lie_zero](declarations/trivial-lie-zero.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [LieModule.instIsTrivialOfSubsingleton](declarations/liemodule-instistrivialofsubsingleton-source-edition-2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [LieModule.instIsTrivialOfSubsingleton'](declarations/liemodule-instistrivialofsubsingleton.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [IsLieAbelian](declarations/islieabelian.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [LieIdeal.isLieAbelian_of_trivial](declarations/lieideal-islieabelian-of-trivial.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Function.Injective.isLieAbelian](declarations/function-injective-islieabelian.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Function.Surjective.isLieAbelian](declarations/function-surjective-islieabelian.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](declarations/lie-abelian-iff-equiv-lie-abelian.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isMulCommutative_iff_isLieAbelian](declarations/ismulcommutative-iff-islieabelian.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LieSubalgebra.isLieAbelian_lieSpan_iff](declarations/liesubalgebra-islieabelian-liespan-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ker](declarations/ker.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_ker](declarations/mem-ker.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [_root_.LieIdeal.isLieAbelian_iff](declarations/root-lieideal-islieabelian-iff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isFaithful_iff_ker_eq_bot](declarations/isfaithful-iff-ker-eq-bot.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [ker_eq_bot](declarations/ker-eq-bot.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [maxTrivSubmodule](declarations/maxtrivsubmodule.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_maxTrivSubmodule](declarations/mem-maxtrivsubmodule.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](declarations/ideal-oper-maxtrivsubmodule-eq-bot.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_max_triv_iff_bracket_eq_bot](declarations/le-max-triv-iff-bracket-eq-bot.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [trivial_iff_le_maximal_trivial](declarations/trivial-iff-le-maximal-trivial.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isTrivial_iff_max_triv_eq_top](declarations/istrivial-iff-max-triv-eq-top.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [maxTrivHom](declarations/maxtrivhom.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_maxTrivHom_apply](declarations/coe-maxtrivhom-apply.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [maxTrivEquiv](declarations/maxtrivequiv.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_maxTrivEquiv_apply](declarations/coe-maxtrivequiv-apply.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](declarations/maxtrivequiv-of-refl-eq-refl.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](declarations/maxtrivequiv-of-equiv-symm-eq-symm.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maxTrivLinearMapEquivLieModuleHom](declarations/maxtrivlinearmapequivliemodulehom.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](declarations/coe-maxtrivlinearmapequivliemodulehom.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](declarations/coe-maxtrivlinearmapequivliemodulehom-symm.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom](declarations/tolinearmap-maxtrivlinearmapequivliemodulehom.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm](declarations/tolinearmap-maxtrivlinearmapequivliemodulehom-symm.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [center](declarations/center.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ad_ker_eq_self_module_ker](declarations/ad-ker-eq-self-module-ker.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [self_module_ker_eq_center](declarations/self-module-ker-eq-center.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [abelian_of_le_center](declarations/abelian-of-le-center.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isLieAbelian_iff_center_eq_top](declarations/islieabelian-iff-center-eq-top.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isFaithful_self_iff](declarations/isfaithful-self-iff.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [center_eq_bot](declarations/center-eq-bot.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [commute_toEnd_of_mem_center_left](declarations/commute-toend-of-mem-center-left.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [commute_toEnd_of_mem_center_right](declarations/commute-toend-of-mem-center-right.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](declarations/liesubmodule-trivial-lie-oper-zero.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [lie_eq_self_of_isAtom_of_ne_bot](declarations/lie-eq-self-of-isatom-of-ne-bot.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [lie_eq_self_of_isAtom_of_nonabelian](declarations/lie-eq-self-of-isatom-of-nonabelian.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [TrivialLieModule](declarations/trivialliemodule.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [equiv](declarations/equiv.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34d413ac57838376b44131a1ca50c068ded6ecb55051979f2dae2495c65702b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variant921635559b0b232f5ee95e017c5fa6dfebba560541a0d36e7d042057997c471d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
