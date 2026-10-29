# Core Growing Shift Quartic Compensation

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3518dbff04192d80d5d1cbf70d56011fab2cb8e5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCompensation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointQuarticCell](declarations/mertenstwopointquarticcell.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mertensTwoPointQuarticRectangle](declarations/mertenstwopointquarticrectangle.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mertensTwoPointQuarticDiagonal](declarations/mertenstwopointquarticdiagonal.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mertensTwoPointQuarticOffDiagonal](declarations/mertenstwopointquarticoffdiagonal.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mertensTwoPointPrefix_sq_eq_quarticRectangle](declarations/mertenstwopointprefix-sq-eq-quarticrectangle.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mertensTwoPointQuarticCell_diagonal_eq_sq](declarations/mertenstwopointquarticcell-diagonal-eq-sq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mertensTwoPointQuarticCell_diagonal_nonneg](declarations/mertenstwopointquarticcell-diagonal-nonneg.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mertensTwoPointQuarticCell_diagonal_le_one](declarations/mertenstwopointquarticcell-diagonal-le-one.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mertensTwoPointQuarticDiagonal_nonneg](declarations/mertenstwopointquarticdiagonal-nonneg.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mertensTwoPointQuarticDiagonal_le_length](declarations/mertenstwopointquarticdiagonal-le-length.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mertensTwoPointQuarticRectangle_eq_diagonal_add_offDiagonal](declarations/mertenstwopointquarticrectangle-eq-diagonal-add-offdiagonal.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [coreGrowingShiftQuarticRectangleEnergy](declarations/coregrowingshiftquarticrectangleenergy.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coreGrowingShiftQuarticDiagonalEnergy](declarations/coregrowingshiftquarticdiagonalenergy.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [coreGrowingShiftQuarticOffDiagonalEnergy](declarations/coregrowingshiftquarticoffdiagonalenergy.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_eq_quarticRectangle](declarations/coregrowingshiftbinaryprefixsquareenergy-eq-quarticrectangle.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_eq_diagonal_add_offDiagonal](declarations/coregrowingshiftbinaryprefixsquareenergy-eq-diagonal-add-offdiagonal.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coreGrowingShiftQuarticDiagonalEnergy_nonneg](declarations/coregrowingshiftquarticdiagonalenergy-nonneg.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coreGrowingShiftQuarticDiagonalDepth_le](declarations/coregrowingshiftquarticdiagonaldepth-le.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coreGrowingShiftQuarticDiagonalEnergy_le_four_cube](declarations/coregrowingshiftquarticdiagonalenergy-le-four-cube.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation](declarations/subpolynomialcoregrowingshiftquarticoffdiagonalcompensation.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [subpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation_iff_prefixSquareEnergy](declarations/subpolynomialcoregrowingshiftquarticoffdiagonalcompensation-iff-prefixsq.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [subpolynomialCoreGrowingShiftFirstDifferencePacket_of_quarticCompensation](declarations/subpolynomialcoregrowingshiftfirstdifferencepacket-of-quarticcompensatio.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [riemannHypothesis_of_coreGrowingShiftQuarticCompensation](declarations/riemannhypothesis-of-coregrowingshiftquarticcompensation.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [GrowingShiftFourPointMobiusSource](declarations/growingshiftfourpointmobiussource.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [ToCoreGrowingShiftQuarticCompensationAdapter](declarations/tocoregrowingshiftquarticcompensationadapter.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [riemannHypothesis_of_growingShiftFourPointAdapter](declarations/riemannhypothesis-of-growingshiftfourpointadapter.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [quarticOffDiagonalCompensation_hostileWitness](declarations/quarticoffdiagonalcompensation-hostilewitness.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0171907be3a662dac14e6e8718b9ee30bb9d10acd289d86f6e77b74e78da85dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
