# EMetric Space Defs Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**143 observed declarations and anonymous commands**, 101 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e1adc511024766f5e38859b9c7daf25e454da0e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/EMetricSpaceDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformity_dist_of_mem_uniformity](declarations/uniformity-dist-of-mem-uniformity.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [EDist](declarations/edist.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eball](declarations/eball.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_eball](declarations/mem-eball.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eball_subset_eball](declarations/eball-subset-eball.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [uniformSpaceOfEDist](declarations/uniformspaceofedist.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [uniformSpaceOfEDistOfHasBasis](declarations/uniformspaceofedistofhasbasis.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [PseudoEMetricSpace](declarations/pseudoemetricspace.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [PseudoEMetricSpace.ext](declarations/pseudoemetricspace-ext.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [uniformity_pseudoedist](declarations/uniformity-pseudoedist.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [uniformSpace_edist](declarations/uniformspace-edist.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [uniformity_basis_edist](declarations/uniformity-basis-edist.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Metric.nhds_basis_eball](declarations/metric-nhds-basis-eball.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_uniformity_edist](declarations/mem-uniformity-edist.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [EMetric.nhds_eq](declarations/emetric-nhds-eq.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [EMetric.mem_nhds_iff](declarations/emetric-mem-nhds-iff.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Metric.nhdsWithin_basis_eball](declarations/metric-nhdswithin-basis-eball.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [EMetric.mem_nhdsWithin_iff](declarations/emetric-mem-nhdswithin-iff.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [EMetric.isOpen_iff](declarations/emetric-isopen-iff.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Metric.isOpen_eball](declarations/metric-isopen-eball.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `class` | [WeakPseudoEMetricSpace](declarations/weakpseudoemetricspace.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [WeakPseudoEMetricSpace.ext](declarations/weakpseudoemetricspace-ext.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [PseudoEMetricSpace.toWeakPseudoEMetricSpace](declarations/pseudoemetricspace-toweakpseudoemetricspace.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [edist_triangle_left](declarations/edist-triangle-left.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [edist_triangle_right](declarations/edist-triangle-right.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [edist_congr_right](declarations/edist-congr-right.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [edist_congr_left](declarations/edist-congr-left.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [edist_congr](declarations/edist-congr.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [edist_triangle4](declarations/edist-triangle4.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [PseudoEMetricSpace.ofEDist](declarations/pseudoemetricspace-ofedist.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [EMetric.toUniformSpace_ofEDist](declarations/emetric-touniformspace-ofedist.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [EMetric.mk_uniformity_basis](declarations/emetric-mk-uniformity-basis.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [EMetric.mk_uniformity_basis_le](declarations/emetric-mk-uniformity-basis-le.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [uniformity_basis_edist_le](declarations/uniformity-basis-edist-le.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [uniformity_basis_edist'](declarations/uniformity-basis-edist-source-edition-2.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uniformity_basis_edist_le'](declarations/uniformity-basis-edist-le-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [uniformity_basis_edist_nnreal](declarations/uniformity-basis-edist-nnreal.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [uniformity_basis_edist_nnreal_le](declarations/uniformity-basis-edist-nnreal-le.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [uniformity_basis_edist_inv_nat](declarations/uniformity-basis-edist-inv-nat.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [uniformity_basis_edist_inv_two_pow](declarations/uniformity-basis-edist-inv-two-pow.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [edist_mem_uniformity](declarations/edist-mem-uniformity.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [uniformContinuousOn_iff](declarations/uniformcontinuouson-iff.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [uniformContinuous_iff](declarations/uniformcontinuous-iff.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [uniformContinuousOn_iff_le](declarations/uniformcontinuouson-iff-le.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [uniformContinuous_iff_le](declarations/uniformcontinuous-iff-le.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `abbrev` | [PseudoEMetricSpace.replaceUniformity](declarations/pseudoemetricspace-replaceuniformity.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [PseudoEMetricSpace.induced](declarations/pseudoemetricspace-induced.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [WeakPseudoEMetricSpace.IsInducing](declarations/weakpseudoemetricspace-isinducing.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Subtype.edist_eq](declarations/subtype-edist-eq.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Subtype.edist_mk_mk](declarations/subtype-edist-mk-mk.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [PseudoEMetricSpace.ofEDistOfTopology](declarations/pseudoemetricspace-ofedistoftopology.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ULift.edist_eq](declarations/ulift-edist-eq.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ULift.edist_up_up](declarations/ulift-edist-up-up.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [Prod.pseudoEMetricSpaceMax](declarations/prod-pseudoemetricspacemax.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Prod.edist_eq](declarations/prod-edist-eq.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_eball'](declarations/mem-eball-source-edition-2.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [closedEBall](declarations/closedeball.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_closedEBall](declarations/mem-closedeball.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_closedEBall'](declarations/mem-closedeball-source-edition-2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [closedEBall_top](declarations/closedeball-top.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [eball_subset_closedEBall](declarations/eball-subset-closedeball.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [pos_of_mem_eball](declarations/pos-of-mem-eball.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_eball_self](declarations/mem-eball-self.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_closedEBall_self](declarations/mem-closedeball-self.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mem_eball_comm](declarations/mem-eball-comm.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_closedEBall_comm](declarations/mem-closedeball-comm.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [closedEBall_subset_closedEBall](declarations/closedeball-subset-closedeball.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [eball_disjoint](declarations/eball-disjoint.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [eball_subset](declarations/eball-subset.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [exists_eball_subset_eball](declarations/exists-eball-subset-eball.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [eball_eq_empty_iff](declarations/eball-eq-empty-iff.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [ordConnected_setOfPred_closedEBall_subset](declarations/ordconnected-setofpred-closedeball-subset.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [ordConnected_setOfPred_eball_subset](declarations/ordconnected-setofpred-eball-subset.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [edistLtTopSetoid](declarations/edistlttopsetoid.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eball_zero](declarations/eball-zero.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [nhds_basis_closedEBall](declarations/nhds-basis-closedeball.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [nhdsWithin_basis_closedEBall](declarations/nhdswithin-basis-closedeball.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mem_closure_iff](declarations/mem-closure-iff.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [dense_iff](declarations/dense-iff.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tendsto_nhds](declarations/tendsto-nhds.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [tendsto_atTop](declarations/tendsto-attop.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](declarations/tendsto-nhdswithin-nhdswithin.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [tendsto_nhdsWithin_nhds](declarations/tendsto-nhdswithin-nhds.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [tendsto_nhds_nhds](declarations/tendsto-nhds-nhds.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [continuousAt_iff](declarations/continuousat-iff.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [continuousWithinAt_iff](declarations/continuouswithinat-iff.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [continuousOn_iff](declarations/continuouson-iff-source-edition-2.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [continuous_iff](declarations/continuous-iff-source-edition-2.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [continuousAt_iff'](declarations/continuousat-iff-source-edition-2.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [continuousWithinAt_iff'](declarations/continuouswithinat-iff-source-edition-2.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [continuousOn_iff'](declarations/continuouson-iff.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [continuous_iff'](declarations/continuous-iff.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [isClosed_eball_top](declarations/isclosed-eball-top.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [eball_mem_nhds](declarations/eball-mem-nhds.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [closedEBall_mem_nhds](declarations/closedeball-mem-nhds.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [eball_prod_same](declarations/eball-prod-same.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [closedEBall_prod_same](declarations/closedeball-prod-same.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [preimage_eball](declarations/preimage-eball.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [preimage_closedEBall](declarations/preimage-closedeball.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [image_eball](declarations/image-eball.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [image_closedEBall](declarations/image-closedeball.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `class` | [EMetricSpace](declarations/emetricspace.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [EMetricSpace.ext](declarations/emetricspace-ext.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `class` | [WeakEMetricSpace](declarations/weakemetricspace.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [WeakEMetricSpace.ext](declarations/weakemetricspace-ext.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [EMetricSpace.toWeakEMetricSpace](declarations/emetricspace-toweakemetricspace.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [edist_eq_zero](declarations/edist-eq-zero.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [zero_eq_edist](declarations/zero-eq-edist.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [edist_le_zero](declarations/edist-le-zero.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [edist_pos](declarations/edist-pos.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [Metric.closedEBall_zero](declarations/metric-closedeball-zero.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [eq_of_forall_edist_le](declarations/eq-of-forall-edist-le.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `abbrev` | [EMetricSpace.replaceUniformity](declarations/emetricspace-replaceuniformity.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `abbrev` | [EMetricSpace.replaceTopology](declarations/emetricspace-replacetopology.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `abbrev` | [EMetricSpace.induced](declarations/emetricspace-induced.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [uniformity_edist](declarations/uniformity-edist.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [edist_ofMul](declarations/edist-ofmul.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [edist_ofAdd](declarations/edist-ofadd.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [edist_toMul](declarations/edist-tomul.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [edist_toAdd](declarations/edist-toadd.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `instance` | [(anonymous)](declarations/instance.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [edist_toDual](declarations/edist-todual.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [edist_ofDual](declarations/edist-ofdual.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `abbrev` | [WeakEMetricSpace.induced](declarations/weakemetricspace-induced.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cffb79f53547974f102748ec9940951140d2b4db697477af3e95745f485b9a6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
