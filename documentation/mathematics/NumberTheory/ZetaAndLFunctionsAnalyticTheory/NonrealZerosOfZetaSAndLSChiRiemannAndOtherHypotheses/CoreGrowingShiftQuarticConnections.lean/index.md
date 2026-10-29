# Core Growing Shift Quartic Connections

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc617f674d7eed25359a3ede099d4978da6d86b9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticConnections.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [coreQuarticSquarefreeIndicatorReal](declarations/corequarticsquarefreeindicatorreal.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [moebiusReal_sq_eq_coreQuarticSquarefreeIndicator](declarations/moebiusreal-sq-eq-corequarticsquarefreeindicator.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mertensTwoPointQuarticSquarefreeMidpointCell](declarations/mertenstwopointquarticsquarefreemidpointcell.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mertensTwoPointQuarticCollisionCell_eq_squarefreeMidpoint](declarations/mertenstwopointquarticcollisioncell-eq-squarefreemidpoint.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mertensTwoPointQuarticSquarefreeCollisionUpper](declarations/mertenstwopointquarticsquarefreecollisionupper.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mertensTwoPointQuarticCollisionUpper_eq_squarefreeMidpoint](declarations/mertenstwopointquarticcollisionupper-eq-squarefreemidpoint.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coreGrowingShiftQuarticSquarefreeCollisionEnergy](declarations/coregrowingshiftquarticsquarefreecollisionenergy.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coreGrowingShiftQuarticCollisionEnergy_eq_squarefreeMidpoint](declarations/coregrowingshiftquarticcollisionenergy-eq-squarefreemidpoint.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MertensQuarticFourFormsPairwiseDistinct](declarations/mertensquarticfourformspairwisedistinct.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mertensQuarticFourFormsPairwiseDistinct_of_collisionFree](declarations/mertensquarticfourformspairwisedistinct-of-collisionfree.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct](declarations/coregrowingshiftcollisionfreecell-fourformspairwisedistinct.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SubpolynomialCoreGrowingShiftQuarticCollisionLineCompensation](declarations/subpolynomialcoregrowingshiftquarticcollisionlinecompensation.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SubpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation](declarations/subpolynomialcoregrowingshiftquarticsquarefreecollisionlinecompensation.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [subpolynomialCoreGrowingShiftQuarticSquarefreeCollisionLineCompensation_iff_collisionLine](declarations/subpolynomialcoregrowingshiftquarticsquarefreecollisionlinecompensation-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget](declarations/subpolynomialcoregrowingshiftquarticcollisionfreebudget.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_split](declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-of-sp.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_of_squarefree_and_free](declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-of-sq.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [riemannHypothesis_of_squarefreeCollisionLine_and_collisionFree](declarations/riemannhypothesis-of-squarefreecollisionline-and-collisionfree.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ToCoreGrowingShiftSquarefreeCollisionLineAdapter](declarations/tocoregrowingshiftsquarefreecollisionlineadapter.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [ToCoreGrowingShiftCollisionFreeBudgetAdapter](declarations/tocoregrowingshiftcollisionfreebudgetadapter.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [riemannHypothesis_of_collisionLine_and_collisionFreeAdapters](declarations/riemannhypothesis-of-collisionline-and-collisionfreeadapters.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [FixedFormBinarySquarefreeCollisionSource](declarations/fixedformbinarysquarefreecollisionsource.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ToSquarefreeCollisionLineFromFixedFormBinary](declarations/tosquarefreecollisionlinefromfixedformbinary.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [FourPointParallelogramSource](declarations/fourpointparallelogramsource.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [ToCollisionFreeBudgetFromFourPoint](declarations/tocollisionfreebudgetfromfourpoint.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [MobiusU2ParallelogramSource](declarations/mobiusu2parallelogramsource.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ToCollisionFreeBudgetFromMobiusU2](declarations/tocollisionfreebudgetfrommobiusu2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [AveragedHigherOrderChowlaSource](declarations/averagedhigherorderchowlasource.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [ToCollisionFreeBudgetFromAveragedHigherOrder](declarations/tocollisionfreebudgetfromaveragedhigherorder.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [ShortIntervalGowersCollisionSource](declarations/shortintervalgowerscollisionsource.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [ToQuarticSplitBudgetsFromShortIntervalGowers](declarations/toquarticsplitbudgetsfromshortintervalgowers.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [LogarithmicGrowingShiftCollisionSource](declarations/logarithmicgrowingshiftcollisionsource.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [ToQuarticSplitBudgetsFromLogarithmicGrowingShift](declarations/toquarticsplitbudgetsfromlogarithmicgrowingshift.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a531960365652f898a6a4b68e8855d3a3e1958f042b728b735a9633da38b7db1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
