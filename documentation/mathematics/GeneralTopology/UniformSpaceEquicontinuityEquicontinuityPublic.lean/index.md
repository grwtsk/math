# Uniform Space Equicontinuity Equicontinuity Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**132 observed declarations and anonymous commands**, 120 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48fa4eba65d381f5e61ad0a9e10d755c06d02b2d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/UniformSpaceEquicontinuityEquicontinuityPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [EquicontinuousAt](declarations/equicontinuousat.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Set.EquicontinuousAt](declarations/set-equicontinuousat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [EquicontinuousWithinAt](declarations/equicontinuouswithinat.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Set.EquicontinuousWithinAt](declarations/set-equicontinuouswithinat.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Equicontinuous](declarations/equicontinuous.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Set.Equicontinuous](declarations/set-equicontinuous.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [EquicontinuousOn](declarations/equicontinuouson.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Set.EquicontinuousOn](declarations/set-equicontinuouson.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [UniformEquicontinuous](declarations/uniformequicontinuous.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [Set.UniformEquicontinuous](declarations/set-uniformequicontinuous.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [UniformEquicontinuousOn](declarations/uniformequicontinuouson.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Set.UniformEquicontinuousOn](declarations/set-uniformequicontinuouson.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EquicontinuousAt.equicontinuousWithinAt](declarations/equicontinuousat-equicontinuouswithinat.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [EquicontinuousWithinAt.mono](declarations/equicontinuouswithinat-mono.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [equicontinuousWithinAt_univ](declarations/equicontinuouswithinat-univ.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [equicontinuousAt_restrict_iff](declarations/equicontinuousat-restrict-iff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Equicontinuous.equicontinuousOn](declarations/equicontinuous-equicontinuouson.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [EquicontinuousOn.mono](declarations/equicontinuouson-mono.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [equicontinuousOn_univ](declarations/equicontinuouson-univ.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [equicontinuous_restrict_iff](declarations/equicontinuous-restrict-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [UniformEquicontinuous.uniformEquicontinuousOn](declarations/uniformequicontinuous-uniformequicontinuouson.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [UniformEquicontinuousOn.mono](declarations/uniformequicontinuouson-mono.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [uniformEquicontinuousOn_univ](declarations/uniformequicontinuouson-univ.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [uniformEquicontinuous_restrict_iff](declarations/uniformequicontinuous-restrict-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [equicontinuousAt_empty](declarations/equicontinuousat-empty.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [equicontinuousWithinAt_empty](declarations/equicontinuouswithinat-empty.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [equicontinuous_empty](declarations/equicontinuous-empty.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [equicontinuousOn_empty](declarations/equicontinuouson-empty.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [uniformEquicontinuous_empty](declarations/uniformequicontinuous-empty.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [uniformEquicontinuousOn_empty](declarations/uniformequicontinuouson-empty.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [equicontinuousAt_finite](declarations/equicontinuousat-finite.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [equicontinuousWithinAt_finite](declarations/equicontinuouswithinat-finite.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [equicontinuous_finite](declarations/equicontinuous-finite.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [equicontinuousOn_finite](declarations/equicontinuouson-finite.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [uniformEquicontinuous_finite](declarations/uniformequicontinuous-finite.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uniformEquicontinuousOn_finite](declarations/uniformequicontinuouson-finite.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [equicontinuousAt_unique](declarations/equicontinuousat-unique.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [equicontinuousWithinAt_unique](declarations/equicontinuouswithinat-unique.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [equicontinuous_unique](declarations/equicontinuous-unique.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [equicontinuousOn_unique](declarations/equicontinuouson-unique.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [uniformEquicontinuous_unique](declarations/uniformequicontinuous-unique.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [uniformEquicontinuousOn_unique](declarations/uniformequicontinuouson-unique.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [equicontinuousWithinAt_iff_pair](declarations/equicontinuouswithinat-iff-pair.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equicontinuousAt_iff_pair](declarations/equicontinuousat-iff-pair.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [UniformEquicontinuous.equicontinuous](declarations/uniformequicontinuous-equicontinuous.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [UniformEquicontinuousOn.equicontinuousOn](declarations/uniformequicontinuouson-equicontinuouson.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [EquicontinuousAt.continuousAt](declarations/equicontinuousat-continuousat.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [EquicontinuousWithinAt.continuousWithinAt](declarations/equicontinuouswithinat-continuouswithinat.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Set.EquicontinuousAt.continuousAt_of_mem](declarations/set-equicontinuousat-continuousat-of-mem.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Set.EquicontinuousWithinAt.continuousWithinAt_of_mem](declarations/set-equicontinuouswithinat-continuouswithinat-of-mem.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Equicontinuous.continuous](declarations/equicontinuous-continuous.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [EquicontinuousOn.continuousOn](declarations/equicontinuouson-continuouson.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Set.Equicontinuous.continuous_of_mem](declarations/set-equicontinuous-continuous-of-mem.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Set.EquicontinuousOn.continuousOn_of_mem](declarations/set-equicontinuouson-continuouson-of-mem.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [UniformEquicontinuous.uniformContinuous](declarations/uniformequicontinuous-uniformcontinuous.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [UniformEquicontinuousOn.uniformContinuousOn](declarations/uniformequicontinuouson-uniformcontinuouson.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Set.UniformEquicontinuous.uniformContinuous_of_mem](declarations/set-uniformequicontinuous-uniformcontinuous-of-mem.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Set.UniformEquicontinuousOn.uniformContinuousOn_of_mem](declarations/set-uniformequicontinuouson-uniformcontinuouson-of-mem.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [EquicontinuousAt.comp](declarations/equicontinuousat-comp.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [EquicontinuousWithinAt.comp](declarations/equicontinuouswithinat-comp.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Set.EquicontinuousAt.mono](declarations/set-equicontinuousat-mono.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Set.EquicontinuousWithinAt.mono](declarations/set-equicontinuouswithinat-mono.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Equicontinuous.comp](declarations/equicontinuous-comp.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [EquicontinuousOn.comp](declarations/equicontinuouson-comp.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Set.Equicontinuous.mono](declarations/set-equicontinuous-mono.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Set.EquicontinuousOn.mono](declarations/set-equicontinuouson-mono.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [UniformEquicontinuous.comp](declarations/uniformequicontinuous-comp.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [UniformEquicontinuousOn.comp](declarations/uniformequicontinuouson-comp.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Set.UniformEquicontinuous.mono](declarations/set-uniformequicontinuous-mono.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Set.UniformEquicontinuousOn.mono](declarations/set-uniformequicontinuouson-mono.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [equicontinuousAt_iff_range](declarations/equicontinuousat-iff-range.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [equicontinuousWithinAt_iff_range](declarations/equicontinuouswithinat-iff-range.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [equicontinuous_iff_range](declarations/equicontinuous-iff-range.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [equicontinuousOn_iff_range](declarations/equicontinuouson-iff-range.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [uniformEquicontinuous_iff_range](declarations/uniformequicontinuous-iff-range.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [uniformEquicontinuousOn_iff_range](declarations/uniformequicontinuouson-iff-range.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [equicontinuousAt_iff_continuousAt](declarations/equicontinuousat-iff-continuousat.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [equicontinuousWithinAt_iff_continuousWithinAt](declarations/equicontinuouswithinat-iff-continuouswithinat.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [equicontinuous_iff_continuous](declarations/equicontinuous-iff-continuous.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [equicontinuousOn_iff_continuousOn](declarations/equicontinuouson-iff-continuouson.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [uniformEquicontinuous_iff_uniformContinuous](declarations/uniformequicontinuous-iff-uniformcontinuous.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [uniformEquicontinuousOn_iff_uniformContinuousOn](declarations/uniformequicontinuouson-iff-uniformcontinuouson.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [equicontinuousWithinAt_iInf_rng](declarations/equicontinuouswithinat-iinf-rng.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [equicontinuousAt_iInf_rng](declarations/equicontinuousat-iinf-rng.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [equicontinuous_iInf_rng](declarations/equicontinuous-iinf-rng.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [equicontinuousOn_iInf_rng](declarations/equicontinuouson-iinf-rng.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [uniformEquicontinuous_iInf_rng](declarations/uniformequicontinuous-iinf-rng.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [uniformEquicontinuousOn_iInf_rng](declarations/uniformequicontinuouson-iinf-rng.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [equicontinuousWithinAt_iInf_dom](declarations/equicontinuouswithinat-iinf-dom.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [equicontinuousAt_iInf_dom](declarations/equicontinuousat-iinf-dom.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [equicontinuous_iInf_dom](declarations/equicontinuous-iinf-dom.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [equicontinuousOn_iInf_dom](declarations/equicontinuouson-iinf-dom.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [uniformEquicontinuous_iInf_dom](declarations/uniformequicontinuous-iinf-dom.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [uniformEquicontinuousOn_iInf_dom](declarations/uniformequicontinuouson-iinf-dom.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff_left](declarations/filter-hasbasis-equicontinuousat-iff-left.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Filter.HasBasis.equicontinuousWithinAt_iff_left](declarations/filter-hasbasis-equicontinuouswithinat-iff-left.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff_right](declarations/filter-hasbasis-equicontinuousat-iff-right.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Filter.HasBasis.equicontinuousWithinAt_iff_right](declarations/filter-hasbasis-equicontinuouswithinat-iff-right.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff](declarations/filter-hasbasis-equicontinuousat-iff.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Filter.HasBasis.equicontinuousWithinAt_iff](declarations/filter-hasbasis-equicontinuouswithinat-iff.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff_left](declarations/filter-hasbasis-uniformequicontinuous-iff-left.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Filter.HasBasis.uniformEquicontinuousOn_iff_left](declarations/filter-hasbasis-uniformequicontinuouson-iff-left.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff_right](declarations/filter-hasbasis-uniformequicontinuous-iff-right.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Filter.HasBasis.uniformEquicontinuousOn_iff_right](declarations/filter-hasbasis-uniformequicontinuouson-iff-right.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff](declarations/filter-hasbasis-uniformequicontinuous-iff.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Filter.HasBasis.uniformEquicontinuousOn_iff](declarations/filter-hasbasis-uniformequicontinuouson-iff.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [IsUniformInducing.equicontinuousAt_iff](declarations/isuniforminducing-equicontinuousat-iff.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [IsUniformInducing.equicontinuousWithinAt_iff](declarations/isuniforminducing-equicontinuouswithinat-iff.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [IsUniformInducing.equicontinuous_iff](declarations/isuniforminducing-equicontinuous-iff.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [IsUniformInducing.equicontinuousOn_iff](declarations/isuniforminducing-equicontinuouson-iff.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [IsUniformInducing.uniformEquicontinuous_iff](declarations/isuniforminducing-uniformequicontinuous-iff.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [IsUniformInducing.uniformEquicontinuousOn_iff](declarations/isuniforminducing-uniformequicontinuouson-iff.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [EquicontinuousWithinAt.closure'](declarations/equicontinuouswithinat-closure.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [EquicontinuousAt.closure'](declarations/equicontinuousat-closure.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Set.EquicontinuousAt.closure](declarations/set-equicontinuousat-closure.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Set.EquicontinuousWithinAt.closure](declarations/set-equicontinuouswithinat-closure.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Equicontinuous.closure'](declarations/equicontinuous-closure.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [EquicontinuousOn.closure'](declarations/equicontinuouson-closure.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Set.Equicontinuous.closure](declarations/set-equicontinuous-closure.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Set.EquicontinuousOn.closure](declarations/set-equicontinuouson-closure.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [UniformEquicontinuousOn.closure'](declarations/uniformequicontinuouson-closure.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [UniformEquicontinuous.closure'](declarations/uniformequicontinuous-closure.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Set.UniformEquicontinuous.closure](declarations/set-uniformequicontinuous-closure.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Set.UniformEquicontinuousOn.closure](declarations/set-uniformequicontinuouson-closure.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Filter.Tendsto.continuousWithinAt_of_equicontinuousWithinAt](declarations/filter-tendsto-continuouswithinat-of-equicontinuouswithinat.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Filter.Tendsto.continuousAt_of_equicontinuousAt](declarations/filter-tendsto-continuousat-of-equicontinuousat.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Filter.Tendsto.continuous_of_equicontinuous](declarations/filter-tendsto-continuous-of-equicontinuous.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Filter.Tendsto.continuousOn_of_equicontinuousOn](declarations/filter-tendsto-continuouson-of-equicontinuouson.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Filter.Tendsto.uniformContinuousOn_of_uniformEquicontinuousOn](declarations/filter-tendsto-uniformcontinuouson-of-uniformequicontinuouson.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Filter.Tendsto.uniformContinuous_of_uniformEquicontinuous](declarations/filter-tendsto-uniformcontinuous-of-uniformequicontinuous.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [EquicontinuousAt.tendsto_of_mem_closure](declarations/equicontinuousat-tendsto-of-mem-closure.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Equicontinuous.isClosed_setOfPred_tendsto](declarations/equicontinuous-isclosed-setofpred-tendsto.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6de391f9c31660c8176450984107617d359be4e397a9480211f9cd276b59f85a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
