# Correspondence Namespaced Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**226 observed declarations and anonymous commands**, 90 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant68a9306ea0f7372ccf0c2f6f67421ebbcd6a7b83e63cc369b3c1da9c4a79d804.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0c82228984955921cbe7e89cd097918bb78baba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GridCellRecord](declarations/gridcellrecord.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [abstractGridCell](declarations/abstractgridcell.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gridCellRepresentation](declarations/gridcellrepresentation.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [abstractGridCell_rowMajorIndex](declarations/abstractgridcell-rowmajorindex.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CarrierIndexedState](declarations/carrierindexedstate.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [CarrierStateRecord](declarations/carrierstaterecord.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [abstractCarrierState](declarations/abstractcarrierstate.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [carrierStateRepresentation](declarations/carrierstaterepresentation.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [abstractCarrierState_weight](declarations/abstractcarrierstate-weight.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [carrierStateRecord_support_sound](declarations/carrierstaterecord-support-sound.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [carrierStateRecord_support_complete](declarations/carrierstaterecord-support-complete.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [CarrierIndexedState.carrierEquivExactCarrier](declarations/carrierindexedstate-carrierequivexactcarrier.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [CarrierIndexedState.carrierCount_eq_carrierMultiplicity](declarations/carrierindexedstate-carriercount-eq-carriermultiplicity.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [carrierStateRecord_count_eq_carrierMultiplicity](declarations/carrierstaterecord-count-eq-carriermultiplicity.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [CodecInvocationRecord](declarations/codecinvocationrecord.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [executeCodecInvocation](declarations/executecodecinvocation.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [codecDocumentRepresentation](declarations/codecdocumentrepresentation.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [executeCodecInvocation_represents](declarations/executecodecinvocation-represents.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [codecInvocation_encodeDecodeRelation](declarations/codecinvocation-encodedecoderelation.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [codecInvocation_serialize_preserved](declarations/codecinvocation-serialize-preserved.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [GraphPointRecord](declarations/graphpointrecord.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [graphPointRepresentation](declarations/graphpointrepresentation.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [executeGraphPoint](declarations/executegraphpoint.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [executeGraphPoint_represents](declarations/executegraphpoint-represents.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](declarations/executegraphpoint-liesondiagonal-iff-fixed.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [RoundingInvocation](declarations/roundinginvocation.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [executeRounding](declarations/executerounding.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [roundingResultRepresentation](declarations/roundingresultrepresentation.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [executeRounding_represents](declarations/executerounding-represents.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [executeSignedRounding](declarations/executesignedrounding.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [signedRoundingResult](declarations/signedroundingresult.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [SignedRoundingResultRefines](declarations/signedroundingresultrefines.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [executeSignedRounding_refines](declarations/executesignedrounding-refines.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [executeSignedRounding_negative_tie_sign](declarations/executesignedrounding-negative-tie-sign.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [ForeignRoundingInvocation](declarations/foreignroundinginvocation.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [executeForeignRounding](declarations/executeforeignrounding.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ForeignRoundingResultRefines](declarations/foreignroundingresultrefines.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [executeForeignRounding_refines](declarations/executeforeignrounding-refines.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [executeForeignRounding_rejects_nonfinite](declarations/executeforeignrounding-rejects-nonfinite.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [NormalizedCoordinateInvocation](declarations/normalizedcoordinateinvocation.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [executeNormalizedCoordinate](declarations/executenormalizedcoordinate.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [normalizedCoordinateRepresentation](declarations/normalizedcoordinaterepresentation.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [executeNormalizedCoordinate_represents](declarations/executenormalizedcoordinate-represents.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [ForeignNormalizedCoordinateInvocation](declarations/foreignnormalizedcoordinateinvocation.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [executeForeignNormalizedCoordinate](declarations/executeforeignnormalizedcoordinate.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ForeignNormalizedCoordinateResultRefines](declarations/foreignnormalizedcoordinateresultrefines.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [executeForeignNormalizedCoordinate_refines](declarations/executeforeignnormalizedcoordinate-refines.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [executeForeignNormalizedCoordinate_negativeZero](declarations/executeforeignnormalizedcoordinate-negativezero.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [CoverageInvocation](declarations/coverageinvocation.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [executeCoverage](declarations/executecoverage.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [coverageRepresentation](declarations/coveragerepresentation.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [executeCoverage_represents](declarations/executecoverage-represents.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [executeCoverage_mem_unitInterval](declarations/executecoverage-mem-unitinterval.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [RawCoverageInvocation](declarations/rawcoverageinvocation.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [executeRawCoverage](declarations/executerawcoverage.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [RawCoverageResultRefines](declarations/rawcoverageresultrefines.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [executeRawCoverage_refines](declarations/executerawcoverage-refines.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [executeRawCoverage_rejects_zero_samples](declarations/executerawcoverage-rejects-zero-samples.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [ForeignCoverageInvocation](declarations/foreigncoverageinvocation.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [executeForeignCoverage](declarations/executeforeigncoverage.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [ForeignCoverageResultRefines](declarations/foreigncoverageresultrefines.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [executeForeignCoverage_refines](declarations/executeforeigncoverage-refines.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [executeForeignCoverage_rejects_invalid_region](declarations/executeforeigncoverage-rejects-invalid-region.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [ThresholdInvocation](declarations/thresholdinvocation.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [executeThreshold](declarations/executethreshold.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [thresholdRepresentation](declarations/thresholdrepresentation.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [executeThreshold_represents](declarations/executethreshold-represents.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `structure` | [RawThresholdInvocation](declarations/rawthresholdinvocation.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [executeRawThreshold](declarations/executerawthreshold.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [RawThresholdResultRefines](declarations/rawthresholdresultrefines.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [executeRawThreshold_refines](declarations/executerawthreshold-refines.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [executeRawThreshold_rejects_negative_coverage](declarations/executerawthreshold-rejects-negative-coverage.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `structure` | [ForeignThresholdInvocation](declarations/foreignthresholdinvocation.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [executeForeignThreshold](declarations/executeforeignthreshold.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [ForeignThresholdResultRefines](declarations/foreignthresholdresultrefines.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [executeForeignThreshold_refines](declarations/executeforeignthreshold-refines.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [OwnershipInvocation](declarations/ownershipinvocation.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [executeOwnership](declarations/executeownership.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ownershipRepresentation](declarations/ownershiprepresentation.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [executeOwnership_represents](declarations/executeownership-represents.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [executeOwnership_sum](declarations/executeownership-sum.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `structure` | [RawOwnershipInvocation](declarations/rawownershipinvocation.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [executeRawOwnership](declarations/executerawownership.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [RawOwnershipResultRefines](declarations/rawownershipresultrefines.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [executeRawOwnership_refines](declarations/executerawownership-refines.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [executeRawOwnership_rejects_zero](declarations/executerawownership-rejects-zero.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `structure` | [ConfiguredOwnershipInvocation](declarations/configuredownershipinvocation.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [executeConfiguredOwnership](declarations/executeconfiguredownership.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [ConfiguredOwnershipResultRefines](declarations/configuredownershipresultrefines.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [executeConfiguredOwnership_refines](declarations/executeconfiguredownership-refines.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [executeConfiguredOwnership_rejects_invalid](declarations/executeconfiguredownership-rejects-invalid.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [ResolveCarrierOwnershipInvocation](declarations/resolvecarrierownershipinvocation.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [executeResolveCarrierOwnership](declarations/executeresolvecarrierownership.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [ResolveCarrierOwnershipResultRefines](declarations/resolvecarrierownershipresultrefines.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [executeResolveCarrierOwnership_refines](declarations/executeresolvecarrierownership-refines.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [executeResolveCarrierOwnership_fields](declarations/executeresolvecarrierownership-fields.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [OccupancyInvocation](declarations/occupancyinvocation.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [executeOccupancy](declarations/executeoccupancy.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [executeOccupancy_preserves_mask](declarations/executeoccupancy-preserves-mask.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `structure` | [WeightedBitInvocation](declarations/weightedbitinvocation.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [executeWeightedBit](declarations/executeweightedbit.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [weightedBitRepresentation](declarations/weightedbitrepresentation.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [executeWeightedBit_represents](declarations/executeweightedbit-represents.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `structure` | [FiniteWeightsInvocation](declarations/finiteweightsinvocation.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [executeFiniteWeights](declarations/executefiniteweights.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [finiteWeightsRepresentation](declarations/finiteweightsrepresentation.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [executeFiniteWeights_represents](declarations/executefiniteweights-represents.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [executeFiniteWeights_sum](declarations/executefiniteweights-sum.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [RawFiniteWeightsInvocation](declarations/rawfiniteweightsinvocation.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [executeRawFiniteWeights](declarations/executerawfiniteweights.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [RawFiniteWeightsResultRefines](declarations/rawfiniteweightsresultrefines.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [executeRawFiniteWeights_refines](declarations/executerawfiniteweights-refines.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [executeRawFiniteWeights_sum_of_success](declarations/executerawfiniteweights-sum-of-success.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [executeRawFiniteWeights_rejects_equal_tolerance](declarations/executerawfiniteweights-rejects-equal-tolerance.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `structure` | [ForeignFiniteWeightsInvocation](declarations/foreignfiniteweightsinvocation.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [executeForeignFiniteWeights](declarations/executeforeignfiniteweights.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [ForeignFiniteWeightsResultRefines](declarations/foreignfiniteweightsresultrefines.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [executeForeignFiniteWeights_refines](declarations/executeforeignfiniteweights-refines.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `structure` | [ObservedForeignFiniteWeightsInvocation](declarations/observedforeignfiniteweightsinvocation.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [executeObservedForeignFiniteWeights](declarations/executeobservedforeignfiniteweights.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [ObservedForeignFiniteWeightsResultRefines](declarations/observedforeignfiniteweightsresultrefines.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [executeObservedForeignFiniteWeights_refines](declarations/executeobservedforeignfiniteweights-refines.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `structure` | [ForeignBitValueInvocation](declarations/foreignbitvalueinvocation.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [executeForeignBitValue](declarations/executeforeignbitvalue.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [ForeignBitValueResultRefines](declarations/foreignbitvalueresultrefines.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [executeForeignBitValue_refines](declarations/executeforeignbitvalue-refines.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `structure` | [FiniteBitProjectionInvocation](declarations/finitebitprojectioninvocation.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [executeFiniteBitProjection](declarations/executefinitebitprojection.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [finiteBitProjectionRepresentation](declarations/finitebitprojectionrepresentation.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [executeFiniteBitProjection_represents](declarations/executefinitebitprojection-represents.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [executeFiniteBitProjection_all_true](declarations/executefinitebitprojection-all-true.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `structure` | [RasterCellInvocation](declarations/rastercellinvocation.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [executeRasterCell](declarations/executerastercell.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [rasterCellRepresentation](declarations/rastercellrepresentation.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [executeRasterCell_represents](declarations/executerastercell-represents.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [executeRasterCell_owner_tie](declarations/executerastercell-owner-tie.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `structure` | [RasterRegionInvocation](declarations/rasterregioninvocation.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [executeRasterRegion](declarations/executerasterregion.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [rasterRegionRepresentation](declarations/rasterregionrepresentation.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [executeRasterRegion_represents](declarations/executerasterregion-represents.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [executeRasterRegion_at](declarations/executerasterregion-at.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `structure` | [PreparedCarrierGeometryInvocation](declarations/preparedcarriergeometryinvocation.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [executePreparedCarrierGeometry](declarations/executepreparedcarriergeometry.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [preparedCarrierGeometryRepresentation](declarations/preparedcarriergeometryrepresentation.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [executePreparedCarrierGeometry_represents](declarations/executepreparedcarriergeometry-represents.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [executePreparedCarrierGeometry_operationOrderLiteral](declarations/executepreparedcarriergeometry-operationorderliteral.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [executePreparedCarrierGeometry_ownerSelection](declarations/executepreparedcarriergeometry-ownerselection.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [executePreparedCarrierGeometry_ownership](declarations/executepreparedcarriergeometry-ownership.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [executePreparedCarrierGeometry_at](declarations/executepreparedcarriergeometry-at.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `structure` | [ContinuousRegionGridInvocation](declarations/continuousregiongridinvocation.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [executeContinuousRegionGrid](declarations/executecontinuousregiongrid.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [continuousRegionGridRepresentation](declarations/continuousregiongridrepresentation.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [executeContinuousRegionGrid_represents](declarations/executecontinuousregiongrid-represents.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [executeContinuousRegionGrid_ownership](declarations/executecontinuousregiongrid-ownership.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [executeContinuousRegionGrid_ownerSelection](declarations/executecontinuousregiongrid-ownerselection.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [executeContinuousRegionGrid_operationOrderLiteral](declarations/executecontinuousregiongrid-operationorderliteral.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `structure` | [RawCarrierGeometryInvocation](declarations/rawcarriergeometryinvocation.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [executeRawCarrierGeometry](declarations/executerawcarriergeometry.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [RawCarrierGeometryResultRefines](declarations/rawcarriergeometryresultrefines.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [executeRawCarrierGeometry_refines](declarations/executerawcarriergeometry-refines.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [executeRawCarrierGeometry_rejects_zero_samples](declarations/executerawcarriergeometry-rejects-zero-samples.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `structure` | [CheckedForeignCarrierGeometryInvocation](declarations/checkedforeigncarriergeometryinvocation.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [executeCheckedForeignCarrierGeometry](declarations/executecheckedforeigncarriergeometry.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [CheckedForeignCarrierGeometryResultRefines](declarations/checkedforeigncarriergeometryresultrefines.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [executeCheckedForeignCarrierGeometry_refines](declarations/executecheckedforeigncarriergeometry-refines.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [executeCheckedForeignCarrierGeometry_rejects_order](declarations/executecheckedforeigncarriergeometry-rejects-order.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `structure` | [ForeignCarrierGeometryObservation](declarations/foreigncarriergeometryobservation.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [ForeignCarrierGeometryResultRefines](declarations/foreigncarriergeometryresultrefines.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [foreignCarrierGeometryObservation_refines](declarations/foreigncarriergeometryobservation-refines.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `structure` | [DiagonalReflectionInvocation](declarations/diagonalreflectioninvocation.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [executeDiagonalReflection](declarations/executediagonalreflection.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [diagonalReflectionRepresentation](declarations/diagonalreflectionrepresentation.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [executeDiagonalReflection_represents](declarations/executediagonalreflection-represents.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [executeDiagonalReflection_involutive](declarations/executediagonalreflection-involutive.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `structure` | [IterableReflectionInvocation](declarations/iterablereflectioninvocation.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [executeIterableReflection](declarations/executeiterablereflection.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `def` | [iterableReflectionRepresentation](declarations/iterablereflectionrepresentation.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [executeIterableReflection_represents](declarations/executeiterablereflection-represents.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [executeIterableReflection_length](declarations/executeiterablereflection-length.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `structure` | [RawIterableReflectionInvocation](declarations/rawiterablereflectioninvocation.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `def` | [executeRawIterableReflection](declarations/executerawiterablereflection.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [RawIterableReflectionResultRefines](declarations/rawiterablereflectionresultrefines.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [executeRawIterableReflection_refines](declarations/executerawiterablereflection-refines.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `structure` | [ForeignDiagonalReflectionInvocation](declarations/foreigndiagonalreflectioninvocation.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `def` | [executeForeignDiagonalReflection](declarations/executeforeigndiagonalreflection.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [ForeignDiagonalReflectionResultRefines](declarations/foreigndiagonalreflectionresultrefines.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [executeForeignDiagonalReflection_refines](declarations/executeforeigndiagonalreflection-refines.md) | 1192 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `structure` | [ForeignCarrierDiagonalInvocation](declarations/foreigncarrierdiagonalinvocation.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `def` | [executeForeignCarrierDiagonal](declarations/executeforeigncarrierdiagonal.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `def` | [ForeignCarrierDiagonalResultRefines](declarations/foreigncarrierdiagonalresultrefines.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [executeForeignCarrierDiagonal_refines](declarations/executeforeigncarrierdiagonal-refines.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [executeCarrierDiagonal_involutive](declarations/executecarrierdiagonal-involutive.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `structure` | [GammaBranchInvocation](declarations/gammabranchinvocation.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [executeGammaBranch](declarations/executegammabranch.md) | 1226 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [gammaBranchRepresentation](declarations/gammabranchrepresentation.md) | 1229 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [executeGammaBranch_represents](declarations/executegammabranch-represents.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `structure` | [GammaRuntimeObservation](declarations/gammaruntimeobservation.md) | 1241 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `def` | [GammaRuntimeResultRefines](declarations/gammaruntimeresultrefines.md) | 1245 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [gammaRuntimeSuccess_refines](declarations/gammaruntimesuccess-refines.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [gammaRuntimePole_refines](declarations/gammaruntimepole-refines.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [gammaRuntimeNonfinite_refines](declarations/gammaruntimenonfinite-refines.md) | 1258 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `structure` | [ForeignGammaInputInvocation](declarations/foreigngammainputinvocation.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `def` | [executeForeignGammaInput](declarations/executeforeigngammainput.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `def` | [ForeignGammaInputResultRefines](declarations/foreigngammainputresultrefines.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [executeForeignGammaInput_refines](declarations/executeforeigngammainput-refines.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [executeForeignGammaInput_rejects_nonfinite](declarations/executeforeigngammainput-rejects-nonfinite.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `structure` | [PrecessionInvocation](declarations/precessioninvocation.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `def` | [executePrecession](declarations/executeprecession.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `def` | [precessionRepresentation](declarations/precessionrepresentation.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [executePrecession_represents](declarations/executeprecession-represents.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [executePrecession_nonnegative](declarations/executeprecession-nonnegative.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `structure` | [RawPrecessionInvocation](declarations/rawprecessioninvocation.md) | 1317 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `def` | [executeRawPrecession](declarations/executerawprecession.md) | 1321 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `def` | [RawPrecessionResultRefines](declarations/rawprecessionresultrefines.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [executeRawPrecession_refines](declarations/executerawprecession-refines.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [executeRawPrecession_rejects_negative](declarations/executerawprecession-rejects-negative.md) | 1335 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [executeRawPrecession_rejects_zero_negative](declarations/executerawprecession-rejects-zero-negative.md) | 1340 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `structure` | [PrecessionRuntimeObservation](declarations/precessionruntimeobservation.md) | 1348 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `def` | [PrecessionRuntimeResultRefines](declarations/precessionruntimeresultrefines.md) | 1353 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [precessionRuntimeSuccess_refines](declarations/precessionruntimesuccess-refines.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [precessionRuntimeNonfinite_refines](declarations/precessionruntimenonfinite-refines.md) | 1365 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `structure` | [ForeignPrecessionInvocation](declarations/foreignprecessioninvocation.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [executeForeignPrecession](declarations/executeforeignprecession.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `def` | [ForeignPrecessionResultRefines](declarations/foreignprecessionresultrefines.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [executeForeignPrecession_refines](declarations/executeforeignprecession-refines.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [executeForeignPrecession_rejects_nonfinite_phase](declarations/executeforeignprecession-rejects-nonfinite-phase.md) | 1394 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97d8dac2dc54fb3f30dc489ef0ca2efebc27106464815f78b25fc5ac928c2361 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant68a9306ea0f7372ccf0c2f6f67421ebbcd6a7b83e63cc369b3c1da9c4a79d804.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
