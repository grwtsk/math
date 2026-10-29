# Kernel Basic Kernel

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28f9ee4002795ae62a048574c561692e42872ccf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/KernelBasicKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](declarations/kernel.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coeFn_zero](declarations/coefn-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coeFn_add](declarations/coefn-add.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coeAddHom](declarations/coeaddhom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero_apply](declarations/zero-apply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_finset_sum](declarations/coe-finset-sum.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [finset_sum_apply](declarations/finset-sum-apply.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [finset_sum_apply'](declarations/finset-sum-apply-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [IsMarkovKernel](declarations/ismarkovkernel.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [IsFiniteKernel](declarations/isfinitekernel.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsFiniteKernel.bound](declarations/isfinitekernel-bound.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsFiniteKernel.bound_lt_top](declarations/isfinitekernel-bound-lt-top.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsFiniteKernel.bound_ne_top](declarations/isfinitekernel-bound-ne-top.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [kernel.measure_le_bound](declarations/kernel-measure-le-bound.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [isFiniteKernel_zero](declarations/isfinitekernel-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [IsFiniteKernel.add](declarations/isfinitekernel-add.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [IsMarkovKernel.is_probability_measure'](declarations/ismarkovkernel-is-probability-measure.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [IsFiniteKernel.isFiniteMeasure](declarations/isfinitekernel-isfinitemeasure.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ext](declarations/ext.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ext_iff](declarations/ext-iff-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ext_iff'](declarations/ext-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ext_fun](declarations/ext-fun.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ext_fun_iff](declarations/ext-fun-iff.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [measurable](declarations/measurable.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measurable_coe](declarations/measurable-coe.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsFiniteKernel.integrable](declarations/isfinitekernel-integrable.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsMarkovKernel.integrable](declarations/ismarkovkernel-integrable.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sum](declarations/sum.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_apply](declarations/sum-apply-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sum_apply'](declarations/sum-apply.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sum_zero](declarations/sum-zero.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sum_comm](declarations/sum-comm.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sum_fintype](declarations/sum-fintype.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sum_add](declarations/sum-add.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [_root_.ProbabilityTheory.IsSFiniteKernel](declarations/root-probabilitytheory-issfinitekernel.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [seq](declarations/seq.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kernel_sum_seq](declarations/kernel-sum-seq.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_sum_seq](declarations/measure-sum-seq.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [isFiniteKernel_seq](declarations/isfinitekernel-seq.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [IsSFiniteKernel.add](declarations/issfinitekernel-add.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsSFiniteKernel.finset_sum](declarations/issfinitekernel-finset-sum.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isSFiniteKernel_sum_of_denumerable](declarations/issfinitekernel-sum-of-denumerable.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isSFiniteKernel_sum](declarations/issfinitekernel-sum.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [deterministic](declarations/deterministic.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [deterministic_apply](declarations/deterministic-apply-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [deterministic_apply'](declarations/deterministic-apply.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [isMarkovKernel_deterministic](declarations/ismarkovkernel-deterministic.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lintegral_deterministic'](declarations/lintegral-deterministic-source-edition-2.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lintegral_deterministic](declarations/lintegral-deterministic.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [set_lintegral_deterministic'](declarations/set-lintegral-deterministic.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [set_lintegral_deterministic](declarations/set-lintegral-deterministic-source-edition-2.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [integral_deterministic'](declarations/integral-deterministic-source-edition-2.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [integral_deterministic](declarations/integral-deterministic.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [set_integral_deterministic'](declarations/set-integral-deterministic.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [set_integral_deterministic](declarations/set-integral-deterministic-source-edition-2.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [const](declarations/const.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [const_apply](declarations/const-apply.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [isFiniteKernel_const](declarations/isfinitekernel-const.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [isMarkovKernel_const](declarations/ismarkovkernel-const.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [lintegral_const](declarations/lintegral-const.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [set_lintegral_const](declarations/set-lintegral-const.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [integral_const](declarations/integral-const.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [set_integral_const](declarations/set-integral-const.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ofFunOfCountable](declarations/offunofcountable.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [restrict](declarations/restrict.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [restrict_apply](declarations/restrict-apply-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [restrict_apply'](declarations/restrict-apply.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [restrict_univ](declarations/restrict-univ.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lintegral_restrict](declarations/lintegral-restrict.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [set_lintegral_restrict](declarations/set-lintegral-restrict.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [set_integral_restrict](declarations/set-integral-restrict.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [IsFiniteKernel.restrict](declarations/isfinitekernel-restrict.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [IsSFiniteKernel.restrict](declarations/issfinitekernel-restrict.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [comapRight](declarations/comapright.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [comapRight_apply](declarations/comapright-apply.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [comapRight_apply'](declarations/comapright-apply-source-edition-2.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsMarkovKernel.comapRight](declarations/ismarkovkernel-comapright.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [IsFiniteKernel.comapRight](declarations/isfinitekernel-comapright.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [IsSFiniteKernel.comapRight](declarations/issfinitekernel-comapright.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [piecewise](declarations/piecewise.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [piecewise_apply](declarations/piecewise-apply.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [piecewise_apply'](declarations/piecewise-apply-source-edition-2.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [IsMarkovKernel.piecewise](declarations/ismarkovkernel-piecewise.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [IsFiniteKernel.piecewise](declarations/isfinitekernel-piecewise.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [IsSFiniteKernel.piecewise](declarations/issfinitekernel-piecewise.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lintegral_piecewise](declarations/lintegral-piecewise.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [set_lintegral_piecewise](declarations/set-lintegral-piecewise.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [integral_piecewise](declarations/integral-piecewise.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [set_integral_piecewise](declarations/set-integral-piecewise.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a55fcd43d468211ec4dbf7a1e2600ba76a7d2a55a99ae90450ad54720ded9a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant02911435eab328c245da9d588eca9d051a81606d2d25f8840579fab816cdf409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
