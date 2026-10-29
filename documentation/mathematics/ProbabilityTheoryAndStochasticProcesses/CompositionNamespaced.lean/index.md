# Composition Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**103 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6c5842276844a959b363d3a5e7e41fc25bcf772`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CompositionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [compProdFun](declarations/compprodfun.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [compProdFun_empty](declarations/compprodfun-empty.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [compProdFun_iUnion](declarations/compprodfun-iunion.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [compProdFun_tsum_right](declarations/compprodfun-tsum-right.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [compProdFun_tsum_left](declarations/compprodfun-tsum-left.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [compProdFun_eq_tsum](declarations/compprodfun-eq-tsum.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measurable_compProdFun_of_finite](declarations/measurable-compprodfun-of-finite.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measurable_compProdFun](declarations/measurable-compprodfun.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [compProd](declarations/compprod.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [compProd_apply_eq_compProdFun](declarations/compprod-apply-eq-compprodfun.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [compProd_of_not_isSFiniteKernel_left](declarations/compprod-of-not-issfinitekernel-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compProd_of_not_isSFiniteKernel_right](declarations/compprod-of-not-issfinitekernel-right.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compProd_apply](declarations/compprod-apply.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_compProd_apply](declarations/le-compprod-apply.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ae_kernel_lt_top](declarations/ae-kernel-lt-top.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [compProd_null](declarations/compprod-null.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ae_null_of_compProd_null](declarations/ae-null-of-compprod-null.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ae_ae_of_ae_compProd](declarations/ae-ae-of-ae-compprod.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [compProd_restrict](declarations/compprod-restrict.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [compProd_restrict_left](declarations/compprod-restrict-left.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [compProd_restrict_right](declarations/compprod-restrict-right.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lintegral_compProd'](declarations/lintegral-compprod-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lintegral_compProd](declarations/lintegral-compprod-source-edition-3.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lintegral_compProd₀](declarations/lintegral-compprod.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [set_lintegral_compProd](declarations/set-lintegral-compprod.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [set_lintegral_compProd_univ_right](declarations/set-lintegral-compprod-univ-right.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [set_lintegral_compProd_univ_left](declarations/set-lintegral-compprod-univ-left.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [compProd_eq_tsum_compProd](declarations/compprod-eq-tsum-compprod.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [compProd_eq_sum_compProd](declarations/compprod-eq-sum-compprod.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [compProd_eq_sum_compProd_left](declarations/compprod-eq-sum-compprod-left.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [compProd_eq_sum_compProd_right](declarations/compprod-eq-sum-compprod-right.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [IsMarkovKernel.compProd](declarations/ismarkovkernel-compprod.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compProd_apply_univ_le](declarations/compprod-apply-univ-le.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [IsFiniteKernel.compProd](declarations/isfinitekernel-compprod.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [IsSFiniteKernel.compProd](declarations/issfinitekernel-compprod.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [map](declarations/map.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_apply](declarations/map-apply.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_apply'](declarations/map-apply-source-edition-2.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lintegral_map](declarations/lintegral-map.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sum_map_seq](declarations/sum-map-seq.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [IsMarkovKernel.map](declarations/ismarkovkernel-map.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [IsFiniteKernel.map](declarations/isfinitekernel-map.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [IsSFiniteKernel.map](declarations/issfinitekernel-map.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [comap](declarations/comap.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [comap_apply](declarations/comap-apply-source-edition-2.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comap_apply'](declarations/comap-apply.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lintegral_comap](declarations/lintegral-comap.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sum_comap_seq](declarations/sum-comap-seq.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [IsMarkovKernel.comap](declarations/ismarkovkernel-comap.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [IsFiniteKernel.comap](declarations/isfinitekernel-comap.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [IsSFiniteKernel.comap](declarations/issfinitekernel-comap.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [prodMkLeft](declarations/prodmkleft.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [prodMkLeft_apply](declarations/prodmkleft-apply.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prodMkLeft_apply'](declarations/prodmkleft-apply-source-edition-2.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [lintegral_prodMkLeft](declarations/lintegral-prodmkleft.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [IsMarkovKernel.prodMkLeft](declarations/ismarkovkernel-prodmkleft.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [IsFiniteKernel.prodMkLeft](declarations/isfinitekernel-prodmkleft.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [IsSFiniteKernel.prodMkLeft](declarations/issfinitekernel-prodmkleft.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [swapLeft](declarations/swapleft.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [swapLeft_apply](declarations/swapleft-apply-source-edition-2.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [swapLeft_apply'](declarations/swapleft-apply.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [lintegral_swapLeft](declarations/lintegral-swapleft.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [IsMarkovKernel.swapLeft](declarations/ismarkovkernel-swapleft.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [IsFiniteKernel.swapLeft](declarations/isfinitekernel-swapleft.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [IsSFiniteKernel.swapLeft](declarations/issfinitekernel-swapleft.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [swapRight](declarations/swapright.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [swapRight_apply](declarations/swapright-apply-source-edition-2.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [swapRight_apply'](declarations/swapright-apply.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [lintegral_swapRight](declarations/lintegral-swapright.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [IsMarkovKernel.swapRight](declarations/ismarkovkernel-swapright.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [IsFiniteKernel.swapRight](declarations/isfinitekernel-swapright.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [IsSFiniteKernel.swapRight](declarations/issfinitekernel-swapright.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [fst](declarations/fst.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [fst_apply](declarations/fst-apply.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fst_apply'](declarations/fst-apply-source-edition-2.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lintegral_fst](declarations/lintegral-fst.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [IsMarkovKernel.fst](declarations/ismarkovkernel-fst.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [IsFiniteKernel.fst](declarations/isfinitekernel-fst.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [IsSFiniteKernel.fst](declarations/issfinitekernel-fst.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [snd](declarations/snd.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [snd_apply](declarations/snd-apply-source-edition-2.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [snd_apply'](declarations/snd-apply.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lintegral_snd](declarations/lintegral-snd.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [IsMarkovKernel.snd](declarations/ismarkovkernel-snd.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [IsFiniteKernel.snd](declarations/isfinitekernel-snd.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [IsSFiniteKernel.snd](declarations/issfinitekernel-snd.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [comp](declarations/comp.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_apply](declarations/comp-apply.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [comp_apply'](declarations/comp-apply-source-edition-2.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [comp_eq_snd_compProd](declarations/comp-eq-snd-compprod.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lintegral_comp](declarations/lintegral-comp.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [IsMarkovKernel.comp](declarations/ismarkovkernel-comp.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [IsFiniteKernel.comp](declarations/isfinitekernel-comp.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [IsSFiniteKernel.comp](declarations/issfinitekernel-comp.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [deterministic_comp_eq_map](declarations/deterministic-comp-eq-map.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [comp_deterministic_eq_comap](declarations/comp-deterministic-eq-comap.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [prod](declarations/prod.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod_apply](declarations/prod-apply.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lintegral_prod](declarations/lintegral-prod.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [IsMarkovKernel.prod](declarations/ismarkovkernel-prod.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [IsFiniteKernel.prod](declarations/isfinitekernel-prod.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [IsSFiniteKernel.prod](declarations/issfinitekernel-prod.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e23bed7f9077a2530b9a091183813b82c4d2d00ec70f359727f4f2001731d07e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
