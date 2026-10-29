# Line Deriv Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 75 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b891e8c52c06fe1ff0248c24d05196656357aaf2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/LineDerivBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasLineDerivWithinAt](declarations/haslinederivwithinat.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasLineDerivAt](declarations/haslinederivat.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LineDifferentiableWithinAt](declarations/linedifferentiablewithinat.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LineDifferentiableAt](declarations/linedifferentiableat.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [lineDerivWithin](declarations/linederivwithin.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lineDeriv](declarations/linederiv.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [HasLineDerivWithinAt.mono](declarations/haslinederivwithinat-mono.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [HasLineDerivAt.hasLineDerivWithinAt](declarations/haslinederivat-haslinederivwithinat.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [HasLineDerivWithinAt.lineDifferentiableWithinAt](declarations/haslinederivwithinat-linedifferentiablewithinat.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasLineDerivAt.lineDifferentiableAt](declarations/haslinederivat-linedifferentiableat.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LineDifferentiableWithinAt.hasLineDerivWithinAt](declarations/linedifferentiablewithinat-haslinederivwithinat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LineDifferentiableAt.hasLineDerivAt](declarations/linedifferentiableat-haslinederivat.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hasLineDerivWithinAt_univ](declarations/haslinederivwithinat-univ.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lineDerivWithin_zero_of_not_lineDifferentiableWithinAt](declarations/linederivwithin-zero-of-not-linedifferentiablewithinat.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lineDeriv_zero_of_not_lineDifferentiableAt](declarations/linederiv-zero-of-not-linedifferentiableat.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasLineDerivAt_iff_isLittleO_nhds_zero](declarations/haslinederivat-iff-islittleo-nhds-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasLineDerivAt.unique](declarations/haslinederivat-unique.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasLineDerivAt.lineDeriv](declarations/haslinederivat-linederiv.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lineDifferentiableWithinAt_univ](declarations/linedifferentiablewithinat-univ.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [LineDifferentiableAt.lineDifferentiableWithinAt](declarations/linedifferentiableat-linedifferentiablewithinat.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lineDerivWithin_univ](declarations/linederivwithin-univ.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LineDifferentiableWithinAt.mono](declarations/linedifferentiablewithinat-mono.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasLineDerivWithinAt.congr_mono](declarations/haslinederivwithinat-congr-mono.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasLineDerivWithinAt.congr](declarations/haslinederivwithinat-congr.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasLineDerivWithinAt.congr'](declarations/haslinederivwithinat-congr-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LineDifferentiableWithinAt.congr_mono](declarations/linedifferentiablewithinat-congr-mono.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LineDifferentiableWithinAt.congr](declarations/linedifferentiablewithinat-congr.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lineDerivWithin_congr](declarations/linederivwithin-congr-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lineDerivWithin_congr'](declarations/linederivwithin-congr.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasLineDerivAt_iff_tendsto_slope_zero](declarations/haslinederivat-iff-tendsto-slope-zero.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_right](declarations/haslinederivat-tendsto-slope-zero-right.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_left](declarations/haslinederivat-tendsto-slope-zero-left.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt'](declarations/haslinederivwithinat-haslinederivat.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasLineDerivWithinAt.mono_of_mem_nhdsWithin](declarations/haslinederivwithinat-mono-of-mem-nhdswithin.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt](declarations/haslinederivwithinat-haslinederivat-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [LineDifferentiableWithinAt.lineDifferentiableAt](declarations/linedifferentiablewithinat-linedifferentiableat.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [HasFDerivWithinAt.hasLineDerivWithinAt](declarations/hasfderivwithinat-haslinederivwithinat.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [HasFDerivAt.hasLineDerivAt](declarations/hasfderivat-haslinederivat.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [DifferentiableAt.lineDeriv_eq_fderiv](declarations/differentiableat-linederiv-eq-fderiv.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [LineDifferentiableWithinAt.mono_of_mem_nhdsWithin](declarations/linedifferentiablewithinat-mono-of-mem-nhdswithin.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lineDerivWithin_of_mem_nhds](declarations/linederivwithin-of-mem-nhds.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lineDerivWithin_of_isOpen](declarations/linederivwithin-of-isopen.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasLineDerivWithinAt_congr_set](declarations/haslinederivwithinat-congr-set.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lineDifferentiableWithinAt_congr_set](declarations/linedifferentiablewithinat-congr-set.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lineDerivWithin_congr_set](declarations/linederivwithin-congr-set.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Filter.EventuallyEq.hasLineDerivAt_iff](declarations/filter-eventuallyeq-haslinederivat-iff.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Filter.EventuallyEq.lineDifferentiableAt_iff](declarations/filter-eventuallyeq-linedifferentiableat-iff.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff](declarations/filter-eventuallyeq-haslinederivwithinat-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff_of_mem](declarations/filter-eventuallyeq-haslinederivwithinat-iff-of-mem.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff](declarations/filter-eventuallyeq-linedifferentiablewithinat-iff.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff_of_mem](declarations/filter-eventuallyeq-linedifferentiablewithinat-iff-of-mem.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [HasLineDerivWithinAt.congr_of_eventuallyEq](declarations/haslinederivwithinat-congr-of-eventuallyeq.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasLineDerivAt.congr_of_eventuallyEq](declarations/haslinederivat-congr-of-eventuallyeq.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [LineDifferentiableWithinAt.congr_of_eventuallyEq](declarations/linedifferentiablewithinat-congr-of-eventuallyeq.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [LineDifferentiableAt.congr_of_eventuallyEq](declarations/linedifferentiableat-congr-of-eventuallyeq.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq](declarations/filter-eventuallyeq-linederivwithin-eq.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq_nhds](declarations/filter-eventuallyeq-linederivwithin-eq-nhds.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Filter.EventuallyEq.lineDeriv_eq](declarations/filter-eventuallyeq-linederiv-eq.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [HasLineDerivAt.le_of_lip'](declarations/haslinederivat-le-of-lip.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [HasLineDerivAt.le_of_lipschitzOn](declarations/haslinederivat-le-of-lipschitzon.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [HasLineDerivAt.le_of_lipschitz](declarations/haslinederivat-le-of-lipschitz.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [norm_lineDeriv_le_of_lip'](declarations/norm-linederiv-le-of-lip.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [norm_lineDeriv_le_of_lipschitzOn](declarations/norm-linederiv-le-of-lipschitzon.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [norm_lineDeriv_le_of_lipschitz](declarations/norm-linederiv-le-of-lipschitz.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [hasLineDerivWithinAt_zero](declarations/haslinederivwithinat-zero.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [hasLineDerivAt_zero](declarations/haslinederivat-zero.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lineDifferentiableWithinAt_zero](declarations/linedifferentiablewithinat-zero.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lineDifferentiableAt_zero](declarations/linedifferentiableat-zero.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [lineDeriv_zero](declarations/linederiv-zero.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasLineDerivAt.of_comp](declarations/haslinederivat-of-comp.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [LineDifferentiableAt.of_comp](declarations/linedifferentiableat-of-comp.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [HasLineDerivWithinAt.smul](declarations/haslinederivwithinat-smul.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [hasLineDerivWithinAt_smul_iff](declarations/haslinederivwithinat-smul-iff.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [HasLineDerivAt.smul](declarations/haslinederivat-smul.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [hasLineDerivAt_smul_iff](declarations/haslinederivat-smul-iff.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [LineDifferentiableWithinAt.smul](declarations/linedifferentiablewithinat-smul.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lineDifferentiableWithinAt_smul_iff](declarations/linedifferentiablewithinat-smul-iff.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [LineDifferentiableAt.smul](declarations/linedifferentiableat-smul.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lineDifferentiableAt_smul_iff](declarations/linedifferentiableat-smul-iff.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lineDeriv_smul](declarations/linederiv-smul.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lineDeriv_neg](declarations/linederiv-neg.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ae161739a506003cf2a8e2f95331542c1be46d2606b9c480d9574f028a128dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
