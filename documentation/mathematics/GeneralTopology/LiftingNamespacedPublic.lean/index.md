# Lifting Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/LiftingNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lift_nhds](declarations/exists-lift-nhds.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [continuous_lift](declarations/continuous-lift.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [monodromy_theorem](declarations/monodromy-theorem.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [existsUnique_continuousMap_lifts](declarations/existsunique-continuousmap-lifts-source-edition-2.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exists_path_lifts](declarations/exists-path-lifts.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [liftPath](declarations/liftpath.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [liftPath_lifts](declarations/liftpath-lifts.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [liftPath_zero](declarations/liftpath-zero.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eq_liftPath_iff](declarations/eq-liftpath-iff-source-edition-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eq_liftPath_iff'](declarations/eq-liftpath-iff.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [liftPath_const](declarations/liftpath-const.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [liftPath_trans](declarations/liftpath-trans.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_subtypeVal_pathComponent_surjective](declarations/comp-subtypeval-pathcomponent-surjective.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [liftHomotopy](declarations/lifthomotopy.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [liftHomotopy_lifts](declarations/lifthomotopy-lifts.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [liftHomotopy_zero](declarations/lifthomotopy-zero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [eq_liftHomotopy_iff](declarations/eq-lifthomotopy-iff.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [eq_liftHomotopy_iff'](declarations/eq-lifthomotopy-iff-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [liftHomotopyRel](declarations/lifthomotopyrel.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [homotopicRel_iff_comp](declarations/homotopicrel-iff-comp.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [homotopicRel_liftPath](declarations/homotopicrel-liftpath.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [liftPath_apply_one_eq_of_homotopicRel](declarations/liftpath-apply-one-eq-of-homotopicrel.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [monodromy](declarations/monodromy.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [liftPathQuotient](declarations/liftpathquotient.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_liftPathQuotient](declarations/map-liftpathquotient.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monodromy_map](declarations/monodromy-map.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monodromy_eq_of_map_eq](declarations/monodromy-eq-of-map-eq.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [monodromy_refl](declarations/monodromy-refl.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [monodromy_trans_apply](declarations/monodromy-trans-apply.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [fundamentalGroupMulAction](declarations/fundamentalgroupmulaction.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [monodromyPerm](declarations/monodromyperm.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_monodromyPerm](declarations/coe-monodromyperm.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [monodromyFunctor](declarations/monodromyfunctor.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [monodromy_bijective](declarations/monodromy-bijective.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [injective_path_homotopic_map](declarations/injective-path-homotopic-map.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [existsUnique_continuousMap_lifts](declarations/existsunique-continuousmap-lifts.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [existsUnique_continuousMap_lifts_of_range_le](declarations/existsunique-continuousmap-lifts-of-range-le.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsCoveringMapOn.existsUnique_continuousMap_lifts](declarations/iscoveringmapon-existsunique-continuousmap-lifts.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [monodromy_toPermFiber](declarations/monodromy-topermfiber.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [commute_monodromyPerm_toPermFiber](declarations/commute-monodromyperm-topermfiber-source-edition-2.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [monodromy_ext_iff](declarations/monodromy-ext-iff-source-edition-2.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [monodromy_eq_id_iff](declarations/monodromy-eq-id-iff.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ker_monodromyPerm](declarations/ker-monodromyperm.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [monodromyPerm_injective](declarations/monodromyperm-injective-source-edition-2.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [fundamentalGroupToMulOpposite](declarations/fundamentalgrouptomulopposite-source-edition-2.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fundamentalGroupToMulOpposite_apply_eq_Iff](declarations/fundamentalgrouptomulopposite-apply-eq-iff-source-edition-2.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [unop_fundamentalGroupToMulOpposite_smul](declarations/unop-fundamentalgrouptomulopposite-smul-source-edition-2.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fundamentalGroupToMulOpposite_eq_one_iff](declarations/fundamentalgrouptomulopposite-eq-one-iff-source-edition-2.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ker_fundamentalGroupToMulOpposite](declarations/ker-fundamentalgrouptomulopposite-source-edition-2.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fundamentalGroupToMulOpposite_surjective](declarations/fundamentalgrouptomulopposite-surjective-source-edition-2.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [fundamentalGroupToMulOpposite_injective](declarations/fundamentalgrouptomulopposite-injective-source-edition-2.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [fundamentalGroupEquiv](declarations/fundamentalgroupequiv-source-edition-2.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [monodromy_toPermFiber](declarations/monodromy-topermfiber-source-edition-2.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [commute_monodromyPerm_toPermFiber](declarations/commute-monodromyperm-topermfiber.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [monodromy_ext_iff](declarations/monodromy-ext-iff.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [monodromy_eq_id_iff](declarations/monodromy-eq-id-iff-source-edition-2.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ker_monodromyPerm](declarations/ker-monodromyperm-source-edition-2.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [monodromyPerm_injective](declarations/monodromyperm-injective.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [fundamentalGroupToMulOpposite](declarations/fundamentalgrouptomulopposite.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [fundamentalGroupToMulOpposite_apply_eq_Iff](declarations/fundamentalgrouptomulopposite-apply-eq-iff.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [unop_fundamentalGroupToMulOpposite_smul](declarations/unop-fundamentalgrouptomulopposite-smul.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [fundamentalGroupToMulOpposite_eq_one_iff](declarations/fundamentalgrouptomulopposite-eq-one-iff.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ker_fundamentalGroupToMulOpposite](declarations/ker-fundamentalgrouptomulopposite.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [fundamentalGroupToMulOpposite_surjective](declarations/fundamentalgrouptomulopposite-surjective.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [fundamentalGroupToMulOpposite_injective](declarations/fundamentalgrouptomulopposite-injective.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [fundamentalGroupEquiv](declarations/fundamentalgroupequiv.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf275a67b3da6549456ddbc5ba85f58e933d1814dc793ba2e9efd9669f224455 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
