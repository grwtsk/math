# Well Founded Set Is WF

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**122 observed declarations and anonymous commands**, 113 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variante6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a022c946c750158f5db6e2c67a643872a1e1ee9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellFoundedSetIsWF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [WellFoundedOn](declarations/wellfoundedon.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [wellFoundedOn_empty](declarations/wellfoundedon-empty.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [wellFoundedOn_iff](declarations/wellfoundedon-iff.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [wellFoundedOn_univ](declarations/wellfoundedon-univ.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [_root_.WellFounded.wellFoundedOn](declarations/root-wellfounded-wellfoundedon.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [wellFoundedOn_range](declarations/wellfoundedon-range.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wellFoundedOn_image](declarations/wellfoundedon-image.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [induction](declarations/induction.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mono](declarations/mono.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mono'](declarations/mono-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subset](declarations/subset.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [acc_iff_wellFoundedOn](declarations/acc-iff-wellfoundedon.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [IsStrictOrder.subset](declarations/isstrictorder-subset.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [wellFoundedOn_iff_no_descending_seq](declarations/wellfoundedon-iff-no-descending-seq.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [WellFoundedOn.union](declarations/wellfoundedon-union.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [wellFoundedOn_union](declarations/wellfoundedon-union-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [IsWF](declarations/iswf.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isWF_empty](declarations/iswf-empty.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsWF.mono](declarations/iswf-mono.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isWF_univ_iff](declarations/iswf-univ-iff.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsWF.of_wellFoundedLT](declarations/iswf-of-wellfoundedlt.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.WellFounded.isWF](declarations/root-wellfounded-iswf.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsWF.union](declarations/iswf-union-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isWF_union](declarations/iswf-union.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isWF_iff_no_descending_seq](declarations/iswf-iff-no-descending-seq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [PartiallyWellOrderedOn](declarations/partiallywellorderedon-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [PartiallyWellOrderedOn.exists_lt](declarations/partiallywellorderedon-exists-lt.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [partiallyWellOrderedOn_iff_exists_lt](declarations/partiallywellorderedon-iff-exists-lt.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [PartiallyWellOrderedOn.mono](declarations/partiallywellorderedon-mono.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [partiallyWellOrderedOn_empty](declarations/partiallywellorderedon-empty.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [PartiallyWellOrderedOn.union](declarations/partiallywellorderedon-union.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [partiallyWellOrderedOn_union](declarations/partiallywellorderedon-union-source-edition-2.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [PartiallyWellOrderedOn.image_of_monotone_on](declarations/partiallywellorderedon-image-of-monotone-on.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [_root_.IsAntichain.finite_of_partiallyWellOrderedOn](declarations/root-isantichain-finite-of-partiallywellorderedon.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Finite.partiallyWellOrderedOn](declarations/finite-partiallywellorderedon.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.IsAntichain.partiallyWellOrderedOn_iff](declarations/root-isantichain-partiallywellorderedon-iff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [partiallyWellOrderedOn_singleton](declarations/partiallywellorderedon-singleton.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Subsingleton.partiallyWellOrderedOn](declarations/subsingleton-partiallywellorderedon.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [partiallyWellOrderedOn_insert](declarations/partiallywellorderedon-insert.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [PartiallyWellOrderedOn.insert](declarations/partiallywellorderedon-insert-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [partiallyWellOrderedOn_iff_finite_antichains](declarations/partiallywellorderedon-iff-finite-antichains.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [PartiallyWellOrderedOn.exists_monotone_subseq](declarations/partiallywellorderedon-exists-monotone-subseq.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [partiallyWellOrderedOn_iff_exists_monotone_subseq](declarations/partiallywellorderedon-iff-exists-monotone-subseq.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [PartiallyWellOrderedOn.prod](declarations/partiallywellorderedon-prod.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [PartiallyWellOrderedOn.wellFoundedOn](declarations/partiallywellorderedon-wellfoundedon.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [IsPWO](declarations/ispwo-source-edition-2.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsPWO.mono](declarations/ispwo-mono.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsPWO.exists_monotone_subseq](declarations/ispwo-exists-monotone-subseq.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isPWO_iff_exists_monotone_subseq](declarations/ispwo-iff-exists-monotone-subseq.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsPWO.isWF](declarations/ispwo-iswf.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsPWO.prod](declarations/ispwo-prod.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsPWO.image_of_monotoneOn](declarations/ispwo-image-of-monotoneon.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsPWO.image_of_monotone](declarations/ispwo-image-of-monotone.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsPWO.union](declarations/ispwo-union-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isPWO_union](declarations/ispwo-union.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Finite.isPWO](declarations/finite-ispwo.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isPWO_of_finite](declarations/ispwo-of-finite.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isPWO_singleton](declarations/ispwo-singleton.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [isPWO_empty](declarations/ispwo-empty.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Subsingleton.isPWO](declarations/subsingleton-ispwo.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isPWO_insert](declarations/ispwo-insert-source-edition-2.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsPWO.insert](declarations/ispwo-insert.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Finite.isWF](declarations/finite-iswf.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isWF_singleton](declarations/iswf-singleton.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Subsingleton.isWF](declarations/subsingleton-iswf.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isWF_insert](declarations/iswf-insert.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsWF.insert](declarations/iswf-insert-source-edition-2.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Finite.wellFoundedOn](declarations/finite-wellfoundedon.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [wellFoundedOn_singleton](declarations/wellfoundedon-singleton.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Subsingleton.wellFoundedOn](declarations/subsingleton-wellfoundedon.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [wellFoundedOn_insert](declarations/wellfoundedon-insert-source-edition-2.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [wellFoundedOn_sdiff_singleton](declarations/wellfoundedon-sdiff-singleton.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [WellFoundedOn.insert](declarations/wellfoundedon-insert.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [WellFoundedOn.sdiff_singleton](declarations/wellfoundedon-sdiff-singleton-source-edition-2.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [WellFoundedOn.mapsTo](declarations/wellfoundedon-mapsto.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [isPWO_iff_isWF](declarations/ispwo-iff-iswf.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isWF_iff_isPWO](declarations/iswf-iff-ispwo.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [IsPWO.of_linearOrder](declarations/ispwo-of-linearorder.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [partiallyWellOrderedOn](declarations/partiallywellorderedon.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [isPWO](declarations/ispwo.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isWF](declarations/iswf-source-edition-2.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [wellFoundedOn](declarations/wellfoundedon-source-edition-2.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [wellFoundedOn_sup](declarations/wellfoundedon-sup.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [partiallyWellOrderedOn_sup](declarations/partiallywellorderedon-sup.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [isWF_sup](declarations/iswf-sup.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [isPWO_sup](declarations/ispwo-sup.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [wellFoundedOn_bUnion](declarations/wellfoundedon-bunion.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [partiallyWellOrderedOn_bUnion](declarations/partiallywellorderedon-bunion.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [isWF_bUnion](declarations/iswf-bunion.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [isPWO_bUnion](declarations/ispwo-bunion.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [IsWF.min](declarations/iswf-min.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [IsWF.min_mem](declarations/iswf-min-mem.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsWF.not_lt_min](declarations/iswf-not-lt-min.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [IsWF.min_of_subset_not_lt_min](declarations/iswf-min-of-subset-not-lt-min.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [isWF_min_singleton](declarations/iswf-min-singleton.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [IsWF.min_eq_of_lt](declarations/iswf-min-eq-of-lt.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IsWF.min_eq_of_le](declarations/iswf-min-eq-of-le.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [IsWF.min_le](declarations/iswf-min-le.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [IsWF.le_min_iff](declarations/iswf-le-min-iff.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [IsWF.min_le_min_of_subset](declarations/iswf-min-le-min-of-subset.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [IsWF.min_union](declarations/iswf-min-union.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [BddBelow.wellFoundedOn_lt](declarations/bddbelow-wellfoundedon-lt.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [BddAbove.wellFoundedOn_gt](declarations/bddabove-wellfoundedon-gt.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [BddBelow.isWF](declarations/bddbelow-iswf.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [bddAbove_preimage](declarations/bddabove-preimage.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [exists_notMem_of_gt](declarations/exists-notmem-of-gt.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [IsBadSeq](declarations/isbadseq.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [iff_forall_not_isBadSeq](declarations/iff-forall-not-isbadseq.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [IsMinBadSeq](declarations/isminbadseq.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [minBadSeqOfBadSeq](declarations/minbadseqofbadseq.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [exists_min_bad_of_exists_bad](declarations/exists-min-bad-of-exists-bad.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [iff_not_exists_isMinBadSeq](declarations/iff-not-exists-isminbadseq.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [partiallyWellOrderedOn_sublistForall₂](declarations/partiallywellorderedon-sublistforall.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [subsetProdLex](declarations/subsetprodlex.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [imageProdLex](declarations/imageprodlex.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [fiberProdLex](declarations/fiberprodlex.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [ProdLex_iff](declarations/prodlex-iff.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Pi.isPWO](declarations/pi-ispwo.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [WellFounded.prod_lex_of_wellFoundedOn_fiber](declarations/wellfounded-prod-lex-of-wellfoundedon-fiber.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber](declarations/set-wellfoundedon-prod-lex-of-wellfoundedon-fiber.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [WellFounded.sigma_lex_of_wellFoundedOn_fiber](declarations/wellfounded-sigma-lex-of-wellfoundedon-fiber.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber](declarations/set-wellfoundedon-sigma-lex-of-wellfoundedon-fiber.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62010f9f3f9f0488ccdd3fa6d1564a317a714b584cfe53cbb477903010624b0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variante6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
