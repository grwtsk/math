# Cyclic Prime Walk Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**100 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variantc01c1b9c39bdab9b48378742e5e5f68e5ad3909c5b33f04fa9a87708bd8a60ec.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e013e54f9abfe05000b09d959283b052865b7e9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sqrtThree](declarations/sqrtthree.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sqrtThree_sq](declarations/sqrtthree-sq.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sqrtThree_mul_self](declarations/sqrtthree-mul-self.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [StandardCoord](declarations/standardcoord.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [StandardMatrix](declarations/standardmatrix.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [trivialFiberVector](declarations/trivialfibervector.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [InStandardPlane](declarations/instandardplane.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coordinateSum](declarations/coordinatesum.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [zeroSumSubspace](declarations/zerosumsubspace.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_zeroSumSubspace_iff](declarations/mem-zerosumsubspace-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coordinateSum_permutationRepresentation](declarations/coordinatesum-permutationrepresentation.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [permutationRepresentation_preserves_zeroSum](declarations/permutationrepresentation-preserves-zerosum.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [permutationRepresentation_symm](declarations/permutationrepresentation-symm.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zeroSumSubspace_map_permutationRepresentation](declarations/zerosumsubspace-map-permutationrepresentation.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [restrictedPermutation](declarations/restrictedpermutation.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [restrictedPermutation_coe](declarations/restrictedpermutation-coe.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [standardPermutationRepresentation](declarations/standardpermutationrepresentation.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [standardBasisU](declarations/standardbasisu.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [standardBasisV](declarations/standardbasisv.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [adjacentSwaps_fix_trivialFiberVector](declarations/adjacentswaps-fix-trivialfibervector.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [standardBasisU_mem](declarations/standardbasisu-mem.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [standardBasisV_mem](declarations/standardbasisv-mem.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [standardPlane_coordinates](declarations/standardplane-coordinates.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [standardBasisU_mem_zeroSum](declarations/standardbasisu-mem-zerosum.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [standardBasisV_mem_zeroSum](declarations/standardbasisv-mem-zerosum.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [standardPlaneEquiv](declarations/standardplaneequiv.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [standardPlaneBasis](declarations/standardplanebasis.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [standardPlaneBasis_zero](declarations/standardplanebasis-zero.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [standardPlaneBasis_one](declarations/standardplanebasis-one.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [adjacentSwap01_standardBasisU](declarations/adjacentswap01-standardbasisu.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [adjacentSwap01_standardBasisV](declarations/adjacentswap01-standardbasisv.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [adjacentSwap12_standardBasisU](declarations/adjacentswap12-standardbasisu.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [adjacentSwap12_standardBasisV](declarations/adjacentswap12-standardbasisv.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [residueOneReflection](declarations/residueonereflection.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [residueFiveReflection](declarations/residuefivereflection.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [restrictedSwap01](declarations/restrictedswap01.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [restrictedSwap12](declarations/restrictedswap12.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [restrictedSwap01_toMatrix](declarations/restrictedswap01-tomatrix.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [restrictedSwap12_toMatrix](declarations/restrictedswap12-tomatrix.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [coordNormSq](declarations/coordnormsq.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [coordInner](declarations/coordinner.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [residueOneAxis](declarations/residueoneaxis.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [residueFiveAxis](declarations/residuefiveaxis.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [residueOneAxis_unit](declarations/residueoneaxis-unit.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [residueFiveAxis_unit](declarations/residuefiveaxis-unit.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reflectionAxes_inner](declarations/reflectionaxes-inner.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reflectionAxes_inner_eq_cos_pi_div_three](declarations/reflectionaxes-inner-eq-cos-pi-div-three.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [residueOne_fixes_axis](declarations/residueone-fixes-axis.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [residueFive_fixes_axis](declarations/residuefive-fixes-axis.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [residueOneReflection_sq](declarations/residueonereflection-sq.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [residueFiveReflection_sq](declarations/residuefivereflection-sq.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [residueOneReflection_det](declarations/residueonereflection-det.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [residueFiveReflection_det](declarations/residuefivereflection-det.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [residueOneReflection_normSq](declarations/residueonereflection-normsq.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [residueFiveReflection_normSq](declarations/residuefivereflection-normsq.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [chosenReflection](declarations/chosenreflection.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [chosenReflection_normSq](declarations/chosenreflection-normsq.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [chosenReflection_det](declarations/chosenreflection-det.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [reflectionProduct](declarations/reflectionproduct.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [reflectionProduct_normSq](declarations/reflectionproduct-normsq.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [reflectionProduct_det](declarations/reflectionproduct-det.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [idealTransition](declarations/idealtransition.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [idealTransition_entries](declarations/idealtransition-entries.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [idealPositiveEigenvector](declarations/idealpositiveeigenvector.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [idealNegativeEigenvector](declarations/idealnegativeeigenvector.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [idealPositiveEigenvector_ne_zero](declarations/idealpositiveeigenvector-ne-zero.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [idealNegativeEigenvector_ne_zero](declarations/idealnegativeeigenvector-ne-zero.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [idealTransition_positive_eigenvector](declarations/idealtransition-positive-eigenvector.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [idealTransition_negative_eigenvector](declarations/idealtransition-negative-eigenvector.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [idealTransition_sq](declarations/idealtransition-sq.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [idealTransition_normSq](declarations/idealtransition-normsq.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [idealStandardSpectralGap](declarations/idealstandardspectralgap.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [idealStandardSpectralGap_eq_half](declarations/idealstandardspectralgap-eq-half.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [empiricalTransition](declarations/empiricaltransition.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [centeredWeight](declarations/centeredweight.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [empiricalTransition_entries](declarations/empiricaltransition-entries.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [empiricalTransition_sq](declarations/empiricaltransition-sq.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [empiricalWeightFromCounts](declarations/empiricalweightfromcounts.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [empiricalTransitionFromCounts](declarations/empiricaltransitionfromcounts.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [one_sub_empiricalWeightFromCounts](declarations/one-sub-empiricalweightfromcounts.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [centeredWeightFromCounts](declarations/centeredweightfromcounts.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [discrepancy](declarations/discrepancy.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [discrepancy_eq_centered_smul_difference](declarations/discrepancy-eq-centered-smul-difference.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [generatorDifference_entries](declarations/generatordifference-entries.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [generatorDifference_sq](declarations/generatordifference-sq.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [discrepancy_complement](declarations/discrepancy-complement.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [signedObservable](declarations/signedobservable.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [signedObservable_discrepancy](declarations/signedobservable-discrepancy.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [discrepancy_entries](declarations/discrepancy-entries.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [discrepancy_trace](declarations/discrepancy-trace.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [discrepancy_det](declarations/discrepancy-det.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [discrepancy_det_complement](declarations/discrepancy-det-complement.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [discrepancy_normSq](declarations/discrepancy-normsq.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [discrepancy_normSq_complement](declarations/discrepancy-normsq-complement.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [empiricalTransition_normSq](declarations/empiricaltransition-normsq.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [residueStep?](declarations/residuestep.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [residueStep_two](declarations/residuestep-two.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [residueStep_three](declarations/residuestep-three.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [residueStep_one_mod_six](declarations/residuestep-one-mod-six.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [residueStep_five_mod_six](declarations/residuestep-five-mod-six.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfe1b07255c1bbed1300d5cfea37e48c38dfacb731fb99f94e79ce139e5a0f0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variantc01c1b9c39bdab9b48378742e5e5f68e5ad3909c5b33f04fa9a87708bd8a60ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
