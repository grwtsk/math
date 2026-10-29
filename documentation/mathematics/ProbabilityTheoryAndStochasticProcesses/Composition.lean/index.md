# Composition

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**103 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4ed952dc3f155e3f9de5f6cf0480a765236331d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/Composition.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [compProdFun](declarations/compprodfun.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [compProdFun_empty](declarations/compprodfun-empty.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [compProdFun_iUnion](declarations/compprodfun-iunion.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [compProdFun_tsum_right](declarations/compprodfun-tsum-right.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [compProdFun_tsum_left](declarations/compprodfun-tsum-left.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [compProdFun_eq_tsum](declarations/compprodfun-eq-tsum.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measurable_compProdFun_of_finite](declarations/measurable-compprodfun-of-finite.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measurable_compProdFun](declarations/measurable-compprodfun.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [compProd](declarations/compprod.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [compProd_apply_eq_compProdFun](declarations/compprod-apply-eq-compprodfun.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [compProd_of_not_isSFiniteKernel_left](declarations/compprod-of-not-issfinitekernel-left.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compProd_of_not_isSFiniteKernel_right](declarations/compprod-of-not-issfinitekernel-right.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compProd_apply](declarations/compprod-apply.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_compProd_apply](declarations/le-compprod-apply.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ae_kernel_lt_top](declarations/ae-kernel-lt-top.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [compProd_null](declarations/compprod-null.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ae_null_of_compProd_null](declarations/ae-null-of-compprod-null.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ae_ae_of_ae_compProd](declarations/ae-ae-of-ae-compprod.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [compProd_restrict](declarations/compprod-restrict.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [compProd_restrict_left](declarations/compprod-restrict-left.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [compProd_restrict_right](declarations/compprod-restrict-right.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lintegral_compProd'](declarations/lintegral-compprod-source-edition-3.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lintegral_compProd](declarations/lintegral-compprod-source-edition-2.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lintegral_compProd₀](declarations/lintegral-compprod.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [set_lintegral_compProd](declarations/set-lintegral-compprod.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [set_lintegral_compProd_univ_right](declarations/set-lintegral-compprod-univ-right.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [set_lintegral_compProd_univ_left](declarations/set-lintegral-compprod-univ-left.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [compProd_eq_tsum_compProd](declarations/compprod-eq-tsum-compprod.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [compProd_eq_sum_compProd](declarations/compprod-eq-sum-compprod.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [compProd_eq_sum_compProd_left](declarations/compprod-eq-sum-compprod-left.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [compProd_eq_sum_compProd_right](declarations/compprod-eq-sum-compprod-right.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [IsMarkovKernel.compProd](declarations/ismarkovkernel-compprod.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compProd_apply_univ_le](declarations/compprod-apply-univ-le.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [IsFiniteKernel.compProd](declarations/isfinitekernel-compprod.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [IsSFiniteKernel.compProd](declarations/issfinitekernel-compprod.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [map](declarations/map.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_apply](declarations/map-apply-source-edition-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_apply'](declarations/map-apply.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lintegral_map](declarations/lintegral-map.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sum_map_seq](declarations/sum-map-seq.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [IsMarkovKernel.map](declarations/ismarkovkernel-map.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [IsFiniteKernel.map](declarations/isfinitekernel-map.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [IsSFiniteKernel.map](declarations/issfinitekernel-map.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [comap](declarations/comap.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [comap_apply](declarations/comap-apply-source-edition-2.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comap_apply'](declarations/comap-apply.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lintegral_comap](declarations/lintegral-comap.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sum_comap_seq](declarations/sum-comap-seq.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [IsMarkovKernel.comap](declarations/ismarkovkernel-comap.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [IsFiniteKernel.comap](declarations/isfinitekernel-comap.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [IsSFiniteKernel.comap](declarations/issfinitekernel-comap.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [prodMkLeft](declarations/prodmkleft.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [prodMkLeft_apply](declarations/prodmkleft-apply-source-edition-2.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prodMkLeft_apply'](declarations/prodmkleft-apply.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [lintegral_prodMkLeft](declarations/lintegral-prodmkleft.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [IsMarkovKernel.prodMkLeft](declarations/ismarkovkernel-prodmkleft.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [IsFiniteKernel.prodMkLeft](declarations/isfinitekernel-prodmkleft.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [IsSFiniteKernel.prodMkLeft](declarations/issfinitekernel-prodmkleft.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [swapLeft](declarations/swapleft.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [swapLeft_apply](declarations/swapleft-apply.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [swapLeft_apply'](declarations/swapleft-apply-source-edition-2.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [lintegral_swapLeft](declarations/lintegral-swapleft.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [IsMarkovKernel.swapLeft](declarations/ismarkovkernel-swapleft.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [IsFiniteKernel.swapLeft](declarations/isfinitekernel-swapleft.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [IsSFiniteKernel.swapLeft](declarations/issfinitekernel-swapleft.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [swapRight](declarations/swapright.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [swapRight_apply](declarations/swapright-apply-source-edition-2.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [swapRight_apply'](declarations/swapright-apply.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [lintegral_swapRight](declarations/lintegral-swapright.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [IsMarkovKernel.swapRight](declarations/ismarkovkernel-swapright.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [IsFiniteKernel.swapRight](declarations/isfinitekernel-swapright.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [IsSFiniteKernel.swapRight](declarations/issfinitekernel-swapright.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [fst](declarations/fst.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [fst_apply](declarations/fst-apply-source-edition-2.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fst_apply'](declarations/fst-apply.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lintegral_fst](declarations/lintegral-fst.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [IsMarkovKernel.fst](declarations/ismarkovkernel-fst.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [IsFiniteKernel.fst](declarations/isfinitekernel-fst.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [IsSFiniteKernel.fst](declarations/issfinitekernel-fst.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [snd](declarations/snd.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [snd_apply](declarations/snd-apply.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [snd_apply'](declarations/snd-apply-source-edition-2.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lintegral_snd](declarations/lintegral-snd.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [IsMarkovKernel.snd](declarations/ismarkovkernel-snd.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [IsFiniteKernel.snd](declarations/isfinitekernel-snd.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [IsSFiniteKernel.snd](declarations/issfinitekernel-snd.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [comp](declarations/comp.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_apply](declarations/comp-apply.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [comp_apply'](declarations/comp-apply-source-edition-2.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [comp_eq_snd_compProd](declarations/comp-eq-snd-compprod.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lintegral_comp](declarations/lintegral-comp.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [IsMarkovKernel.comp](declarations/ismarkovkernel-comp.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [IsFiniteKernel.comp](declarations/isfinitekernel-comp.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [IsSFiniteKernel.comp](declarations/issfinitekernel-comp.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [deterministic_comp_eq_map](declarations/deterministic-comp-eq-map.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [comp_deterministic_eq_comap](declarations/comp-deterministic-eq-comap.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [prod](declarations/prod.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod_apply](declarations/prod-apply.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lintegral_prod](declarations/lintegral-prod.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [IsMarkovKernel.prod](declarations/ismarkovkernel-prod.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [IsFiniteKernel.prod](declarations/isfinitekernel-prod.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [IsSFiniteKernel.prod](declarations/issfinitekernel-prod.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01489469bdfa8a60b82caa72661a22412f2b68ea12b3911ee5d2dee89da97554 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
