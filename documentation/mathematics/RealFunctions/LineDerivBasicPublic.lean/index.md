# Line Deriv Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d37ea780acdc430d4369638c1686294a623b7c81`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/LineDerivBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasLineDerivWithinAt](declarations/haslinederivwithinat.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasLineDerivAt](declarations/haslinederivat.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LineDifferentiableWithinAt](declarations/linedifferentiablewithinat.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LineDifferentiableAt](declarations/linedifferentiableat.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [lineDerivWithin](declarations/linederivwithin.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lineDeriv](declarations/linederiv.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [HasLineDerivWithinAt.mono](declarations/haslinederivwithinat-mono.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [HasLineDerivAt.hasLineDerivWithinAt](declarations/haslinederivat-haslinederivwithinat.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [HasLineDerivWithinAt.lineDifferentiableWithinAt](declarations/haslinederivwithinat-linedifferentiablewithinat.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasLineDerivAt.lineDifferentiableAt](declarations/haslinederivat-linedifferentiableat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LineDifferentiableWithinAt.hasLineDerivWithinAt](declarations/linedifferentiablewithinat-haslinederivwithinat.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LineDifferentiableAt.hasLineDerivAt](declarations/linedifferentiableat-haslinederivat.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hasLineDerivWithinAt_univ](declarations/haslinederivwithinat-univ.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lineDerivWithin_zero_of_not_lineDifferentiableWithinAt](declarations/linederivwithin-zero-of-not-linedifferentiablewithinat.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lineDeriv_zero_of_not_lineDifferentiableAt](declarations/linederiv-zero-of-not-linedifferentiableat.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasLineDerivAt_iff_isLittleO_nhds_zero](declarations/haslinederivat-iff-islittleo-nhds-zero.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasLineDerivAt.unique](declarations/haslinederivat-unique.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasLineDerivAt.lineDeriv](declarations/haslinederivat-linederiv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lineDifferentiableWithinAt_univ](declarations/linedifferentiablewithinat-univ.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [LineDifferentiableAt.lineDifferentiableWithinAt](declarations/linedifferentiableat-linedifferentiablewithinat.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lineDerivWithin_univ](declarations/linederivwithin-univ.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LineDifferentiableWithinAt.mono](declarations/linedifferentiablewithinat-mono.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasLineDerivWithinAt.congr_mono](declarations/haslinederivwithinat-congr-mono.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasLineDerivWithinAt.congr](declarations/haslinederivwithinat-congr-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasLineDerivWithinAt.congr'](declarations/haslinederivwithinat-congr.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LineDifferentiableWithinAt.congr_mono](declarations/linedifferentiablewithinat-congr-mono.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LineDifferentiableWithinAt.congr](declarations/linedifferentiablewithinat-congr.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lineDerivWithin_congr](declarations/linederivwithin-congr.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lineDerivWithin_congr'](declarations/linederivwithin-congr-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasLineDerivAt_iff_tendsto_slope_zero](declarations/haslinederivat-iff-tendsto-slope-zero.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_right](declarations/haslinederivat-tendsto-slope-zero-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_left](declarations/haslinederivat-tendsto-slope-zero-left.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt'](declarations/haslinederivwithinat-haslinederivat-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasLineDerivWithinAt.mono_of_mem_nhdsWithin](declarations/haslinederivwithinat-mono-of-mem-nhdswithin.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt](declarations/haslinederivwithinat-haslinederivat.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [LineDifferentiableWithinAt.lineDifferentiableAt](declarations/linedifferentiablewithinat-linedifferentiableat.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [HasFDerivWithinAt.hasLineDerivWithinAt](declarations/hasfderivwithinat-haslinederivwithinat.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [DifferentiableWithinAt.lineDifferentiableWithinAt](declarations/differentiablewithinat-linedifferentiablewithinat.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [HasFDerivAt.hasLineDerivAt](declarations/hasfderivat-haslinederivat.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasFDerivAt.apply_self_eq_smul_of_eventuallyEq](declarations/hasfderivat-apply-self-eq-smul-of-eventuallyeq.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [HasFDerivAt.apply_self_eq_smul_of_homogeneous](declarations/hasfderivat-apply-self-eq-smul-of-homogeneous.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasFDerivAt.apply_self_eq_nsmul_of_homogeneous](declarations/hasfderivat-apply-self-eq-nsmul-of-homogeneous.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [DifferentiableAt.lineDifferentiableAt](declarations/differentiableat-linedifferentiableat.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [DifferentiableAt.lineDeriv_eq_fderiv](declarations/differentiableat-linederiv-eq-fderiv.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [LineDifferentiableWithinAt.mono_of_mem_nhdsWithin](declarations/linedifferentiablewithinat-mono-of-mem-nhdswithin.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lineDerivWithin_of_mem_nhds](declarations/linederivwithin-of-mem-nhds.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lineDerivWithin_of_isOpen](declarations/linederivwithin-of-isopen.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hasLineDerivWithinAt_congr_set](declarations/haslinederivwithinat-congr-set.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lineDifferentiableWithinAt_congr_set](declarations/linedifferentiablewithinat-congr-set.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lineDerivWithin_congr_set](declarations/linederivwithin-congr-set.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Filter.EventuallyEq.hasLineDerivAt_iff](declarations/filter-eventuallyeq-haslinederivat-iff.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Filter.EventuallyEq.lineDifferentiableAt_iff](declarations/filter-eventuallyeq-linedifferentiableat-iff.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff](declarations/filter-eventuallyeq-haslinederivwithinat-iff.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff_of_mem](declarations/filter-eventuallyeq-haslinederivwithinat-iff-of-mem.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff](declarations/filter-eventuallyeq-linedifferentiablewithinat-iff.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff_of_mem](declarations/filter-eventuallyeq-linedifferentiablewithinat-iff-of-mem.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [HasLineDerivWithinAt.congr_of_eventuallyEq](declarations/haslinederivwithinat-congr-of-eventuallyeq.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasLineDerivAt.congr_of_eventuallyEq](declarations/haslinederivat-congr-of-eventuallyeq.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [LineDifferentiableWithinAt.congr_of_eventuallyEq](declarations/linedifferentiablewithinat-congr-of-eventuallyeq.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [LineDifferentiableAt.congr_of_eventuallyEq](declarations/linedifferentiableat-congr-of-eventuallyeq.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq](declarations/filter-eventuallyeq-linederivwithin-eq.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq_nhds](declarations/filter-eventuallyeq-linederivwithin-eq-nhds.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Filter.EventuallyEq.lineDeriv_eq](declarations/filter-eventuallyeq-linederiv-eq.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [HasLineDerivAt.le_of_lip'](declarations/haslinederivat-le-of-lip.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [HasLineDerivAt.le_of_lipschitzOn](declarations/haslinederivat-le-of-lipschitzon.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [HasLineDerivAt.le_of_lipschitz](declarations/haslinederivat-le-of-lipschitz.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [norm_lineDeriv_le_of_lip'](declarations/norm-linederiv-le-of-lip.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [norm_lineDeriv_le_of_lipschitzOn](declarations/norm-linederiv-le-of-lipschitzon.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [norm_lineDeriv_le_of_lipschitz](declarations/norm-linederiv-le-of-lipschitz.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [hasLineDerivWithinAt_zero](declarations/haslinederivwithinat-zero.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [hasLineDerivAt_zero](declarations/haslinederivat-zero.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lineDifferentiableWithinAt_zero](declarations/linedifferentiablewithinat-zero.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lineDifferentiableAt_zero](declarations/linedifferentiableat-zero.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lineDeriv_zero](declarations/linederiv-zero.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [HasLineDerivAt.of_comp](declarations/haslinederivat-of-comp.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [LineDifferentiableAt.of_comp](declarations/linedifferentiableat-of-comp.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [HasLineDerivWithinAt.smul](declarations/haslinederivwithinat-smul.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [hasLineDerivWithinAt_smul_iff](declarations/haslinederivwithinat-smul-iff.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [HasLineDerivAt.smul](declarations/haslinederivat-smul.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [hasLineDerivAt_smul_iff](declarations/haslinederivat-smul-iff.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [LineDifferentiableWithinAt.smul](declarations/linedifferentiablewithinat-smul.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lineDifferentiableWithinAt_smul_iff](declarations/linedifferentiablewithinat-smul-iff.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [LineDifferentiableAt.smul](declarations/linedifferentiableat-smul.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lineDifferentiableAt_smul_iff](declarations/linedifferentiableat-smul-iff.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lineDeriv_smul](declarations/linederiv-smul.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lineDeriv_neg](declarations/linederiv-neg.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb3a946d6b1646f894c7b5b87639d58b051571ac9c379248694a926d28c8938f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant2c226a4789c18a391547bc54e407f0658d432af6333daa2f2cd7bf3255db6d6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
