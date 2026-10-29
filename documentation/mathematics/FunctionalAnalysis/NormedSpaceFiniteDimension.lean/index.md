# Normed Space Finite Dimension

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d1c2a4d7b4532225c58289c25d1964dc73d5457`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpaceFiniteDimension.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toLinearIsometryEquiv](declarations/tolinearisometryequiv.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_toLinearIsometryEquiv](declarations/coe-tolinearisometryequiv.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toLinearIsometryEquiv_apply](declarations/tolinearisometryequiv-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toAffineIsometryEquiv](declarations/toaffineisometryequiv.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_toAffineIsometryEquiv](declarations/coe-toaffineisometryequiv.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineIsometryEquiv_apply](declarations/toaffineisometryequiv-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [AffineMap.continuous_of_finiteDimensional](declarations/affinemap-continuous-of-finitedimensional.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [AffineEquiv.continuous_of_finiteDimensional](declarations/affineequiv-continuous-of-finitedimensional.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AffineEquiv.toHomeomorphOfFiniteDimensional](declarations/affineequiv-tohomeomorphoffinitedimensional.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [AffineEquiv.coe_toHomeomorphOfFiniteDimensional](declarations/affineequiv-coe-tohomeomorphoffinitedimensional.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [AffineEquiv.coe_toHomeomorphOfFiniteDimensional_symm](declarations/affineequiv-coe-tohomeomorphoffinitedimensional-symm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ContinuousLinearMap.continuous_det](declarations/continuouslinearmap-continuous-det.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lipschitzExtensionConstant_pos](declarations/lipschitzextensionconstant-pos.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [LipschitzOnWith.extend_finite_dimension](declarations/lipschitzonwith-extend-finite-dimension.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [LinearMap.exists_antilipschitzWith](declarations/linearmap-exists-antilipschitzwith.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [LinearIndependent.eventually](declarations/linearindependent-eventually.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isOpen_setOf_linearIndependent](declarations/isopen-setof-linearindependent.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isOpen_setOf_nat_le_rank](declarations/isopen-setof-nat-le-rank.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Basis.op_nnnorm_le](declarations/basis-op-nnnorm-le.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Basis.op_norm_le](declarations/basis-op-norm-le.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Basis.exists_op_nnnorm_le](declarations/basis-exists-op-nnnorm-le.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Basis.exists_op_norm_le](declarations/basis-exists-op-norm-le.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [FiniteDimensional.complete](declarations/finitedimensional-complete.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Submodule.complete_of_finiteDimensional](declarations/submodule-complete-of-finitedimensional.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Submodule.closed_of_finiteDimensional](declarations/submodule-closed-of-finitedimensional.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [AffineSubspace.closed_of_finiteDimensional](declarations/affinesubspace-closed-of-finitedimensional.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_norm_le_le_norm_sub_of_finset](declarations/exists-norm-le-le-norm-sub-of-finset.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exists_seq_norm_le_one_le_norm_sub'](declarations/exists-seq-norm-le-one-le-norm-sub.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_seq_norm_le_one_le_norm_sub](declarations/exists-seq-norm-le-one-le-norm-sub-source-edition-2.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finiteDimensional_of_isCompact_closed_ball₀](declarations/finitedimensional-of-iscompact-closed-ball.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finiteDimensional_of_isCompact_closedBall](declarations/finitedimensional-of-iscompact-closedball.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasCompactMulSupport.eq_one_or_finiteDimensional](declarations/hascompactmulsupport-eq-one-or-finitedimensional.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [LinearEquiv.closedEmbedding_of_injective](declarations/linearequiv-closedembedding-of-injective.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ContinuousLinearMap.exists_right_inverse_of_surjective](declarations/continuouslinearmap-exists-right-inverse-of-surjective.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [closedEmbedding_smul_left](declarations/closedembedding-smul-left.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isClosedMap_smul_left](declarations/isclosedmap-smul-left.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [ContinuousLinearEquiv.piRing](declarations/continuouslinearequiv-piring.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [continuousOn_clm_apply](declarations/continuouson-clm-apply.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [continuous_clm_apply](declarations/continuous-clm-apply.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [FiniteDimensional.proper](declarations/finitedimensional-proper.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [exists_mem_frontier_infDist_compl_eq_dist](declarations/exists-mem-frontier-infdist-compl-eq-dist.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsCompact.exists_mem_frontier_infDist_compl_eq_dist](declarations/iscompact-exists-mem-frontier-infdist-compl-eq-dist.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [summable_norm_iff](declarations/summable-norm-iff.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [summable_of_isBigO'](declarations/summable-of-isbigo.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [summable_of_isBigO_nat'](declarations/summable-of-isbigo-nat.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [summable_of_isEquivalent](declarations/summable-of-isequivalent.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [summable_of_isEquivalent_nat](declarations/summable-of-isequivalent-nat.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsEquivalent.summable_iff](declarations/isequivalent-summable-iff.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsEquivalent.summable_iff_nat](declarations/isequivalent-summable-iff-nat.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2db7992cffec5f2d65af76571a5e1eb4cd377823567c124ab29d1b0baab0ac2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
