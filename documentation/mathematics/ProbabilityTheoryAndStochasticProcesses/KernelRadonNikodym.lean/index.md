# Kernel Radon Nikodym

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15b5289d204c14c22bccd67a5b3a396fc7501f15`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rnDerivAux](declarations/rnderivaux.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [rnDerivAux_nonneg](declarations/rnderivaux-nonneg.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rnDerivAux_le_one](declarations/rnderivaux-le-one.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [measurable_rnDerivAux](declarations/measurable-rnderivaux.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [measurable_rnDerivAux_right](declarations/measurable-rnderivaux-right.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [setLIntegral_rnDerivAux](declarations/setlintegral-rnderivaux.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [withDensity_rnDerivAux](declarations/withdensity-rnderivaux.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [withDensity_one_sub_rnDerivAux](declarations/withdensity-one-sub-rnderivaux.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mutuallySingularSet](declarations/mutuallysingularset.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mutuallySingularSetSlice](declarations/mutuallysingularsetslice.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mem_mutuallySingularSetSlice](declarations/mem-mutuallysingularsetslice.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [notMem_mutuallySingularSetSlice](declarations/notmem-mutuallysingularsetslice.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [measurableSet_mutuallySingularSet](declarations/measurableset-mutuallysingularset.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [measurableSet_mutuallySingularSetSlice](declarations/measurableset-mutuallysingularsetslice.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [measure_mutuallySingularSetSlice](declarations/measure-mutuallysingularsetslice.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [rnDeriv_def'](declarations/rnderiv-def.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [measurable_rnDeriv](declarations/measurable-rnderiv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [measurable_rnDeriv_right](declarations/measurable-rnderiv-right.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [rnDeriv_eq_top_iff](declarations/rnderiv-eq-top-iff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [rnDeriv_eq_top_iff'](declarations/rnderiv-eq-top-iff-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [measurable_singularPart_fun](declarations/measurable-singularpart-fun.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [measurable_singularPart_fun_right](declarations/measurable-singularpart-fun-right.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [singularPart_compl_mutuallySingularSetSlice](declarations/singularpart-compl-mutuallysingularsetslice.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [singularPart_of_subset_compl_mutuallySingularSetSlice](declarations/singularpart-of-subset-compl-mutuallysingularsetslice.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [singularPart_of_subset_mutuallySingularSetSlice](declarations/singularpart-of-subset-mutuallysingularsetslice.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [withDensity_rnDeriv_mutuallySingularSetSlice](declarations/withdensity-rnderiv-mutuallysingularsetslice.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [withDensity_rnDeriv_of_subset_mutuallySingularSetSlice](declarations/withdensity-rnderiv-of-subset-mutuallysingularsetslice.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [withDensity_rnDeriv_of_subset_compl_mutuallySingularSetSlice](declarations/withdensity-rnderiv-of-subset-compl-mutuallysingularsetslice.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mutuallySingular_singularPart](declarations/mutuallysingular-singularpart.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [rnDeriv_add_singularPart](declarations/rnderiv-add-singularpart.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [singularPart_eq_zero_iff_apply_eq_zero](declarations/singularpart-eq-zero-iff-apply-eq-zero.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [withDensity_rnDeriv_eq_zero_iff_apply_eq_zero](declarations/withdensity-rnderiv-eq-zero-iff-apply-eq-zero.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [singularPart_eq_zero_iff_absolutelyContinuous](declarations/singularpart-eq-zero-iff-absolutelycontinuous.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [withDensity_rnDeriv_eq_zero_iff_mutuallySingular](declarations/withdensity-rnderiv-eq-zero-iff-mutuallysingular.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [singularPart_eq_zero_iff_measure_eq_zero](declarations/singularpart-eq-zero-iff-measure-eq-zero.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [withDensity_rnDeriv_eq_zero_iff_measure_eq_zero](declarations/withdensity-rnderiv-eq-zero-iff-measure-eq-zero.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [measurableSet_absolutelyContinuous](declarations/measurableset-absolutelycontinuous.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [measurableSet_mutuallySingular](declarations/measurableset-mutuallysingular.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [singularPart_self](declarations/singularpart-self.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [eq_rnDeriv_measure](declarations/eq-rnderiv-measure.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [eq_singularPart_measure](declarations/eq-singularpart-measure.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [rnDeriv_eq_rnDeriv_measure](declarations/rnderiv-eq-rnderiv-measure.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [singularPart_eq_singularPart_measure](declarations/singularpart-eq-singularpart-measure.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eq_rnDeriv](declarations/eq-rnderiv.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [eq_singularPart](declarations/eq-singularpart.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [measurable_singularPart](declarations/measurable-singularpart.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [rnDeriv_self](declarations/rnderiv-self.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [rnDeriv_singularPart](declarations/rnderiv-singularpart.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [rnDeriv_lt_top](declarations/rnderiv-lt-top.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [rnDeriv_ne_top](declarations/rnderiv-ne-top.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [rnDeriv_pos](declarations/rnderiv-pos.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [rnDeriv_toReal_pos](declarations/rnderiv-toreal-pos.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [rnDeriv_add](declarations/rnderiv-add.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [setLIntegral_rnDeriv_le](declarations/setlintegral-rnderiv-le.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [setLIntegral_rnDeriv](declarations/setlintegral-rnderiv.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [lintegral_rnDeriv](declarations/lintegral-rnderiv.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [withDensity_rnDeriv_le](declarations/withdensity-rnderiv-le.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [withDensity_rnDeriv_eq](declarations/withdensity-rnderiv-eq.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [rnDeriv_withDensity](declarations/rnderiv-withdensity.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [rnDeriv_eq_one_iff_eq](declarations/rnderiv-eq-one-iff-eq.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0023c768addd936db7d16ab6599abbfd77e8fe60c468956df6d18c2f4aab544 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
