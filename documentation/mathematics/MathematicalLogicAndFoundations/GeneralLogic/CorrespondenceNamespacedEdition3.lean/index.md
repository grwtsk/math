# Correspondence Namespaced Edition3

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**226 observed declarations and anonymous commands**, 90 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant97e26f29130f5e1eceef50bb2888c8d9b71904b2d3939474084d49543e080d06.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e726e2511a9c193210be8ebc59372d3615c907e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GridCellRecord](declarations/gridcellrecord.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [abstractGridCell](declarations/abstractgridcell.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gridCellRepresentation](declarations/gridcellrepresentation.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [abstractGridCell_rowMajorIndex](declarations/abstractgridcell-rowmajorindex.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CarrierIndexedState](declarations/carrierindexedstate.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [CarrierStateRecord](declarations/carrierstaterecord.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [abstractCarrierState](declarations/abstractcarrierstate.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [carrierStateRepresentation](declarations/carrierstaterepresentation.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [abstractCarrierState_weight](declarations/abstractcarrierstate-weight.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [carrierStateRecord_support_sound](declarations/carrierstaterecord-support-sound.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [carrierStateRecord_support_complete](declarations/carrierstaterecord-support-complete.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [CarrierIndexedState.carrierEquivExactCarrier](declarations/carrierindexedstate-carrierequivexactcarrier.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [CarrierIndexedState.carrierCount_eq_carrierMultiplicity](declarations/carrierindexedstate-carriercount-eq-carriermultiplicity.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [carrierStateRecord_count_eq_carrierMultiplicity](declarations/carrierstaterecord-count-eq-carriermultiplicity.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [CodecInvocationRecord](declarations/codecinvocationrecord.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [executeCodecInvocation](declarations/executecodecinvocation.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [codecDocumentRepresentation](declarations/codecdocumentrepresentation.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [executeCodecInvocation_represents](declarations/executecodecinvocation-represents.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [codecInvocation_encodeDecodeRelation](declarations/codecinvocation-encodedecoderelation.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [codecInvocation_serialize_preserved](declarations/codecinvocation-serialize-preserved.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [GraphPointRecord](declarations/graphpointrecord.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [graphPointRepresentation](declarations/graphpointrepresentation.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [executeGraphPoint](declarations/executegraphpoint.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [executeGraphPoint_represents](declarations/executegraphpoint-represents.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](declarations/executegraphpoint-liesondiagonal-iff-fixed.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [RoundingInvocation](declarations/roundinginvocation.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [executeRounding](declarations/executerounding.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [roundingResultRepresentation](declarations/roundingresultrepresentation.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [executeRounding_represents](declarations/executerounding-represents.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [executeSignedRounding](declarations/executesignedrounding.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [signedRoundingResult](declarations/signedroundingresult.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [SignedRoundingResultRefines](declarations/signedroundingresultrefines.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [executeSignedRounding_refines](declarations/executesignedrounding-refines.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [executeSignedRounding_negative_tie_sign](declarations/executesignedrounding-negative-tie-sign.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [ForeignRoundingInvocation](declarations/foreignroundinginvocation.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [executeForeignRounding](declarations/executeforeignrounding.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ForeignRoundingResultRefines](declarations/foreignroundingresultrefines.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [executeForeignRounding_refines](declarations/executeforeignrounding-refines.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [executeForeignRounding_rejects_nonfinite](declarations/executeforeignrounding-rejects-nonfinite.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [NormalizedCoordinateInvocation](declarations/normalizedcoordinateinvocation.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [executeNormalizedCoordinate](declarations/executenormalizedcoordinate.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [normalizedCoordinateRepresentation](declarations/normalizedcoordinaterepresentation.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [executeNormalizedCoordinate_represents](declarations/executenormalizedcoordinate-represents.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [ForeignNormalizedCoordinateInvocation](declarations/foreignnormalizedcoordinateinvocation.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [executeForeignNormalizedCoordinate](declarations/executeforeignnormalizedcoordinate.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ForeignNormalizedCoordinateResultRefines](declarations/foreignnormalizedcoordinateresultrefines.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [executeForeignNormalizedCoordinate_refines](declarations/executeforeignnormalizedcoordinate-refines.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [executeForeignNormalizedCoordinate_negativeZero](declarations/executeforeignnormalizedcoordinate-negativezero.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [CoverageInvocation](declarations/coverageinvocation.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [executeCoverage](declarations/executecoverage.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [coverageRepresentation](declarations/coveragerepresentation.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [executeCoverage_represents](declarations/executecoverage-represents.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [executeCoverage_mem_unitInterval](declarations/executecoverage-mem-unitinterval.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [RawCoverageInvocation](declarations/rawcoverageinvocation.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [executeRawCoverage](declarations/executerawcoverage.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [RawCoverageResultRefines](declarations/rawcoverageresultrefines.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [executeRawCoverage_refines](declarations/executerawcoverage-refines.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [executeRawCoverage_rejects_zero_samples](declarations/executerawcoverage-rejects-zero-samples.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [ForeignCoverageInvocation](declarations/foreigncoverageinvocation.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [executeForeignCoverage](declarations/executeforeigncoverage.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [ForeignCoverageResultRefines](declarations/foreigncoverageresultrefines.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [executeForeignCoverage_refines](declarations/executeforeigncoverage-refines.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [executeForeignCoverage_rejects_invalid_region](declarations/executeforeigncoverage-rejects-invalid-region.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [ThresholdInvocation](declarations/thresholdinvocation.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [executeThreshold](declarations/executethreshold.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [thresholdRepresentation](declarations/thresholdrepresentation.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [executeThreshold_represents](declarations/executethreshold-represents.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `structure` | [RawThresholdInvocation](declarations/rawthresholdinvocation.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [executeRawThreshold](declarations/executerawthreshold.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [RawThresholdResultRefines](declarations/rawthresholdresultrefines.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [executeRawThreshold_refines](declarations/executerawthreshold-refines.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [executeRawThreshold_rejects_negative_coverage](declarations/executerawthreshold-rejects-negative-coverage.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `structure` | [ForeignThresholdInvocation](declarations/foreignthresholdinvocation.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [executeForeignThreshold](declarations/executeforeignthreshold.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [ForeignThresholdResultRefines](declarations/foreignthresholdresultrefines.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [executeForeignThreshold_refines](declarations/executeforeignthreshold-refines.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [OwnershipInvocation](declarations/ownershipinvocation.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [executeOwnership](declarations/executeownership.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ownershipRepresentation](declarations/ownershiprepresentation.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [executeOwnership_represents](declarations/executeownership-represents.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [executeOwnership_sum](declarations/executeownership-sum.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [RawOwnershipInvocation](declarations/rawownershipinvocation.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [executeRawOwnership](declarations/executerawownership.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [RawOwnershipResultRefines](declarations/rawownershipresultrefines.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [executeRawOwnership_refines](declarations/executerawownership-refines.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [executeRawOwnership_rejects_zero](declarations/executerawownership-rejects-zero.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `structure` | [ConfiguredOwnershipInvocation](declarations/configuredownershipinvocation.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [executeConfiguredOwnership](declarations/executeconfiguredownership.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [ConfiguredOwnershipResultRefines](declarations/configuredownershipresultrefines.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [executeConfiguredOwnership_refines](declarations/executeconfiguredownership-refines.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [executeConfiguredOwnership_rejects_invalid](declarations/executeconfiguredownership-rejects-invalid.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [ResolveCarrierOwnershipInvocation](declarations/resolvecarrierownershipinvocation.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [executeResolveCarrierOwnership](declarations/executeresolvecarrierownership.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [ResolveCarrierOwnershipResultRefines](declarations/resolvecarrierownershipresultrefines.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [executeResolveCarrierOwnership_refines](declarations/executeresolvecarrierownership-refines.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [executeResolveCarrierOwnership_fields](declarations/executeresolvecarrierownership-fields.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [OccupancyInvocation](declarations/occupancyinvocation.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [executeOccupancy](declarations/executeoccupancy.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [executeOccupancy_preserves_mask](declarations/executeoccupancy-preserves-mask.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `structure` | [WeightedBitInvocation](declarations/weightedbitinvocation.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [executeWeightedBit](declarations/executeweightedbit.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [weightedBitRepresentation](declarations/weightedbitrepresentation.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [executeWeightedBit_represents](declarations/executeweightedbit-represents.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `structure` | [FiniteWeightsInvocation](declarations/finiteweightsinvocation.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [executeFiniteWeights](declarations/executefiniteweights.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [finiteWeightsRepresentation](declarations/finiteweightsrepresentation.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [executeFiniteWeights_represents](declarations/executefiniteweights-represents.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [executeFiniteWeights_sum](declarations/executefiniteweights-sum.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [RawFiniteWeightsInvocation](declarations/rawfiniteweightsinvocation.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [executeRawFiniteWeights](declarations/executerawfiniteweights.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [RawFiniteWeightsResultRefines](declarations/rawfiniteweightsresultrefines.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [executeRawFiniteWeights_refines](declarations/executerawfiniteweights-refines.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [executeRawFiniteWeights_sum_of_success](declarations/executerawfiniteweights-sum-of-success.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [executeRawFiniteWeights_rejects_equal_tolerance](declarations/executerawfiniteweights-rejects-equal-tolerance.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [ForeignFiniteWeightsInvocation](declarations/foreignfiniteweightsinvocation.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [executeForeignFiniteWeights](declarations/executeforeignfiniteweights.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [ForeignFiniteWeightsResultRefines](declarations/foreignfiniteweightsresultrefines.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [executeForeignFiniteWeights_refines](declarations/executeforeignfiniteweights-refines.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `structure` | [ObservedForeignFiniteWeightsInvocation](declarations/observedforeignfiniteweightsinvocation.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [executeObservedForeignFiniteWeights](declarations/executeobservedforeignfiniteweights.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [ObservedForeignFiniteWeightsResultRefines](declarations/observedforeignfiniteweightsresultrefines.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [executeObservedForeignFiniteWeights_refines](declarations/executeobservedforeignfiniteweights-refines.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `structure` | [ForeignBitValueInvocation](declarations/foreignbitvalueinvocation.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [executeForeignBitValue](declarations/executeforeignbitvalue.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [ForeignBitValueResultRefines](declarations/foreignbitvalueresultrefines.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [executeForeignBitValue_refines](declarations/executeforeignbitvalue-refines.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `structure` | [FiniteBitProjectionInvocation](declarations/finitebitprojectioninvocation.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [executeFiniteBitProjection](declarations/executefinitebitprojection.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [finiteBitProjectionRepresentation](declarations/finitebitprojectionrepresentation.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [executeFiniteBitProjection_represents](declarations/executefinitebitprojection-represents.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [executeFiniteBitProjection_all_true](declarations/executefinitebitprojection-all-true.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `structure` | [RasterCellInvocation](declarations/rastercellinvocation.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [executeRasterCell](declarations/executerastercell.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [rasterCellRepresentation](declarations/rastercellrepresentation.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [executeRasterCell_represents](declarations/executerastercell-represents.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [executeRasterCell_owner_tie](declarations/executerastercell-owner-tie.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `structure` | [RasterRegionInvocation](declarations/rasterregioninvocation.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [executeRasterRegion](declarations/executerasterregion.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [rasterRegionRepresentation](declarations/rasterregionrepresentation.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [executeRasterRegion_represents](declarations/executerasterregion-represents.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [executeRasterRegion_at](declarations/executerasterregion-at.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `structure` | [PreparedCarrierGeometryInvocation](declarations/preparedcarriergeometryinvocation.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [executePreparedCarrierGeometry](declarations/executepreparedcarriergeometry.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [preparedCarrierGeometryRepresentation](declarations/preparedcarriergeometryrepresentation.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [executePreparedCarrierGeometry_represents](declarations/executepreparedcarriergeometry-represents.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [executePreparedCarrierGeometry_operationOrderLiteral](declarations/executepreparedcarriergeometry-operationorderliteral.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [executePreparedCarrierGeometry_ownerSelection](declarations/executepreparedcarriergeometry-ownerselection.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [executePreparedCarrierGeometry_ownership](declarations/executepreparedcarriergeometry-ownership.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [executePreparedCarrierGeometry_at](declarations/executepreparedcarriergeometry-at.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `structure` | [ContinuousRegionGridInvocation](declarations/continuousregiongridinvocation.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [executeContinuousRegionGrid](declarations/executecontinuousregiongrid.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [continuousRegionGridRepresentation](declarations/continuousregiongridrepresentation.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [executeContinuousRegionGrid_represents](declarations/executecontinuousregiongrid-represents.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [executeContinuousRegionGrid_ownership](declarations/executecontinuousregiongrid-ownership.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [executeContinuousRegionGrid_ownerSelection](declarations/executecontinuousregiongrid-ownerselection.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [executeContinuousRegionGrid_operationOrderLiteral](declarations/executecontinuousregiongrid-operationorderliteral.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `structure` | [RawCarrierGeometryInvocation](declarations/rawcarriergeometryinvocation.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [executeRawCarrierGeometry](declarations/executerawcarriergeometry.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [RawCarrierGeometryResultRefines](declarations/rawcarriergeometryresultrefines.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [executeRawCarrierGeometry_refines](declarations/executerawcarriergeometry-refines.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [executeRawCarrierGeometry_rejects_zero_samples](declarations/executerawcarriergeometry-rejects-zero-samples.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `structure` | [CheckedForeignCarrierGeometryInvocation](declarations/checkedforeigncarriergeometryinvocation.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [executeCheckedForeignCarrierGeometry](declarations/executecheckedforeigncarriergeometry.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [CheckedForeignCarrierGeometryResultRefines](declarations/checkedforeigncarriergeometryresultrefines.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [executeCheckedForeignCarrierGeometry_refines](declarations/executecheckedforeigncarriergeometry-refines.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [executeCheckedForeignCarrierGeometry_rejects_order](declarations/executecheckedforeigncarriergeometry-rejects-order.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `structure` | [ForeignCarrierGeometryObservation](declarations/foreigncarriergeometryobservation.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [ForeignCarrierGeometryResultRefines](declarations/foreigncarriergeometryresultrefines.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [foreignCarrierGeometryObservation_refines](declarations/foreigncarriergeometryobservation-refines.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `structure` | [DiagonalReflectionInvocation](declarations/diagonalreflectioninvocation.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [executeDiagonalReflection](declarations/executediagonalreflection.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [diagonalReflectionRepresentation](declarations/diagonalreflectionrepresentation.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [executeDiagonalReflection_represents](declarations/executediagonalreflection-represents.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [executeDiagonalReflection_involutive](declarations/executediagonalreflection-involutive.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `structure` | [IterableReflectionInvocation](declarations/iterablereflectioninvocation.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [executeIterableReflection](declarations/executeiterablereflection.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `def` | [iterableReflectionRepresentation](declarations/iterablereflectionrepresentation.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [executeIterableReflection_represents](declarations/executeiterablereflection-represents.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [executeIterableReflection_length](declarations/executeiterablereflection-length.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `structure` | [RawIterableReflectionInvocation](declarations/rawiterablereflectioninvocation.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `def` | [executeRawIterableReflection](declarations/executerawiterablereflection.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [RawIterableReflectionResultRefines](declarations/rawiterablereflectionresultrefines.md) | 1165 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [executeRawIterableReflection_refines](declarations/executerawiterablereflection-refines.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `structure` | [ForeignDiagonalReflectionInvocation](declarations/foreigndiagonalreflectioninvocation.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `def` | [executeForeignDiagonalReflection](declarations/executeforeigndiagonalreflection.md) | 1180 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [ForeignDiagonalReflectionResultRefines](declarations/foreigndiagonalreflectionresultrefines.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [executeForeignDiagonalReflection_refines](declarations/executeforeigndiagonalreflection-refines.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `structure` | [ForeignCarrierDiagonalInvocation](declarations/foreigncarrierdiagonalinvocation.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `def` | [executeForeignCarrierDiagonal](declarations/executeforeigncarrierdiagonal.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `def` | [ForeignCarrierDiagonalResultRefines](declarations/foreigncarrierdiagonalresultrefines.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [executeForeignCarrierDiagonal_refines](declarations/executeforeigncarrierdiagonal-refines.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [executeCarrierDiagonal_involutive](declarations/executecarrierdiagonal-involutive.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `structure` | [GammaBranchInvocation](declarations/gammabranchinvocation.md) | 1221 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [executeGammaBranch](declarations/executegammabranch.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [gammaBranchRepresentation](declarations/gammabranchrepresentation.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [executeGammaBranch_represents](declarations/executegammabranch-represents.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `structure` | [GammaRuntimeObservation](declarations/gammaruntimeobservation.md) | 1239 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `def` | [GammaRuntimeResultRefines](declarations/gammaruntimeresultrefines.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [gammaRuntimeSuccess_refines](declarations/gammaruntimesuccess-refines.md) | 1246 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [gammaRuntimePole_refines](declarations/gammaruntimepole-refines.md) | 1252 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [gammaRuntimeNonfinite_refines](declarations/gammaruntimenonfinite-refines.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `structure` | [ForeignGammaInputInvocation](declarations/foreigngammainputinvocation.md) | 1265 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `def` | [executeForeignGammaInput](declarations/executeforeigngammainput.md) | 1268 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `def` | [ForeignGammaInputResultRefines](declarations/foreigngammainputresultrefines.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [executeForeignGammaInput_refines](declarations/executeforeigngammainput-refines.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [executeForeignGammaInput_rejects_nonfinite](declarations/executeforeigngammainput-rejects-nonfinite.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `structure` | [PrecessionInvocation](declarations/precessioninvocation.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `def` | [executePrecession](declarations/executeprecession.md) | 1292 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `def` | [precessionRepresentation](declarations/precessionrepresentation.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [executePrecession_represents](declarations/executeprecession-represents.md) | 1301 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [executePrecession_nonnegative](declarations/executeprecession-nonnegative.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `structure` | [RawPrecessionInvocation](declarations/rawprecessioninvocation.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `def` | [executeRawPrecession](declarations/executerawprecession.md) | 1319 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `def` | [RawPrecessionResultRefines](declarations/rawprecessionresultrefines.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [executeRawPrecession_refines](declarations/executerawprecession-refines.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [executeRawPrecession_rejects_negative](declarations/executerawprecession-rejects-negative.md) | 1333 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [executeRawPrecession_rejects_zero_negative](declarations/executerawprecession-rejects-zero-negative.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `structure` | [PrecessionRuntimeObservation](declarations/precessionruntimeobservation.md) | 1346 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `def` | [PrecessionRuntimeResultRefines](declarations/precessionruntimeresultrefines.md) | 1351 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [precessionRuntimeSuccess_refines](declarations/precessionruntimesuccess-refines.md) | 1356 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [precessionRuntimeNonfinite_refines](declarations/precessionruntimenonfinite-refines.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `structure` | [ForeignPrecessionInvocation](declarations/foreignprecessioninvocation.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [executeForeignPrecession](declarations/executeforeignprecession.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `def` | [ForeignPrecessionResultRefines](declarations/foreignprecessionresultrefines.md) | 1382 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [executeForeignPrecession_refines](declarations/executeforeignprecession-refines.md) | 1386 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [executeForeignPrecession_rejects_nonfinite_phase](declarations/executeforeignprecession-rejects-nonfinite-phase.md) | 1392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42aa57aa1138b3ed5af4a508af2a9938de4f0f5fbb778ad730894287264991ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant97e26f29130f5e1eceef50bb2888c8d9b71904b2d3939474084d49543e080d06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
