# Banach Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36dc4e2ae56a5f270d6fb9c3dfd1593c3c759d73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NonlinearRightInverse](declarations/nonlinearrightinverse.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](declarations/nonlinearrightinverse-right-inv.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [NonlinearRightInverse.bound](declarations/nonlinearrightinverse-bound.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](declarations/continuouslinearequiv-tononlinearrightinverse.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](declarations/exists-approx-preimage-norm-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exists_preimage_norm_le](declarations/exists-preimage-norm-le.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isOpenMap](declarations/isopenmap.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isQuotientMap](declarations/isquotientmap.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Banach Namespaced Public](declarations/isopenmap-source-line-263-occurrence-2.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [interior_preimage](declarations/interior-preimage.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [closure_preimage](declarations/closure-preimage.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [frontier_preimage](declarations/frontier-preimage.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](declarations/exists-nonlinearrightinverse-of-surjective.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](declarations/nonlinearrightinverseofsurjective-nnnorm-pos.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuous_symm](declarations/continuous-symm.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](declarations/tocontinuouslinearequivofcontinuous.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](declarations/coefn-tocontinuouslinearequivofcontinuous.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](declarations/coefn-tocontinuouslinearequivofcontinuous-symm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [equivRange](declarations/equivrange.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_linearMap_equivRange](declarations/coe-linearmap-equivrange.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_equivRange](declarations/coe-equivrange.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [equivRange_symm_toLinearEquiv](declarations/equivrange-symm-tolinearequiv.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [equivRange_symm_apply](declarations/equivrange-symm-apply.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [antilipschitz_of_injective_of_isClosed_range](declarations/antilipschitz-of-injective-of-isclosed-range.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [antilipschitzConstant_of_injective_of_isClosed_range](declarations/antilipschitzconstant-of-injective-of-isclosed-range.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [antilipschitz_antiLipschitzConstant_of_injective_of_isClosed_range](declarations/antilipschitz-antilipschitzconstant-of-injective-of-isclosed-range.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isClosed_range_iff_antilipschitz_of_injective](declarations/isclosed-range-iff-antilipschitz-of-injective.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [leftInverse_of_injective_of_isClosed_range](declarations/leftinverse-of-injective-of-isclosed-range.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ofBijective](declarations/ofbijective.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coeFn_ofBijective](declarations/coefn-ofbijective.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_ofBijective](declarations/coe-ofbijective.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ofBijective_symm_apply_apply](declarations/ofbijective-symm-apply-apply.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ofBijective_apply_symm_apply](declarations/ofbijective-apply-symm-apply.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [Banach Namespaced Public](declarations/isunit-iff-bijective.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isUnit_iff_isUnit_toLinearMap](declarations/isunit-iff-isunit-tolinearmap.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [spectrum_eq](declarations/spectrum-eq.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [coprodSubtypeLEquivOfIsCompl](declarations/coprodsubtypelequivofiscompl.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](declarations/range-eq-map-coprodsubtypelequivofiscompl.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [LinearMap.continuous_of_isClosed_graph](declarations/linearmap-continuous-of-isclosed-graph.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](declarations/linearmap-continuous-of-seq-closed-graph.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ofIsClosedGraph](declarations/ofisclosedgraph.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coeFn_ofIsClosedGraph](declarations/coefn-ofisclosedgraph.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_ofIsClosedGraph](declarations/coe-ofisclosedgraph.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ofSeqClosedGraph](declarations/ofseqclosedgraph.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coeFn_ofSeqClosedGraph](declarations/coefn-ofseqclosedgraph.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_ofSeqClosedGraph](declarations/coe-ofseqclosedgraph.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [closed_range_of_antilipschitz](declarations/closed-range-of-antilipschitz.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Banach Namespaced Public](declarations/completespace-range-clm.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [bijective_iff_dense_range_and_antilipschitz](declarations/bijective-iff-dense-range-and-antilipschitz.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03b75f80d4afa4e274c2d5328138d846353110262360d78c36a3a67c02623bff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
