# Correspondence Edition3

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**226 observed declarations and anonymous commands**, 90 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9193dd533fe1292b1619e079244172ed70b657c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GridCellRecord](declarations/gridcellrecord.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [abstractGridCell](declarations/abstractgridcell.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gridCellRepresentation](declarations/gridcellrepresentation.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [abstractGridCell_rowMajorIndex](declarations/abstractgridcell-rowmajorindex.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CarrierIndexedState](declarations/carrierindexedstate.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [CarrierStateRecord](declarations/carrierstaterecord.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [abstractCarrierState](declarations/abstractcarrierstate.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [carrierStateRepresentation](declarations/carrierstaterepresentation.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [abstractCarrierState_weight](declarations/abstractcarrierstate-weight.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [carrierStateRecord_support_sound](declarations/carrierstaterecord-support-sound.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [carrierStateRecord_support_complete](declarations/carrierstaterecord-support-complete.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [CarrierIndexedState.carrierEquivExactCarrier](declarations/carrierindexedstate-carrierequivexactcarrier.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [CarrierIndexedState.carrierCount_eq_carrierMultiplicity](declarations/carrierindexedstate-carriercount-eq-carriermultiplicity.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [carrierStateRecord_count_eq_carrierMultiplicity](declarations/carrierstaterecord-count-eq-carriermultiplicity.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [CodecInvocationRecord](declarations/codecinvocationrecord.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [executeCodecInvocation](declarations/executecodecinvocation.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [codecDocumentRepresentation](declarations/codecdocumentrepresentation.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [executeCodecInvocation_represents](declarations/executecodecinvocation-represents.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [codecInvocation_encodeDecodeRelation](declarations/codecinvocation-encodedecoderelation.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [codecInvocation_serialize_preserved](declarations/codecinvocation-serialize-preserved.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [GraphPointRecord](declarations/graphpointrecord.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [graphPointRepresentation](declarations/graphpointrepresentation.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [executeGraphPoint](declarations/executegraphpoint.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [executeGraphPoint_represents](declarations/executegraphpoint-represents.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](declarations/executegraphpoint-liesondiagonal-iff-fixed.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [RoundingInvocation](declarations/roundinginvocation.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [executeRounding](declarations/executerounding.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [roundingResultRepresentation](declarations/roundingresultrepresentation.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [executeRounding_represents](declarations/executerounding-represents.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [executeSignedRounding](declarations/executesignedrounding.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [signedRoundingResult](declarations/signedroundingresult.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [SignedRoundingResultRefines](declarations/signedroundingresultrefines.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [executeSignedRounding_refines](declarations/executesignedrounding-refines.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [executeSignedRounding_negative_tie_sign](declarations/executesignedrounding-negative-tie-sign.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [ForeignRoundingInvocation](declarations/foreignroundinginvocation.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [executeForeignRounding](declarations/executeforeignrounding.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ForeignRoundingResultRefines](declarations/foreignroundingresultrefines.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [executeForeignRounding_refines](declarations/executeforeignrounding-refines.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [executeForeignRounding_rejects_nonfinite](declarations/executeforeignrounding-rejects-nonfinite.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [NormalizedCoordinateInvocation](declarations/normalizedcoordinateinvocation.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [executeNormalizedCoordinate](declarations/executenormalizedcoordinate.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [normalizedCoordinateRepresentation](declarations/normalizedcoordinaterepresentation.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [executeNormalizedCoordinate_represents](declarations/executenormalizedcoordinate-represents.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [ForeignNormalizedCoordinateInvocation](declarations/foreignnormalizedcoordinateinvocation.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [executeForeignNormalizedCoordinate](declarations/executeforeignnormalizedcoordinate.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ForeignNormalizedCoordinateResultRefines](declarations/foreignnormalizedcoordinateresultrefines.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [executeForeignNormalizedCoordinate_refines](declarations/executeforeignnormalizedcoordinate-refines.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [executeForeignNormalizedCoordinate_negativeZero](declarations/executeforeignnormalizedcoordinate-negativezero.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [CoverageInvocation](declarations/coverageinvocation.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [executeCoverage](declarations/executecoverage.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [coverageRepresentation](declarations/coveragerepresentation.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [executeCoverage_represents](declarations/executecoverage-represents.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [executeCoverage_mem_unitInterval](declarations/executecoverage-mem-unitinterval.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [RawCoverageInvocation](declarations/rawcoverageinvocation.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [executeRawCoverage](declarations/executerawcoverage.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [RawCoverageResultRefines](declarations/rawcoverageresultrefines.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [executeRawCoverage_refines](declarations/executerawcoverage-refines.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [executeRawCoverage_rejects_zero_samples](declarations/executerawcoverage-rejects-zero-samples.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [ForeignCoverageInvocation](declarations/foreigncoverageinvocation.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [executeForeignCoverage](declarations/executeforeigncoverage.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [ForeignCoverageResultRefines](declarations/foreigncoverageresultrefines.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [executeForeignCoverage_refines](declarations/executeforeigncoverage-refines.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [executeForeignCoverage_rejects_invalid_region](declarations/executeforeigncoverage-rejects-invalid-region.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [ThresholdInvocation](declarations/thresholdinvocation.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [executeThreshold](declarations/executethreshold.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [thresholdRepresentation](declarations/thresholdrepresentation.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [executeThreshold_represents](declarations/executethreshold-represents.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `structure` | [RawThresholdInvocation](declarations/rawthresholdinvocation.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [executeRawThreshold](declarations/executerawthreshold.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [RawThresholdResultRefines](declarations/rawthresholdresultrefines.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [executeRawThreshold_refines](declarations/executerawthreshold-refines.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [executeRawThreshold_rejects_negative_coverage](declarations/executerawthreshold-rejects-negative-coverage.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `structure` | [ForeignThresholdInvocation](declarations/foreignthresholdinvocation.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [executeForeignThreshold](declarations/executeforeignthreshold.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [ForeignThresholdResultRefines](declarations/foreignthresholdresultrefines.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [executeForeignThreshold_refines](declarations/executeforeignthreshold-refines.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [OwnershipInvocation](declarations/ownershipinvocation.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [executeOwnership](declarations/executeownership.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ownershipRepresentation](declarations/ownershiprepresentation.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [executeOwnership_represents](declarations/executeownership-represents.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [executeOwnership_sum](declarations/executeownership-sum.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [RawOwnershipInvocation](declarations/rawownershipinvocation.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [executeRawOwnership](declarations/executerawownership.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [RawOwnershipResultRefines](declarations/rawownershipresultrefines.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [executeRawOwnership_refines](declarations/executerawownership-refines.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [executeRawOwnership_rejects_zero](declarations/executerawownership-rejects-zero.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `structure` | [ConfiguredOwnershipInvocation](declarations/configuredownershipinvocation.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [executeConfiguredOwnership](declarations/executeconfiguredownership.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [ConfiguredOwnershipResultRefines](declarations/configuredownershipresultrefines.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [executeConfiguredOwnership_refines](declarations/executeconfiguredownership-refines.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [executeConfiguredOwnership_rejects_invalid](declarations/executeconfiguredownership-rejects-invalid.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [ResolveCarrierOwnershipInvocation](declarations/resolvecarrierownershipinvocation.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [executeResolveCarrierOwnership](declarations/executeresolvecarrierownership.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [ResolveCarrierOwnershipResultRefines](declarations/resolvecarrierownershipresultrefines.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [executeResolveCarrierOwnership_refines](declarations/executeresolvecarrierownership-refines.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [executeResolveCarrierOwnership_fields](declarations/executeresolvecarrierownership-fields.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [OccupancyInvocation](declarations/occupancyinvocation.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [executeOccupancy](declarations/executeoccupancy.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [executeOccupancy_preserves_mask](declarations/executeoccupancy-preserves-mask.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `structure` | [WeightedBitInvocation](declarations/weightedbitinvocation.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [executeWeightedBit](declarations/executeweightedbit.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [weightedBitRepresentation](declarations/weightedbitrepresentation.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [executeWeightedBit_represents](declarations/executeweightedbit-represents.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `structure` | [FiniteWeightsInvocation](declarations/finiteweightsinvocation.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [executeFiniteWeights](declarations/executefiniteweights.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [finiteWeightsRepresentation](declarations/finiteweightsrepresentation.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [executeFiniteWeights_represents](declarations/executefiniteweights-represents.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [executeFiniteWeights_sum](declarations/executefiniteweights-sum.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [RawFiniteWeightsInvocation](declarations/rawfiniteweightsinvocation.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [executeRawFiniteWeights](declarations/executerawfiniteweights.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [RawFiniteWeightsResultRefines](declarations/rawfiniteweightsresultrefines.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [executeRawFiniteWeights_refines](declarations/executerawfiniteweights-refines.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [executeRawFiniteWeights_sum_of_success](declarations/executerawfiniteweights-sum-of-success.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [executeRawFiniteWeights_rejects_equal_tolerance](declarations/executerawfiniteweights-rejects-equal-tolerance.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [ForeignFiniteWeightsInvocation](declarations/foreignfiniteweightsinvocation.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [executeForeignFiniteWeights](declarations/executeforeignfiniteweights.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [ForeignFiniteWeightsResultRefines](declarations/foreignfiniteweightsresultrefines.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [executeForeignFiniteWeights_refines](declarations/executeforeignfiniteweights-refines.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `structure` | [ObservedForeignFiniteWeightsInvocation](declarations/observedforeignfiniteweightsinvocation.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [executeObservedForeignFiniteWeights](declarations/executeobservedforeignfiniteweights.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [ObservedForeignFiniteWeightsResultRefines](declarations/observedforeignfiniteweightsresultrefines.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [executeObservedForeignFiniteWeights_refines](declarations/executeobservedforeignfiniteweights-refines.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `structure` | [ForeignBitValueInvocation](declarations/foreignbitvalueinvocation.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [executeForeignBitValue](declarations/executeforeignbitvalue.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [ForeignBitValueResultRefines](declarations/foreignbitvalueresultrefines.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [executeForeignBitValue_refines](declarations/executeforeignbitvalue-refines.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `structure` | [FiniteBitProjectionInvocation](declarations/finitebitprojectioninvocation.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [executeFiniteBitProjection](declarations/executefinitebitprojection.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [finiteBitProjectionRepresentation](declarations/finitebitprojectionrepresentation.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [executeFiniteBitProjection_represents](declarations/executefinitebitprojection-represents.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [executeFiniteBitProjection_all_true](declarations/executefinitebitprojection-all-true.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `structure` | [RasterCellInvocation](declarations/rastercellinvocation.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [executeRasterCell](declarations/executerastercell.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [rasterCellRepresentation](declarations/rastercellrepresentation.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [executeRasterCell_represents](declarations/executerastercell-represents.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [executeRasterCell_owner_tie](declarations/executerastercell-owner-tie.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `structure` | [RasterRegionInvocation](declarations/rasterregioninvocation.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [executeRasterRegion](declarations/executerasterregion.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [rasterRegionRepresentation](declarations/rasterregionrepresentation.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [executeRasterRegion_represents](declarations/executerasterregion-represents.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [executeRasterRegion_at](declarations/executerasterregion-at.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `structure` | [PreparedCarrierGeometryInvocation](declarations/preparedcarriergeometryinvocation.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [executePreparedCarrierGeometry](declarations/executepreparedcarriergeometry.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [preparedCarrierGeometryRepresentation](declarations/preparedcarriergeometryrepresentation.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [executePreparedCarrierGeometry_represents](declarations/executepreparedcarriergeometry-represents.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [executePreparedCarrierGeometry_operationOrderLiteral](declarations/executepreparedcarriergeometry-operationorderliteral.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [executePreparedCarrierGeometry_ownerSelection](declarations/executepreparedcarriergeometry-ownerselection.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [executePreparedCarrierGeometry_ownership](declarations/executepreparedcarriergeometry-ownership.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [executePreparedCarrierGeometry_at](declarations/executepreparedcarriergeometry-at.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `structure` | [ContinuousRegionGridInvocation](declarations/continuousregiongridinvocation.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [executeContinuousRegionGrid](declarations/executecontinuousregiongrid.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [continuousRegionGridRepresentation](declarations/continuousregiongridrepresentation.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [executeContinuousRegionGrid_represents](declarations/executecontinuousregiongrid-represents.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [executeContinuousRegionGrid_ownership](declarations/executecontinuousregiongrid-ownership.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [executeContinuousRegionGrid_ownerSelection](declarations/executecontinuousregiongrid-ownerselection.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [executeContinuousRegionGrid_operationOrderLiteral](declarations/executecontinuousregiongrid-operationorderliteral.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `structure` | [RawCarrierGeometryInvocation](declarations/rawcarriergeometryinvocation.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [executeRawCarrierGeometry](declarations/executerawcarriergeometry.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [RawCarrierGeometryResultRefines](declarations/rawcarriergeometryresultrefines.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [executeRawCarrierGeometry_refines](declarations/executerawcarriergeometry-refines.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [executeRawCarrierGeometry_rejects_zero_samples](declarations/executerawcarriergeometry-rejects-zero-samples.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `structure` | [CheckedForeignCarrierGeometryInvocation](declarations/checkedforeigncarriergeometryinvocation.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [executeCheckedForeignCarrierGeometry](declarations/executecheckedforeigncarriergeometry.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [CheckedForeignCarrierGeometryResultRefines](declarations/checkedforeigncarriergeometryresultrefines.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [executeCheckedForeignCarrierGeometry_refines](declarations/executecheckedforeigncarriergeometry-refines.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [executeCheckedForeignCarrierGeometry_rejects_order](declarations/executecheckedforeigncarriergeometry-rejects-order.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `structure` | [ForeignCarrierGeometryObservation](declarations/foreigncarriergeometryobservation.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [ForeignCarrierGeometryResultRefines](declarations/foreigncarriergeometryresultrefines.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [foreignCarrierGeometryObservation_refines](declarations/foreigncarriergeometryobservation-refines.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `structure` | [DiagonalReflectionInvocation](declarations/diagonalreflectioninvocation.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [executeDiagonalReflection](declarations/executediagonalreflection.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [diagonalReflectionRepresentation](declarations/diagonalreflectionrepresentation.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [executeDiagonalReflection_represents](declarations/executediagonalreflection-represents.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [executeDiagonalReflection_involutive](declarations/executediagonalreflection-involutive.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `structure` | [IterableReflectionInvocation](declarations/iterablereflectioninvocation.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [executeIterableReflection](declarations/executeiterablereflection.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `def` | [iterableReflectionRepresentation](declarations/iterablereflectionrepresentation.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [executeIterableReflection_represents](declarations/executeiterablereflection-represents.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [executeIterableReflection_length](declarations/executeiterablereflection-length.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `structure` | [RawIterableReflectionInvocation](declarations/rawiterablereflectioninvocation.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `def` | [executeRawIterableReflection](declarations/executerawiterablereflection.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [RawIterableReflectionResultRefines](declarations/rawiterablereflectionresultrefines.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [executeRawIterableReflection_refines](declarations/executerawiterablereflection-refines.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `structure` | [ForeignDiagonalReflectionInvocation](declarations/foreigndiagonalreflectioninvocation.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `def` | [executeForeignDiagonalReflection](declarations/executeforeigndiagonalreflection.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [ForeignDiagonalReflectionResultRefines](declarations/foreigndiagonalreflectionresultrefines.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [executeForeignDiagonalReflection_refines](declarations/executeforeigndiagonalreflection-refines.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `structure` | [ForeignCarrierDiagonalInvocation](declarations/foreigncarrierdiagonalinvocation.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `def` | [executeForeignCarrierDiagonal](declarations/executeforeigncarrierdiagonal.md) | 1192 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `def` | [ForeignCarrierDiagonalResultRefines](declarations/foreigncarrierdiagonalresultrefines.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [executeForeignCarrierDiagonal_refines](declarations/executeforeigncarrierdiagonal-refines.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [executeCarrierDiagonal_involutive](declarations/executecarrierdiagonal-involutive.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `structure` | [GammaBranchInvocation](declarations/gammabranchinvocation.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [executeGammaBranch](declarations/executegammabranch.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [gammaBranchRepresentation](declarations/gammabranchrepresentation.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [executeGammaBranch_represents](declarations/executegammabranch-represents.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `structure` | [GammaRuntimeObservation](declarations/gammaruntimeobservation.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `def` | [GammaRuntimeResultRefines](declarations/gammaruntimeresultrefines.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [gammaRuntimeSuccess_refines](declarations/gammaruntimesuccess-refines.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [gammaRuntimePole_refines](declarations/gammaruntimepole-refines.md) | 1244 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [gammaRuntimeNonfinite_refines](declarations/gammaruntimenonfinite-refines.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `structure` | [ForeignGammaInputInvocation](declarations/foreigngammainputinvocation.md) | 1257 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `def` | [executeForeignGammaInput](declarations/executeforeigngammainput.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `def` | [ForeignGammaInputResultRefines](declarations/foreigngammainputresultrefines.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [executeForeignGammaInput_refines](declarations/executeforeigngammainput-refines.md) | 1268 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [executeForeignGammaInput_rejects_nonfinite](declarations/executeforeigngammainput-rejects-nonfinite.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `structure` | [PrecessionInvocation](declarations/precessioninvocation.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `def` | [executePrecession](declarations/executeprecession.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `def` | [precessionRepresentation](declarations/precessionrepresentation.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [executePrecession_represents](declarations/executeprecession-represents.md) | 1293 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [executePrecession_nonnegative](declarations/executeprecession-nonnegative.md) | 1301 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `structure` | [RawPrecessionInvocation](declarations/rawprecessioninvocation.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `def` | [executeRawPrecession](declarations/executerawprecession.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `def` | [RawPrecessionResultRefines](declarations/rawprecessionresultrefines.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [executeRawPrecession_refines](declarations/executerawprecession-refines.md) | 1319 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [executeRawPrecession_rejects_negative](declarations/executerawprecession-rejects-negative.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [executeRawPrecession_rejects_zero_negative](declarations/executerawprecession-rejects-zero-negative.md) | 1330 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `structure` | [PrecessionRuntimeObservation](declarations/precessionruntimeobservation.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `def` | [PrecessionRuntimeResultRefines](declarations/precessionruntimeresultrefines.md) | 1343 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [precessionRuntimeSuccess_refines](declarations/precessionruntimesuccess-refines.md) | 1348 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [precessionRuntimeNonfinite_refines](declarations/precessionruntimenonfinite-refines.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `structure` | [ForeignPrecessionInvocation](declarations/foreignprecessioninvocation.md) | 1366 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [executeForeignPrecession](declarations/executeforeignprecession.md) | 1370 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `def` | [ForeignPrecessionResultRefines](declarations/foreignprecessionresultrefines.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [executeForeignPrecession_refines](declarations/executeforeignprecession-refines.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [executeForeignPrecession_rejects_nonfinite_phase](declarations/executeforeignprecession-rejects-nonfinite-phase.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37d6695cca740717a62290727f33a862205f56923194ce1d0c87107481fae800 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
