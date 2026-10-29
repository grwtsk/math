# Line Deriv Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant44e4b9e2a15e3caee887db45de4b2db8c0d80154e58d7d8901a164c2922fbd03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `845c3c205f16025c33acfe87249671b74ee6b849`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/LineDerivBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasLineDerivWithinAt](declarations/haslinederivwithinat.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasLineDerivAt](declarations/haslinederivat.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LineDifferentiableWithinAt](declarations/linedifferentiablewithinat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LineDifferentiableAt](declarations/linedifferentiableat.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [lineDerivWithin](declarations/linederivwithin.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lineDeriv](declarations/linederiv.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [HasLineDerivWithinAt.mono](declarations/haslinederivwithinat-mono.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [HasLineDerivAt.hasLineDerivWithinAt](declarations/haslinederivat-haslinederivwithinat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [HasLineDerivWithinAt.lineDifferentiableWithinAt](declarations/haslinederivwithinat-linedifferentiablewithinat.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasLineDerivAt.lineDifferentiableAt](declarations/haslinederivat-linedifferentiableat.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LineDifferentiableWithinAt.hasLineDerivWithinAt](declarations/linedifferentiablewithinat-haslinederivwithinat.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LineDifferentiableAt.hasLineDerivAt](declarations/linedifferentiableat-haslinederivat.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hasLineDerivWithinAt_univ](declarations/haslinederivwithinat-univ.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lineDerivWithin_zero_of_not_lineDifferentiableWithinAt](declarations/linederivwithin-zero-of-not-linedifferentiablewithinat.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lineDeriv_zero_of_not_lineDifferentiableAt](declarations/linederiv-zero-of-not-linedifferentiableat.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasLineDerivAt_iff_isLittleO_nhds_zero](declarations/haslinederivat-iff-islittleo-nhds-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasLineDerivAt.unique](declarations/haslinederivat-unique.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasLineDerivAt.lineDeriv](declarations/haslinederivat-linederiv.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lineDifferentiableWithinAt_univ](declarations/linedifferentiablewithinat-univ.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [LineDifferentiableAt.lineDifferentiableWithinAt](declarations/linedifferentiableat-linedifferentiablewithinat.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lineDerivWithin_univ](declarations/linederivwithin-univ.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LineDifferentiableWithinAt.mono](declarations/linedifferentiablewithinat-mono.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasLineDerivWithinAt.congr_mono](declarations/haslinederivwithinat-congr-mono.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasLineDerivWithinAt.congr](declarations/haslinederivwithinat-congr.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasLineDerivWithinAt.congr'](declarations/haslinederivwithinat-congr-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LineDifferentiableWithinAt.congr_mono](declarations/linedifferentiablewithinat-congr-mono.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LineDifferentiableWithinAt.congr](declarations/linedifferentiablewithinat-congr.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lineDerivWithin_congr](declarations/linederivwithin-congr-source-edition-2.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lineDerivWithin_congr'](declarations/linederivwithin-congr.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasLineDerivAt_iff_tendsto_slope_zero](declarations/haslinederivat-iff-tendsto-slope-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_right](declarations/haslinederivat-tendsto-slope-zero-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_left](declarations/haslinederivat-tendsto-slope-zero-left.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt'](declarations/haslinederivwithinat-haslinederivat-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasLineDerivWithinAt.mono_of_mem_nhdsWithin](declarations/haslinederivwithinat-mono-of-mem-nhdswithin.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt](declarations/haslinederivwithinat-haslinederivat.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [LineDifferentiableWithinAt.lineDifferentiableAt](declarations/linedifferentiablewithinat-linedifferentiableat.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [HasFDerivWithinAt.hasLineDerivWithinAt](declarations/hasfderivwithinat-haslinederivwithinat.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [DifferentiableWithinAt.lineDifferentiableWithinAt](declarations/differentiablewithinat-linedifferentiablewithinat.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [HasFDerivAt.hasLineDerivAt](declarations/hasfderivat-haslinederivat.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasFDerivAt.apply_self_eq_smul_of_eventuallyEq](declarations/hasfderivat-apply-self-eq-smul-of-eventuallyeq.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [HasFDerivAt.apply_self_eq_smul_of_homogeneous](declarations/hasfderivat-apply-self-eq-smul-of-homogeneous.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasFDerivAt.apply_self_eq_nsmul_of_homogeneous](declarations/hasfderivat-apply-self-eq-nsmul-of-homogeneous.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [DifferentiableAt.lineDifferentiableAt](declarations/differentiableat-linedifferentiableat.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [DifferentiableAt.lineDeriv_eq_fderiv](declarations/differentiableat-linederiv-eq-fderiv.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [LineDifferentiableWithinAt.mono_of_mem_nhdsWithin](declarations/linedifferentiablewithinat-mono-of-mem-nhdswithin.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lineDerivWithin_of_mem_nhds](declarations/linederivwithin-of-mem-nhds.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lineDerivWithin_of_isOpen](declarations/linederivwithin-of-isopen.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hasLineDerivWithinAt_congr_set](declarations/haslinederivwithinat-congr-set.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lineDifferentiableWithinAt_congr_set](declarations/linedifferentiablewithinat-congr-set.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lineDerivWithin_congr_set](declarations/linederivwithin-congr-set.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Filter.EventuallyEq.hasLineDerivAt_iff](declarations/filter-eventuallyeq-haslinederivat-iff.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Filter.EventuallyEq.lineDifferentiableAt_iff](declarations/filter-eventuallyeq-linedifferentiableat-iff.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff](declarations/filter-eventuallyeq-haslinederivwithinat-iff.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff_of_mem](declarations/filter-eventuallyeq-haslinederivwithinat-iff-of-mem.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff](declarations/filter-eventuallyeq-linedifferentiablewithinat-iff.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff_of_mem](declarations/filter-eventuallyeq-linedifferentiablewithinat-iff-of-mem.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [HasLineDerivWithinAt.congr_of_eventuallyEq](declarations/haslinederivwithinat-congr-of-eventuallyeq.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasLineDerivAt.congr_of_eventuallyEq](declarations/haslinederivat-congr-of-eventuallyeq.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [LineDifferentiableWithinAt.congr_of_eventuallyEq](declarations/linedifferentiablewithinat-congr-of-eventuallyeq.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [LineDifferentiableAt.congr_of_eventuallyEq](declarations/linedifferentiableat-congr-of-eventuallyeq.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq](declarations/filter-eventuallyeq-linederivwithin-eq.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq_nhds](declarations/filter-eventuallyeq-linederivwithin-eq-nhds.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Filter.EventuallyEq.lineDeriv_eq](declarations/filter-eventuallyeq-linederiv-eq.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [HasLineDerivAt.le_of_lip'](declarations/haslinederivat-le-of-lip.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [HasLineDerivAt.le_of_lipschitzOn](declarations/haslinederivat-le-of-lipschitzon.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [HasLineDerivAt.le_of_lipschitz](declarations/haslinederivat-le-of-lipschitz.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [norm_lineDeriv_le_of_lip'](declarations/norm-linederiv-le-of-lip.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [norm_lineDeriv_le_of_lipschitzOn](declarations/norm-linederiv-le-of-lipschitzon.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [norm_lineDeriv_le_of_lipschitz](declarations/norm-linederiv-le-of-lipschitz.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [hasLineDerivWithinAt_zero](declarations/haslinederivwithinat-zero.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [hasLineDerivAt_zero](declarations/haslinederivat-zero.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lineDifferentiableWithinAt_zero](declarations/linedifferentiablewithinat-zero.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lineDifferentiableAt_zero](declarations/linedifferentiableat-zero.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lineDeriv_zero](declarations/linederiv-zero.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [HasLineDerivAt.of_comp](declarations/haslinederivat-of-comp.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [LineDifferentiableAt.of_comp](declarations/linedifferentiableat-of-comp.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [HasLineDerivWithinAt.smul](declarations/haslinederivwithinat-smul.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [hasLineDerivWithinAt_smul_iff](declarations/haslinederivwithinat-smul-iff.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [HasLineDerivAt.smul](declarations/haslinederivat-smul.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [hasLineDerivAt_smul_iff](declarations/haslinederivat-smul-iff.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [LineDifferentiableWithinAt.smul](declarations/linedifferentiablewithinat-smul.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lineDifferentiableWithinAt_smul_iff](declarations/linedifferentiablewithinat-smul-iff.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [LineDifferentiableAt.smul](declarations/linedifferentiableat-smul.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lineDifferentiableAt_smul_iff](declarations/linedifferentiableat-smul-iff.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lineDeriv_smul](declarations/linederiv-smul.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lineDeriv_neg](declarations/linederiv-neg.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3db9c8229995d85be2cc6304c858909a2d70752137ae1764f939b01d1eaa0f1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant44e4b9e2a15e3caee887db45de4b2db8c0d80154e58d7d8901a164c2922fbd03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
