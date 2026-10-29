# Lindelof

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**109 observed declarations and anonymous commands**, 88 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Lindelof/Variant802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be1f5c7d7dbb28b591700e58deb2e50a7ee34de4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/Lindelof.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsLindelof](declarations/islindelof.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsLindelof.compl_mem_sets](declarations/islindelof-compl-mem-sets.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsLindelof.compl_mem_sets_of_nhdsWithin](declarations/islindelof-compl-mem-sets-of-nhdswithin.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsLindelof.induction_on](declarations/islindelof-induction-on.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsLindelof.inter_right](declarations/islindelof-inter-right.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsLindelof.inter_left](declarations/islindelof-inter-left.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsLindelof.diff](declarations/islindelof-diff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsLindelof.of_isClosed_subset](declarations/islindelof-of-isclosed-subset.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsLindelof.image_of_continuousOn](declarations/islindelof-image-of-continuouson.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsLindelof.image](declarations/islindelof-image.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsLindelof.adherence_nhdset](declarations/islindelof-adherence-nhdset.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsLindelof.elim_countable_subcover](declarations/islindelof-elim-countable-subcover.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsLindelof.elim_nhds_subcover'](declarations/islindelof-elim-nhds-subcover.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsLindelof.elim_nhds_subcover](declarations/islindelof-elim-nhds-subcover-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsLindelof.indexed_countable_subcover](declarations/islindelof-indexed-countable-subcover.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsLindelof.disjoint_nhdsSet_left](declarations/islindelof-disjoint-nhdsset-left.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsLindelof.disjoint_nhdsSet_right](declarations/islindelof-disjoint-nhdsset-right.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsLindelof.elim_countable_subfamily_closed](declarations/islindelof-elim-countable-subfamily-closed.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsLindelof.inter_iInter_nonempty](declarations/islindelof-inter-iinter-nonempty.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsLindelof.elim_countable_subcover_image](declarations/islindelof-elim-countable-subcover-image.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isLindelof_of_countable_subcover](declarations/islindelof-of-countable-subcover.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isLindelof_of_countable_subfamily_closed](declarations/islindelof-of-countable-subfamily-closed.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isLindelof_iff_countable_subcover](declarations/islindelof-iff-countable-subcover.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isLindelof_iff_countable_subfamily_closed](declarations/islindelof-iff-countable-subfamily-closed.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isLindelof_empty](declarations/islindelof-empty.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isLindelof_singleton](declarations/islindelof-singleton.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Set.Subsingleton.isLindelof](declarations/set-subsingleton-islindelof.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Set.Countable.isLindelof_biUnion](declarations/set-countable-islindelof-biunion.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Set.Finite.isLindelof_biUnion](declarations/set-finite-islindelof-biunion.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Finset.isLindelof_biUnion](declarations/finset-islindelof-biunion.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isLindelof_accumulate](declarations/islindelof-accumulate.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Set.Countable.isLindelof_sUnion](declarations/set-countable-islindelof-sunion.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Set.Finite.isLindelof_sUnion](declarations/set-finite-islindelof-sunion.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isLindelof_iUnion](declarations/islindelof-iunion.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Set.Countable.isLindelof](declarations/set-countable-islindelof.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Set.Finite.isLindelof](declarations/set-finite-islindelof.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsLindelof.countable_of_discrete](declarations/islindelof-countable-of-discrete.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isLindelof_iff_countable](declarations/islindelof-iff-countable.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsLindelof.union](declarations/islindelof-union.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsLindelof.insert](declarations/islindelof-insert.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isLindelof_open_iff_eq_countable_iUnion_of_isTopologicalBasis](declarations/islindelof-open-iff-eq-countable-iunion-of-istopologicalbasis.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Filter.coLindelof](declarations/filter-colindelof.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasBasis_coLindelof](declarations/hasbasis-colindelof.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_coLindelof](declarations/mem-colindelof.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mem_coLindelof'](declarations/mem-colindelof-source-edition-2.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [_root_.IsLindelof.compl_mem_coLindelof](declarations/root-islindelof-compl-mem-colindelof.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coLindelof_le_cofinite](declarations/colindelof-le-cofinite.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Tendsto.isLindelof_insert_range_of_coLindelof](declarations/tendsto-islindelof-insert-range-of-colindelof.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Filter.coclosedLindelof](declarations/filter-coclosedlindelof.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [hasBasis_coclosedLindelof](declarations/hasbasis-coclosedlindelof.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_coclosedLindelof](declarations/mem-coclosedlindelof.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_coclosed_Lindelof'](declarations/mem-coclosed-lindelof.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coLindelof_le_coclosedLindelof](declarations/colindelof-le-coclosedlindelof.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsLindeof.compl_mem_coclosedLindelof_of_isClosed](declarations/islindeof-compl-mem-coclosedlindelof-of-isclosed.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `class` | [LindelofSpace](declarations/lindelofspace.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isLindelof_univ_iff](declarations/islindelof-univ-iff.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isLindelof_univ](declarations/islindelof-univ.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cluster_point_of_Lindelof](declarations/cluster-point-of-lindelof.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [LindelofSpace.elim_nhds_subcover](declarations/lindelofspace-elim-nhds-subcover.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [lindelofSpace_of_countable_subfamily_closed](declarations/lindelofspace-of-countable-subfamily-closed.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsClosed.isLindelof](declarations/isclosed-islindelof.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsCompact.isLindelof](declarations/iscompact-islindelof.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsSigmaCompact.isLindelof](declarations/issigmacompact-islindelof.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `class` | [NonLindelofSpace](declarations/nonlindelofspace.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [nonLindelof_univ](declarations/nonlindelof-univ.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsLindelof.ne_univ](declarations/islindelof-ne-univ.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Filter.coLindelof_eq_bot](declarations/filter-colindelof-eq-bot.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [nonLindelofSpace_of_neBot](declarations/nonlindelofspace-of-nebot.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Filter.coLindelof_neBot_iff](declarations/filter-colindelof-nebot-iff.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [not_LindelofSpace_iff](declarations/not-lindelofspace-iff.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [countable_of_Lindelof_of_discrete](declarations/countable-of-lindelof-of-discrete.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [countable_cover_nhds_interior](declarations/countable-cover-nhds-interior.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [countable_cover_nhds](declarations/countable-cover-nhds.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Filter.comap_coLindelof_le](declarations/filter-comap-colindelof-le.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isLindelof_range](declarations/islindelof-range.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [isLindelof_diagonal](declarations/islindelof-diagonal.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Topology.IsInducing.isLindelof_iff](declarations/topology-isinducing-islindelof-iff.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Topology.IsEmbedding.isLindelof_iff](declarations/topology-isembedding-islindelof-iff.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Topology.IsInducing.isLindelof_preimage](declarations/topology-isinducing-islindelof-preimage.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Topology.IsClosedEmbedding.isLindelof_preimage](declarations/topology-isclosedembedding-islindelof-preimage.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Topology.IsClosedEmbedding.tendsto_coLindelof](declarations/topology-isclosedembedding-tendsto-colindelof.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Subtype.isLindelof_iff](declarations/subtype-islindelof-iff.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [isLindelof_iff_isLindelof_univ](declarations/islindelof-iff-islindelof-univ.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [isLindelof_iff_LindelofSpace](declarations/islindelof-iff-lindelofspace.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [IsLindelof.of_coe](declarations/islindelof-of-coe.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [IsLindelof.countable](declarations/islindelof-countable.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Topology.IsClosedEmbedding.nonLindelofSpace](declarations/topology-isclosedembedding-nonlindelofspace.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Topology.IsClosedEmbedding.LindelofSpace](declarations/topology-isclosedembedding-lindelofspace.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [Quot.LindelofSpace](declarations/quot-lindelofspace.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [Quotient.LindelofSpace](declarations/quotient-lindelofspace.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [LindelofSpace.of_continuous_surjective](declarations/lindelofspace-of-continuous-surjective.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [IsHereditarilyLindelof](declarations/ishereditarilylindelof.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `class` | [HereditarilyLindelofSpace](declarations/hereditarilylindelofspace.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [IsHereditarilyLindelof.isLindelof_subset](declarations/ishereditarilylindelof-islindelof-subset.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [IsHereditarilyLindelof.isLindelof](declarations/ishereditarilylindelof-islindelof.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [HereditarilyLindelof_LindelofSets](declarations/hereditarilylindelof-lindelofsets.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [eq_open_union_countable](declarations/eq-open-union-countable.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [HereditarilyLindelof.lindelofSpace_subtype](declarations/hereditarilylindelof-lindelofspace-subtype.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de9053c1ea4e171e319bf6c7d78abda5293ad174370a34f5c8262ea89ce0a0f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lindelof/Variant802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
