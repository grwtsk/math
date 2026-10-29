# Semantics Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**305 observed declarations and anonymous commands**, 117 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `467af6b5ac8514af4fa63a820857d41925c50b62`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticsSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


Declaration pages: [1](index.md) · [2](declarations-2.md)

| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](declarations/bitfield.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BitField.bitAt](declarations/bitfield-bitat.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CarrierGrid](declarations/carriergrid.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [OwnershipMask](declarations/ownershipmask.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [FiniteRasterState](declarations/finiterasterstate.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [TriangleVertex](declarations/trianglevertex.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [triangleSuccessor](declarations/trianglesuccessor.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [triangleSuccessor_third_power](declarations/trianglesuccessor-third-power.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BraidEndpointPresentation](declarations/braidendpointpresentation.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [PipelineStage](declarations/pipelinestage.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [canonicalPipelineStages](declarations/canonicalpipelinestages.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [PipelineTrace](declarations/pipelinetrace.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ConfigurationInput](declarations/configurationinput.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [DerivedConfiguration](declarations/derivedconfiguration.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [deriveConfiguration](declarations/deriveconfiguration.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [derive_cells_per_axis](declarations/derive-cells-per-axis.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [derive_raster_extent](declarations/derive-raster-extent.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [RuntimeFailure](declarations/runtimefailure.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [RuntimeResult](declarations/runtimeresult.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [RuntimeObservation](declarations/runtimeobservation.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ResultRefines](declarations/resultrefines.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [executeObservation_refines](declarations/executeobservation-refines.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [RasterRounding](declarations/rasterrounding.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [RasterRounding.round](declarations/rasterrounding-round.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [round_positive_tie](declarations/round-positive-tie.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [round_negative_tie](declarations/round-negative-tie.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [round_zero](declarations/round-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [SignedInteger](declarations/signedinteger.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [RasterRounding.roundSigned](declarations/rasterrounding-roundsigned.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [RasterRounding.roundSigned_value](declarations/rasterrounding-roundsigned-value.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [roundSigned_negative_tie_value](declarations/roundsigned-negative-tie-value.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [roundSigned_negative_tie_sign](declarations/roundsigned-negative-tie-sign.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [roundSigned_positive_tie_sign](declarations/roundsigned-positive-tie-sign.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [AxisDirection](declarations/axisdirection.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [SignedRational](declarations/signedrational.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [normalizeSignedInteger](declarations/normalizesignedinteger.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [normalizeSignedRasterCoordinate](declarations/normalizesignedrastercoordinate.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [normalizeSigned_negative_tie_value](declarations/normalizesigned-negative-tie-value.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [normalizeSigned_negative_tie_sign](declarations/normalizesigned-negative-tie-sign.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [normalizeSigned_negative_tie_decreasing](declarations/normalizesigned-negative-tie-decreasing.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `inductive` | [ForeignRoundingMode](declarations/foreignroundingmode.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `inductive` | [ForeignRational](declarations/foreignrational.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [negativeZeroInteger](declarations/negativezerointeger.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [negativeZeroRational](declarations/negativezerorational.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [checkForeignRationalExact](declarations/checkforeignrationalexact.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [checkForeignRationalExact_nan](declarations/checkforeignrationalexact-nan.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [foreignRoundingResult](declarations/foreignroundingresult.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [ForeignNormalizedCoordinateRequest](declarations/foreignnormalizedcoordinaterequest.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [foreignNormalizedCoordinateResult](declarations/foreignnormalizedcoordinateresult.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [foreignRoundingResult_nonfinite](declarations/foreignroundingresult-nonfinite.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [foreignNormalizedCoordinate_negativeZero](declarations/foreignnormalizedcoordinate-negativezero.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [RasterPoint](declarations/rasterpoint.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [RasterPoint.reflectDiagonal](declarations/rasterpoint-reflectdiagonal.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [RasterPoint.reflectDiagonal_involutive](declarations/rasterpoint-reflectdiagonal-involutive.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `inductive` | [ReflectionDescriptor](declarations/reflectiondescriptor.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [reflectPoint](declarations/reflectpoint.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [reflectCarrierSpace](declarations/reflectcarrierspace.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [reflectCarrierDiagonal](declarations/reflectcarrierdiagonal.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [reflectCarrierSpace_length](declarations/reflectcarrierspace-length.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [reflectPoint_diagonal_zero](declarations/reflectpoint-diagonal-zero.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [reflectCarrierDiagonal_involutive](declarations/reflectcarrierdiagonal-involutive.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `inductive` | [RawReflectionDescriptor](declarations/rawreflectiondescriptor.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [checkReflectionDescriptor](declarations/checkreflectiondescriptor.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [reflectCarrierSpaceResult](declarations/reflectcarrierspaceresult.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [checkReflectionDescriptor_zero_normal](declarations/checkreflectiondescriptor-zero-normal.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `inductive` | [ForeignRasterPoint](declarations/foreignrasterpoint.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [checkForeignRasterPoint](declarations/checkforeignrasterpoint.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [checkForeignRasterPointList](declarations/checkforeignrasterpointlist.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [foreignDiagonalReflectionResult](declarations/foreigndiagonalreflectionresult.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [foreignCarrierDiagonalResult](declarations/foreigncarrierdiagonalresult.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [foreignDiagonalReflectionResult_null](declarations/foreigndiagonalreflectionresult-null.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [foreignDiagonalReflectionResult_nonfinite](declarations/foreigndiagonalreflectionresult-nonfinite.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [foreignCarrierDiagonalResult_rejects_invalid_tail](declarations/foreigncarrierdiagonalresult-rejects-invalid-tail.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [normalizeRasterCoordinate](declarations/normalizerastercoordinate.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [normalizeRasterCoordinate_decreasing](declarations/normalizerastercoordinate-decreasing.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [PixelCoordinate](declarations/pixelcoordinate.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [PixelSupport](declarations/pixelsupport.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `structure` | [Pixel](declarations/pixel.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [mooreNeighborhood](declarations/mooreneighborhood.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [PixelCoordinate.translate](declarations/pixelcoordinate-translate.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [candidateStencil](declarations/candidatestencil.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [candidateStencil_card](declarations/candidatestencil-card.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `abbrev` | [PointInRegionPredicate](declarations/pointinregionpredicate.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `structure` | [CellSupport](declarations/cellsupport.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [cellSamplePoint](declarations/cellsamplepoint.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [coverageCount](declarations/coveragecount.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [sampledCoverage](declarations/sampledcoverage.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [sampledCoverage_zero](declarations/sampledcoverage-zero.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [coverageCount_le_sampleCount](declarations/coveragecount-le-samplecount.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [sampledCoverage_mem_unitInterval](declarations/sampledcoverage-mem-unitinterval.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `inductive` | [CoverageMethod](declarations/coveragemethod.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [CoverageEvidence](declarations/coverageevidence.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `structure` | [ExactCoverage](declarations/exactcoverage.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `structure` | [CoverageRequest](declarations/coveragerequest.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [cellCoverageDetailed](declarations/cellcoveragedetailed.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [cellCoverageDetailed_exact](declarations/cellcoveragedetailed-exact.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [cellCoverageDetailed_sampled](declarations/cellcoveragedetailed-sampled.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `inductive` | [RawContainmentResult](declarations/rawcontainmentresult.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `structure` | [RawCellSupport](declarations/rawcellsupport.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [checkRawCellSupport](declarations/checkrawcellsupport.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `structure` | [RawCoverageRequest](declarations/rawcoveragerequest.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [rawContainmentPredicate](declarations/rawcontainmentpredicate.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [coverageResult](declarations/coverageresult.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `inductive` | [ForeignCoverageRegion](declarations/foreigncoverageregion.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `structure` | [ForeignCellSupport](declarations/foreigncellsupport.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `inductive` | [ForeignSampleCount](declarations/foreignsamplecount.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [maximumCoverageSamplesPerAxis](declarations/maximumcoveragesamplesperaxis.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `structure` | [ForeignCoverageRequest](declarations/foreigncoveragerequest.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [checkForeignCellSupport](declarations/checkforeigncellsupport.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [foreignCoverageResult](declarations/foreigncoverageresult.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [foreignCoverageResult_invalid_region](declarations/foreigncoverageresult-invalid-region.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [foreignCoverageResult_invalid_sample](declarations/foreigncoverageresult-invalid-sample.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [foreignCoverageResult_sample_too_large](declarations/foreigncoverageresult-sample-too-large.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [checkRawCellSupport_rejects_x](declarations/checkrawcellsupport-rejects-x.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [coverageResult_rejects_zero_samples](declarations/coverageresult-rejects-zero-samples.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coverageResult_rejects_negative_exact](declarations/coverageresult-rejects-negative-exact.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coverageResult_rejects_nonBoolean](declarations/coverageresult-rejects-nonboolean.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `abbrev` | [OccupancyMask](declarations/occupancymask.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `abbrev` | [Claimant](declarations/claimant.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `structure` | [OwnershipSelectionMask](declarations/ownershipselectionmask.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [ownershipSelectionMaskCoeFun](declarations/ownershipselectionmaskcoefun.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `abbrev` | [Owner](declarations/owner.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [selectedOwnerCount](declarations/selectedownercount.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [ownershipWeight](declarations/ownershipweight.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [ownershipWeight_unselected](declarations/ownershipweight-unselected.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [ownershipWeight_selected](declarations/ownershipweight-selected.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [ownershipWeight_sum](declarations/ownershipweight-sum.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [PureOwnership](declarations/pureownership.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [MixedOwnership](declarations/mixedownership.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `structure` | [OccupancyState](declarations/occupancystate.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `structure` | [OwnershipState](declarations/ownershipstate.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `inductive` | [TraversalDirection](declarations/traversaldirection.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `inductive` | [SquareCorner](declarations/squarecorner.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [SquareCorner.quarterTurns](declarations/squarecorner-quarterturns.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [rotateOwnershipMask4](declarations/rotateownershipmask4.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `structure` | [ConfiguredOwnership](declarations/configuredownership.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [ConfiguredOwnership.fourMask](declarations/configuredownership-fourmask.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [schemaProfileConfiguredOwnership](declarations/schemaprofileconfiguredownership.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [ownershipMaskResult](declarations/ownershipmaskresult.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [ownershipMaskResult_one](declarations/ownershipmaskresult-one.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [ownershipMaskResult_two](declarations/ownershipmaskresult-two.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [ownershipMaskResult_four](declarations/ownershipmaskresult-four.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [ownershipMaskResult_invalid](declarations/ownershipmaskresult-invalid.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [ownershipMaskResult_length](declarations/ownershipmaskresult-length.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [normalizeOwnershipResult](declarations/normalizeownershipresult.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [normalizeOwnershipResult_empty](declarations/normalizeownershipresult-empty.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [normalizeOwnershipResult_nonempty](declarations/normalizeownershipresult-nonempty.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [normalizeOwnershipResult_sum](declarations/normalizeownershipresult-sum.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [selectedMaskListCount](declarations/selectedmasklistcount.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [normalizedMaskListWeights](declarations/normalizedmasklistweights.md) | 1246 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [selectedCarrierOwners](declarations/selectedcarrierowners.md) | 1252 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `structure` | [CarrierOwnershipResult](declarations/carrierownershipresult.md) | 1259 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [CarrierOwnershipResult.Coherent](declarations/carrierownershipresult-coherent.md) | 1268 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [carrierOwnershipResultCoherentDecidable](declarations/carrierownershipresultcoherentdecidable.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [CarrierOwnershipResult.ownerSelection](declarations/carrierownershipresult-ownerselection.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [resolveCarrierOwnership](declarations/resolvecarrierownership.md) | 1292 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [resolveCarrierOwnership_fields](declarations/resolvecarrierownership-fields.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [resolveCarrierOwnership_coherent](declarations/resolvecarrierownership-coherent.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [schemaOwnership_two_clockwise](declarations/schemaownership-two-clockwise.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [schemaOwnership_two_counterclockwise](declarations/schemaownership-two-counterclockwise.md) | 1385 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [schemaOwnership_four_clockwise_topLeft](declarations/schemaownership-four-clockwise-topleft.md) | 1390 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [schemaOwnership_four_counterclockwise_topLeft](declarations/schemaownership-four-counterclockwise-topleft.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [schemaOwnership_four_clockwise_topRight](declarations/schemaownership-four-clockwise-topright.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `inductive` | [TiePolicy](declarations/tiepolicy.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `structure` | [OwnershipTiePolicies](declarations/ownershiptiepolicies.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [resolveThreshold](declarations/resolvethreshold.md) | 1420 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [resolveThreshold_positive_tie](declarations/resolvethreshold-positive-tie.md) | 1432 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [resolveThreshold_negative_tie](declarations/resolvethreshold-negative-tie.md) | 1438 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [resolveThreshold_zero_tie](declarations/resolvethreshold-zero-tie.md) | 1444 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `structure` | [RawThresholdRequest](declarations/rawthresholdrequest.md) | 1451 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [thresholdResult](declarations/thresholdresult.md) | 1460 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [thresholdResult_rejects_negative_coverage](declarations/thresholdresult-rejects-negative-coverage.md) | 1473 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [thresholdResult_rejects_large_coverage](declarations/thresholdresult-rejects-large-coverage.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `inductive` | [ForeignTiePolicy](declarations/foreigntiepolicy.md) | 1485 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `structure` | [ForeignThresholdRequest](declarations/foreignthresholdrequest.md) | 1491 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [foreignThresholdResult](declarations/foreignthresholdresult.md) | 1501 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [foreignThresholdResult_nonfinite_scalar](declarations/foreignthresholdresult-nonfinite-scalar.md) | 1532 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [foreignThresholdResult_unsupported_tie](declarations/foreignthresholdresult-unsupported-tie.md) | 1539 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [resolveRasterBit](declarations/resolverasterbit.md) | 1548 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [resolveRasterBit_owner_tie](declarations/resolverasterbit-owner-tie.md) | 1555 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [resolveRasterBit_without_owner](declarations/resolverasterbit-without-owner.md) | 1561 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `structure` | [RasterCellRequest](declarations/rastercellrequest.md) | 1568 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `def` | [rasterizeCell](declarations/rasterizecell.md) | 1580 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [rasterizeCell_owner_tie](declarations/rasterizecell-owner-tie.md) | 1585 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `def` | [rasterizeRegion](declarations/rasterizeregion.md) | 1596 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [rasterizeRegion_at](declarations/rasterizeregion-at.md) | 1600 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `abbrev` | [RegionCombination](declarations/regioncombination.md) | 1609 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `def` | [combineRegionPredicates](declarations/combineregionpredicates.md) | 1612 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `def` | [combineRegionSequence](declarations/combineregionsequence.md) | 1623 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `structure` | [PreparedCarrierGeometry](declarations/preparedcarriergeometry.md) | 1631 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `def` | [PreparedCarrierGeometry.ownerSelection](declarations/preparedcarriergeometry-ownerselection.md) | 1650 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [PreparedCarrierGeometry.ownership_coherent](declarations/preparedcarriergeometry-ownership-coherent.md) | 1658 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `def` | [PreparedCarrierGeometry.combinedRegion](declarations/preparedcarriergeometry-combinedregion.md) | 1666 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [PreparedCarrierGeometry.cellRequest](declarations/preparedcarriergeometry-cellrequest.md) | 1672 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `structure` | [CarrierGeometryResult](declarations/carriergeometryresult.md) | 1691 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [rasterizeCarrierGeometryDetailedSpec](declarations/rasterizecarriergeometrydetailedspec.md) | 1703 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `def` | [rasterizeCarrierGeometrySpec](declarations/rasterizecarriergeometryspec.md) | 1718 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [rasterizeCarrierGeometrySpec_at](declarations/rasterizecarriergeometryspec-at.md) | 1722 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [carrierGeometry_combines_before_rasterization](declarations/carriergeometry-combines-before-rasterization.md) | 1730 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [rasterizeCarrierGeometry_operationOrder](declarations/rasterizecarriergeometry-operationorder.md) | 1735 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [rasterizeCarrierGeometry_operationOrderLiteral](declarations/rasterizecarriergeometry-operationorderliteral.md) | 1741 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [rasterizeCarrierGeometry_ownerSelection](declarations/rasterizecarriergeometry-ownerselection.md) | 1747 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [rasterizeCarrierGeometry_ownership](declarations/rasterizecarriergeometry-ownership.md) | 1753 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [rasterizeCarrierGeometry_ownerSelection_from_ownership](declarations/rasterizecarriergeometry-ownerselection-from-ownership.md) | 1761 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `structure` | [ContinuousRegionGridInput](declarations/continuousregiongridinput.md) | 1774 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `def` | [prepareContinuousRegionGrid](declarations/preparecontinuousregiongrid.md) | 1793 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [prepareContinuousRegionGrid_region](declarations/preparecontinuousregiongrid-region.md) | 1811 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [prepareContinuousRegionGrid_ownership](declarations/preparecontinuousregiongrid-ownership.md) | 1818 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [prepareContinuousRegionGrid_ownerSelection](declarations/preparecontinuousregiongrid-ownerselection.md) | 1823 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `structure` | [RawCarrierGeometry](declarations/rawcarriergeometry.md) | 1835 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `inductive` | [ForeignSetOperationOrder](declarations/foreignsetoperationorder.md) | 1849 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `def` | [checkForeignSetOperationOrder](declarations/checkforeignsetoperationorder.md) | 1855 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `structure` | [ForeignCarrierGeometryRequest](declarations/foreigncarriergeometryrequest.md) | 1862 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `structure` | [GeometryPreparationRelation](declarations/geometrypreparationrelation.md) | 1870 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `def` | [prepareCarrierGeometryResult](declarations/preparecarriergeometryresult.md) | 1874 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `def` | [rasterizeCarrierGeometryResult](declarations/rasterizecarriergeometryresult.md) | 1927 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `def` | [foreignCarrierGeometryResult](declarations/foreigncarriergeometryresult.md) | 1932 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [foreignCarrierGeometryResult_rejects_order](declarations/foreigncarriergeometryresult-rejects-order.md) | 1939 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [prepareCarrierGeometryResult_zero_samples](declarations/preparecarriergeometryresult-zero-samples.md) | 1945 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [prepareCarrierGeometryResult_negative_threshold](declarations/preparecarriergeometryresult-negative-threshold.md) | 1950 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `def` | [weightedBitEvaluation](declarations/weightedbitevaluation.md) | 1957 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `structure` | [NormalizableWeights](declarations/normalizableweights.md) | 1964 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [normalizedWeight](declarations/normalizedweight.md) | 1970 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [normalizedWeight_nonnegative](declarations/normalizedweight-nonnegative.md) | 1974 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [normalizedWeight_sum](declarations/normalizedweight-sum.md) | 1980 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `def` | [normalizedWeightedEvaluation](declarations/normalizedweightedevaluation.md) | 1987 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `def` | [normalizedBitProjection](declarations/normalizedbitprojection.md) | 1992 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `theorem` | [normalizedBitProjection_all_true](declarations/normalizedbitprojection-all-true.md) | 1997 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `theorem` | [normalizedWeightedEvaluation_congr_support](declarations/normalizedweightedevaluation-congr-support.md) | 2004 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `structure` | [NormalizationPolicy](declarations/normalizationpolicy.md) | 2018 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `structure` | [RawFiniteWeights](declarations/rawfiniteweights.md) | 2023 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `def` | [checkFiniteWeights](declarations/checkfiniteweights.md) | 2027 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `def` | [finiteWeightsResult](declarations/finiteweightsresult.md) | 2042 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `structure` | [ForeignFiniteWeights](declarations/foreignfiniteweights.md) | 2047 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `def` | [ForeignRational.rationalValue](declarations/foreignrational-rationalvalue.md) | 2052 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `def` | [checkForeignFiniteWeightEntries](declarations/checkforeignfiniteweightentries.md) | 2059 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `structure` | [ForeignFiniteWeightsObservation](declarations/foreignfiniteweightsobservation.md) | 2073 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `def` | [foreignFiniteWeightsObservedResult](declarations/foreignfiniteweightsobservedresult.md) | 2080 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `def` | [foreignFiniteWeightsResult](declarations/foreignfiniteweightsresult.md) | 2103 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `theorem` | [foreignFiniteWeightsObservedResult_empty](declarations/foreignfiniteweightsobservedresult-empty.md) | 2110 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `theorem` | [foreignFiniteWeightsObservedResult_nonfinite_total](declarations/foreignfiniteweightsobservedresult-nonfinite-total.md) | 2117 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `inductive` | [ForeignBitValue](declarations/foreignbitvalue.md) | 2128 | `BLOCKED_NATIVE_ADMISSION` |
| 243 | `def` | [checkForeignBitValue](declarations/checkforeignbitvalue.md) | 2137 | `BLOCKED_NATIVE_ADMISSION` |
| 244 | `theorem` | [checkForeignBitValue_invalid](declarations/checkforeignbitvalue-invalid.md) | 2144 | `BLOCKED_NATIVE_ADMISSION` |
| 245 | `theorem` | [checkForeignBitValue_nonfinite](declarations/checkforeignbitvalue-nonfinite.md) | 2148 | `BLOCKED_NATIVE_ADMISSION` |
| 246 | `theorem` | [checkFiniteWeights_rejects_negative](declarations/checkfiniteweights-rejects-negative.md) | 2152 | `BLOCKED_NATIVE_ADMISSION` |
| 247 | `theorem` | [checkFiniteWeights_rejects_tolerance](declarations/checkfiniteweights-rejects-tolerance.md) | 2158 | `BLOCKED_NATIVE_ADMISSION` |
| 248 | `theorem` | [checkFiniteWeights_rejects_equal_tolerance](declarations/checkfiniteweights-rejects-equal-tolerance.md) | 2166 | `BLOCKED_NATIVE_ADMISSION` |
| 249 | `theorem` | [finiteWeightsResult_sum_of_success](declarations/finiteweightsresult-sum-of-success.md) | 2175 | `BLOCKED_NATIVE_ADMISSION` |
| 250 | `inductive` | [RoundingScalarSign](declarations/roundingscalarsign.md) | 2193 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f18014623d122546ade95657266465dedf95bfc012b00696d8507a7782b74300 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
