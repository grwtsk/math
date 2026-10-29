# Normed Space Pi Tensor Product Injective Seminorm

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c24595b665c1e32d941023a2cff6c0858f663391`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toDualContinuousMultilinearMap](declarations/todualcontinuousmultilinearmap.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toDualContinuousMultilinearMap_le_projectiveSeminorm](declarations/todualcontinuousmultilinearmap-le-projectiveseminorm.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [dualSeminorms_bounded](declarations/dualseminorms-bounded.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [injectiveSeminorm_apply](declarations/injectiveseminorm-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_eval_le_injectiveSeminorm](declarations/norm-eval-le-injectiveseminorm.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [injectiveSeminorm_le_projectiveSeminorm](declarations/injectiveseminorm-le-projectiveseminorm.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [injectiveSeminorm_tprod_le](declarations/injectiveseminorm-tprod-le.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [liftEquiv](declarations/liftequiv.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [liftIsometry](declarations/liftisometry.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [liftIsometry_apply_apply](declarations/liftisometry-apply-apply.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tprodL](declarations/tprodl.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tprodL_coe](declarations/tprodl-coe.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [liftIsometry_symm_apply](declarations/liftisometry-symm-apply.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [liftIsometry_tprodL](declarations/liftisometry-tprodl.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mapL](declarations/mapl.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mapL_coe](declarations/mapl-coe.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mapL_apply](declarations/mapl-apply.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mapLIncl](declarations/maplincl.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mapL_comp](declarations/mapl-comp.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [liftIsometry_comp_mapL](declarations/liftisometry-comp-mapl.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mapL_id](declarations/mapl-id.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mapL_one](declarations/mapl-one.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mapL_mul](declarations/mapl-mul.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapLMonoidHom](declarations/maplmonoidhom.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mapL_pow](declarations/mapl-pow.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mapL_add_smul_aux](declarations/mapl-add-smul-aux.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mapL_add](declarations/mapl-add.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mapL_smul](declarations/mapl-smul.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mapL_opNorm](declarations/mapl-opnorm.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapLMultilinear](declarations/maplmultilinear.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapLMultilinear_opNorm](declarations/maplmultilinear-opnorm.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8785d6f77ab342e46d0299860c798ee7459a74c560e422642549171070cac23d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
