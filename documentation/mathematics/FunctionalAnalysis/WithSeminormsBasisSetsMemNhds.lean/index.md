# With Seminorms Basis Sets Mem Nhds

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af3c6435eb55934a843ce57e4e04074dff7beb2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/WithSeminormsBasisSetsMemNhds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SeminormFamily](declarations/seminormfamily.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [basisSets](declarations/basissets.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [basisSets_iff](declarations/basissets-iff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [basisSets_mem](declarations/basissets-mem.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [basisSets_singleton_mem](declarations/basissets-singleton-mem.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [basisSets_nonempty](declarations/basissets-nonempty.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [basisSets_intersect](declarations/basissets-intersect.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [basisSets_zero](declarations/basissets-zero.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [basisSets_add](declarations/basissets-add.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [basisSets_neg](declarations/basissets-neg.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [addGroupFilterBasis](declarations/addgroupfilterbasis.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [basisSets_smul_right](declarations/basissets-smul-right.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [basisSets_smul](declarations/basissets-smul.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [basisSets_smul_left](declarations/basissets-smul-left.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [moduleFilterBasis](declarations/modulefilterbasis.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [filter_eq_iInf](declarations/filter-eq-iinf.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [basisSets_mem_nhds](declarations/basissets-mem-nhds.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsBounded](declarations/isbounded.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isBounded_const](declarations/isbounded-const.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [const_isBounded](declarations/const-isbounded.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isBounded_sup](declarations/isbounded-sup.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [WithSeminorms](declarations/withseminorms.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [WithSeminorms.withSeminorms_eq](declarations/withseminorms-withseminorms-eq.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [WithSeminorms.topologicalAddGroup](declarations/withseminorms-topologicaladdgroup.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [WithSeminorms.continuousSMul](declarations/withseminorms-continuoussmul.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [WithSeminorms.hasBasis](declarations/withseminorms-hasbasis.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [WithSeminorms.hasBasis_zero_ball](declarations/withseminorms-hasbasis-zero-ball.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [WithSeminorms.hasBasis_ball](declarations/withseminorms-hasbasis-ball.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [WithSeminorms.mem_nhds_iff](declarations/withseminorms-mem-nhds-iff.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [WithSeminorms.isOpen_iff_mem_balls](declarations/withseminorms-isopen-iff-mem-balls.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [WithSeminorms.T1_of_separating](declarations/withseminorms-t1-of-separating.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [WithSeminorms.separating_of_T1](declarations/withseminorms-separating-of-t1.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [WithSeminorms.separating_iff_T1](declarations/withseminorms-separating-iff-t1.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [WithSeminorms.tendsto_nhds'](declarations/withseminorms-tendsto-nhds-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [WithSeminorms.tendsto_nhds](declarations/withseminorms-tendsto-nhds.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [WithSeminorms.tendsto_nhds_atTop](declarations/withseminorms-tendsto-nhds-attop.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [SeminormFamily.withSeminorms_of_nhds](declarations/seminormfamily-withseminorms-of-nhds.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [SeminormFamily.withSeminorms_of_hasBasis](declarations/seminormfamily-withseminorms-of-hasbasis.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [SeminormFamily.withSeminorms_iff_nhds_eq_iInf](declarations/seminormfamily-withseminorms-iff-nhds-eq-iinf.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [SeminormFamily.withSeminorms_iff_topologicalSpace_eq_iInf](declarations/seminormfamily-withseminorms-iff-topologicalspace-eq-iinf.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [WithSeminorms.continuous_seminorm](declarations/withseminorms-continuous-seminorm.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [SeminormFamily.withSeminorms_iff_uniformSpace_eq_iInf](declarations/seminormfamily-withseminorms-iff-uniformspace-eq-iinf.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_withSeminorms](declarations/norm-withseminorms.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded](declarations/withseminorms-isvonnbounded-iff-finset-seminorm-bounded.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [WithSeminorms.image_isVonNBounded_iff_finset_seminorm_bounded](declarations/withseminorms-image-isvonnbounded-iff-finset-seminorm-bounded.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [WithSeminorms.isVonNBounded_iff_seminorm_bounded](declarations/withseminorms-isvonnbounded-iff-seminorm-bounded.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [WithSeminorms.image_isVonNBounded_iff_seminorm_bounded](declarations/withseminorms-image-isvonnbounded-iff-seminorm-bounded.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [continuous_of_continuous_comp](declarations/continuous-of-continuous-comp.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [continuous_iff_continuous_comp](declarations/continuous-iff-continuous-comp.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [continuous_from_bounded](declarations/continuous-from-bounded.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cont_withSeminorms_normedSpace](declarations/cont-withseminorms-normedspace.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [cont_normedSpace_to_withSeminorms](declarations/cont-normedspace-to-withseminorms.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [_root_.WithSeminorms.equicontinuous_TFAE](declarations/root-withseminorms-equicontinuous-tfae.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [_root_.WithSeminorms.uniformEquicontinuous_iff_exists_continuous_seminorm](declarations/root-withseminorms-uniformequicontinuous-iff-exists-continuous-seminorm.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.WithSeminorms.uniformEquicontinuous_iff_bddAbove_and_continuous_iSup](declarations/root-withseminorms-uniformequicontinuous-iff-bddabove-and-continuous-isu.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [congr](declarations/congr.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [finset_sups](declarations/finset-sups.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [partial_sups](declarations/partial-sups.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [congr_equiv](declarations/congr-equiv.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [map_eq_zero_of_norm_zero](declarations/map-eq-zero-of-norm-zero.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [bound_of_continuous_normedSpace](declarations/bound-of-continuous-normedspace.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [bound_of_continuous](declarations/bound-of-continuous.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [WithSeminorms.toLocallyConvexSpace](declarations/withseminorms-tolocallyconvexspace.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [NormedSpace.toLocallyConvexSpace'](declarations/normedspace-tolocallyconvexspace.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [NormedSpace.toLocallyConvexSpace](declarations/normedspace-tolocallyconvexspace-source-edition-2.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [SeminormFamily.comp](declarations/seminormfamily-comp.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [SeminormFamily.comp_apply](declarations/seminormfamily-comp-apply.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [SeminormFamily.finset_sup_comp](declarations/seminormfamily-finset-sup-comp.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [LinearMap.withSeminorms_induced](declarations/linearmap-withseminorms-induced.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [Topology.IsInducing.withSeminorms](declarations/topology-isinducing-withseminorms.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [SeminormFamily.sigma](declarations/seminormfamily-sigma.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [withSeminorms_iInf](declarations/withseminorms-iinf.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [withSeminorms_pi](declarations/withseminorms-pi.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [WithSeminorms.firstCountableTopology](declarations/withseminorms-firstcountabletopology.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05c663e59cc1f5372f6093725f722bb4d4fa9398c4ec770f4900b041fad7622b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
