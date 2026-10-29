# Mathematical source candidates

The original 63 Lean source candidates are organized by mathematical subject and object. Exact inherited copies are coalesced; all original source and evidence variants are retained. The project umbrella and existing native-verification profiles are unchanged. These candidates have not been elaborated, axiom-audited or admitted as checked mathematics.

Only module import references changed when paths moved. Statements, hypotheses, proof text, compatibility declaration names, attribution and source comments remain unchanged. This textual comparison is not a Lean preservation receipt.

The supplied materials target Lean 4.33.0 and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Their compiler reports do not establish successful verification. Definitions of goals and certificate assumptions remain obligations; they are not supplied proofs of arithmetic energy bounds, Type-II estimates, analytic continuation or RH.

Five additional taxonomy and classification candidates bring the current intake to 68 sources. Their logical code is unchanged from the supplied reference bundle; license/status comments and the evidence-reference path were updated. Native compilation and axiom auditing remain unrun.

## Original source inventory

| Subject / object | Source | Rights | Native status |
|---|---|---|---|
| Algebra/Ring | [FourTermDecomposition](../../../../GRWTSK/CommutativeAlgebra/TruncatedConvolutionIdentity.lean) | MIT notice retained | Not run |
| Analysis/Asymptotics | [DyadicNormBudget](../../../../GRWTSK/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicNormBudget.lean) | MIT; ownership confirmed | Not run |
| Analysis/Asymptotics | [LogarithmicGrowth](../../../../GRWTSK/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowth.lean) | MIT; ownership confirmed | Not run |
| Analysis/Asymptotics | [SquareRootResidualIteration](../../../../GRWTSK/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean) | MIT; ownership confirmed | Not run |
| Analysis/Asymptotics | [SublinearDyadic](../../../../GRWTSK/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SublinearDyadic.lean) | MIT; ownership confirmed | Not run |
| Analysis/Complex | [AnalyticLinearODE](../../../../GRWTSK/FunctionsOfAComplexVariable/Variants.lean) | MIT notice retained | Not run |
| Analysis/FiniteSum | [DyadicVariance](../../../../GRWTSK/RealFunctions/DyadicVariance.lean) | MIT notice retained | Not run |
| Analysis/FiniteSum | [TentReadout](../../../../GRWTSK/RealFunctions/TentReadout.lean) | MIT notice retained | Not run |
| Analysis/FiniteSum | [ThresholdEnergy](../../../../GRWTSK/RealFunctions/ThresholdEnergy.lean) | MIT; ownership confirmed | Not run |
| Analysis/FiniteSum | [WeightedCellRefinement](../../../../GRWTSK/RealFunctions/WeightedCellRefinement.lean) | MIT notice retained | Not run |
| Analysis/Fourier | [PrimePhaseLargeValueAdapter](../../../../GRWTSK/HarmonicAnalysisOnEuclideanSpaces/PrimePhaseLargeValueAdapter.lean) | MIT; ownership confirmed | Not run |
| Analysis/GreenKernel | [TailAugmentation](../../../../GRWTSK/MeasureAndIntegration/TailAugmentation.lean) | MIT notice retained | Not run |
| Analysis/GreenKernel | [UnitInterval](../../../../GRWTSK/ProbabilityTheoryAndStochasticProcesses/UnitInterval.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [AdaptiveResidualBudget](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/AdaptiveResidualBudget.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [CenteredCubicMoment](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/CenteredCubicMoment.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [ResidualEnclosure](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [ResidualGrowthComparison](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/ResidualGrowthComparison.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [SquaredNormBudget](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/SquaredNormBudget.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [SquaredNormErrorBounds](../../../../GRWTSK/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SquaredNormErrorBounds.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [SquaredSumBounds](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/SquaredSumBounds.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [TriangularBlock](../../../../GRWTSK/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TriangularBlock.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [TwoHeightEnclosures](../../../../GRWTSK/RealFunctions/InequalitiesInRealAnalysis/TwoHeightEnclosures.lean) | MIT notice retained | Not run |
| Analysis/InnerProductSpace | [HankelGramBounds](../../../../GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HankelGramBounds.lean) | MIT; ownership confirmed | Not run |
| Analysis/InnerProductSpace | [SignedWindowRootBounds](../../../../GRWTSK/MeasureAndIntegration/SignedWindowRootBounds.lean) | MIT; ownership confirmed | Not run |
| Analysis/InnerProductSpace | [VariationalResidual](../../../../GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/VariationalResidual.lean) | MIT notice retained | Not run |
| Analysis/Integration | [AffineWeightedTransport](../../../../GRWTSK/MeasureAndIntegration/AffineWeightedTransport.lean) | MIT; ownership confirmed | Not run |
| Analysis/Integration | [QuadraticReadoutBound](../../../../GRWTSK/MeasureAndIntegration/QuadraticReadoutBound.lean) | MIT notice retained | Not run |
| Analysis/Integration | [QuadraticRootTransport](../../../../GRWTSK/MeasureAndIntegration/QuadraticRootTransport.lean) | MIT; ownership confirmed | Not run |
| Analysis/Integration | [UnitIntervalPrimitives](../../../../GRWTSK/MeasureAndIntegration/UnitIntervalPrimitives.lean) | MIT notice retained | Not run |
| Analysis/MellinTransform | [DyadicBounds](../../../../GRWTSK/IntegralTransformsOperationalCalculus/DyadicBounds.lean) | MIT notice retained | Not run |
| Analysis/MellinTransform | [DyadicIntegralSeries](../../../../GRWTSK/MeasureAndIntegration/DyadicIntegralSeries.lean) | MIT notice retained | Not run |
| Analysis/MellinTransform | [PositiveCoordinates](../../../../GRWTSK/MeasureAndIntegration/PositiveCoordinates.lean) | MIT notice retained | Not run |
| Analysis/NormedSpace | [IntertwiningResidual](../../../../GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/IntertwiningResidual.lean) | MIT notice retained | Not run |
| Analysis/NormedSpace | [NormTransport](../../../../GRWTSK/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormTransport.lean) | MIT; ownership confirmed | Not run |
| Analysis/NormedSpace | [SimilarityReconstruction](../../../../GRWTSK/FunctionalAnalysis/SimilarityReconstruction.lean) | MIT; ownership confirmed | Not run |
| Analysis/Resolvent | [ScreenAlgebra](../../../../GRWTSK/OperatorTheory/GeneralTheoryOfLinearOperators/ScreenAlgebra.lean) | MIT notice retained | Not run |
| Analysis/Resolvent | [ScreenBudget](../../../../GRWTSK/OperatorTheory/GeneralTheoryOfLinearOperators/ScreenBudget.lean) | MIT notice retained | Not run |
| Analysis/Series | [DyadicPartition](../../../../GRWTSK/RealFunctions/DyadicPartition.lean) | MIT notice retained | Not run |
| Analysis/Spectral | [LowMassSpecifications](../../../../GRWTSK/MeasureAndIntegration/LowMassSpecifications.lean) | MIT notice retained | Not run |
| Analysis/Spectral | [TwoHeightMoments](../../../../GRWTSK/OperatorTheory/TwoHeightMoments.lean) | MIT notice retained | Not run |
| LinearAlgebra/Matrix | [ToeplitzHankel](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankel.lean) | MIT; ownership confirmed | Not run |
| LinearAlgebra/QuadraticForm | [BinaryFormIdentities](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean) | MIT notice retained | Not run |
| LinearAlgebra/QuadraticForm | [OrderedTransport](../../../../GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedTransport.lean) | MIT; ownership confirmed | Not run |
| MeasureTheory/Integral | [Centering](../../../../GRWTSK/ProbabilityTheoryAndStochasticProcesses/Variants.lean) | MIT notice retained | Not run |
| NumberTheory/BinaryDigits | [Carry](../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/Carry.lean) | MIT; ownership confirmed | Not run |
| NumberTheory/Powers | [OctaveSeparation](../../../../GRWTSK/NumberTheory/OctaveSeparation.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [CenteredReadout](../../../../GRWTSK/MeasureAndIntegration/CenteredReadout.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [ComplexReadout](../../../../GRWTSK/MeasureAndIntegration/ComplexReadout.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [DyadicDiscrepancy](../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DyadicDiscrepancy.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [DyadicEulerIdentification](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicEulerIdentification.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [DyadicMellinConvergence](../../../../GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DyadicMellinConvergence.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [GreenEnergyFormula](../../../../GRWTSK/MeasureAndIntegration/GreenEnergyFormula.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [LatticeCellSource](../../../../GRWTSK/MeasureAndIntegration/LatticeCellSource.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [LatticeGreenReconstruction](../../../../GRWTSK/MeasureAndIntegration/LatticeGreenReconstruction.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [MellinBlockHolomorphy](../../../../GRWTSK/MeasureAndIntegration/MellinBlockHolomorphy.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [MellinReadout](../../../../GRWTSK/MeasureAndIntegration/MellinReadout.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [PrimeTailReturn](../../../../GRWTSK/MeasureAndIntegration/PrimeTailReturn.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [CompletedQuotientSource](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedQuotientSource.lean) | MIT; ownership confirmed | Not run |
| NumberTheory/Zeta | [DyadicGreenReturn](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenReturn.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [DyadicGreenSpecifications](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [GreenMellinContinuation](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/GreenMellinContinuation.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [LogDerivativeZeroExclusion](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaLogDerivativeZeroExclusion.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [PoleRemovedSource](../../../../GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRemovedSource.lean) | MIT notice retained | Not run |

## Taxonomy and classification extension

| Subject / object | Source | Native status |
|---|---|---|
| Order/Taxonomy | [Address](../../../../GRWTSK/Combinatorics/Address.lean) | Not run |
| Order/Taxonomy | [Core](../../../../GRWTSK/Combinatorics/Core.lean) | Not run |
| Logic/Classification | [Catalogue](../../../../GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Catalogue.lean) | Not run |
| Logic/Classification | [Types](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/Types.lean) | Not run |
| Logic/Classification | [Provenance](../../../../GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Provenance.lean) | Not run |

The taxonomy represents ancestry by finite natural-number paths while retaining external notation as text. Classification, actual typed values and justified bindings remain separate. The example taxonomy is illustrative, not the PMD catalogue or an official Dewey schedule.

The five candidate modules remain outside the public `GRWTSK.lean` import closure pending native admission. Classification ancestry and typed bindings do not establish theorem applicability.

## Written mathematical material

A separately retained source archive adds written arguments about endpoint grounding in the full Green metric, separated Mellin/Fourier samples, the signed periodic correction, sample-tail accounting and finite-observation error. It supplies no new Lean module; its nested baseline is an exact copy of already indexed candidates. These arguments are supplied source material, not independently certified by this intake.

| Mathematical object | Material | Formal status |
|---|---|---|
| Analysis / GreenKernel | Endpoint grounding and signed periodic correction | Formal port open |
| Analysis / Fourier | Separated samples, tail accounting and observation error | Formal port open |
| NumberTheory / VonMangoldt | Source-specific conditional return and finite data | All-scale retained-packet bound open |

The source identity is `sha256:0c4ed7f52e3b01707300e027a522983471751c7287c156b868f57044032a4134`. Exact document identities are in the intake inventory (artifact:gitblob:5768dd6443326f9137958546065006ddbe451d7b). Original prose, scripts and operational reports remain outside the mathematical library projection; no new license or publication permission is inferred.

The delivered production reports agree byte-for-byte and record finite scope through X=4096. The verification text also claims a fresh final archive replay through X=4096 with 33 tests, but its corresponding receipt is not included. The delivered replay receipts cover earlier sources through X=1024 with 32 tests. That missing receipt remains an explicit evidence obligation; none of these reports is a new local execution or Lean acceptance receipt.

## Evidence and limits

Exact source identities and intake statuses (artifact:gitblob:5768dd6443326f9137958546065006ddbe451d7b) · [Attribution and licensing](../../../../LICENSES/ArchiveCandidates-NOTICE.txt) · Mathematical source standard (artifact:gitblob:18548a1c7e77002331dd18e929aa89fadf8af9c3) · Verification requirements (artifact:gitblob:d7df3a864028a221ea3728082afc25ec28c72953).

grwtsk contributors confirms ownership of the supplied proof sources. The existing repository MIT terms apply. Human direction, formal-source contribution, assistance, ownership and mathematical origin remain distinct; original source credit, upstream mathematics and Mathlib licenses are retained.

The binary-form and squared-sum candidates retain the source’s 13 uncompiled theorem declarations. Their archived finite source calculations and Brun–Titchmarsh-based discussion do not supply a checked arithmetic adapter or all-scale endpoint-center and remainder bounds. Those obligations remain open.

Pinned native replay, source-bound declaration and axiom audits, current consumer verification, citation review and applicable rights clearance are required before stronger admission. Historical source checks, numerical diagnostics and source hashes do not supply those obligations.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90de5650a91a5fbffa105b7611513b601d8e52dff9945124fcd5f5086ec215c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean","GRWTSK/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean","GRWTSK/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean","GRWTSK/Algebra/RingTheory/FourTermDecomposition.lean","GRWTSK/Analysis/AsymptoticAnalysis/DyadicNormBudget.lean","GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean","GRWTSK/Analysis/AsymptoticAnalysis/SquareRootResidualIteration.lean","GRWTSK/Analysis/AsymptoticAnalysis/SublinearDyadic.lean","GRWTSK/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean","GRWTSK/Analysis/FiniteSums/DyadicVariance.lean","GRWTSK/Analysis/FiniteSums/TentReadout.lean","GRWTSK/Analysis/FiniteSums/ThresholdEnergy.lean","GRWTSK/Analysis/FiniteSums/WeightedCellRefinement.lean","GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean","GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean","GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean","GRWTSK/Analysis/GreenKernel/TailAugmentation.lean","GRWTSK/Analysis/GreenKernel/UnitInterval.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean","GRWTSK/Analysis/Inequalities/AdaptiveResidualBudget.lean","GRWTSK/Analysis/Inequalities/CenteredCubicMoment.lean","GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean","GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean","GRWTSK/Analysis/Inequalities/SquaredNormBudget.lean","GRWTSK/Analysis/Inequalities/SquaredNormErrorBounds.lean","GRWTSK/Analysis/Inequalities/SquaredSumBounds.lean","GRWTSK/Analysis/Inequalities/TriangularBlock.lean","GRWTSK/Analysis/Inequalities/TwoHeightEnclosures.lean","GRWTSK/Analysis/InnerProductSpace/HankelGramBounds.lean","GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean","GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean","GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean","GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicIntegralSeries.lean","GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean","GRWTSK/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean","GRWTSK/Analysis/OperatorTheory/SpectralTheory/LowMassSpecifications.lean","GRWTSK/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean","GRWTSK/Analysis/RealAnalysis/Integration/AffineWeightedTransport.lean","GRWTSK/Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean","GRWTSK/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean","GRWTSK/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean","GRWTSK/Analysis/Resolvent/ScreenAlgebra.lean","GRWTSK/Analysis/Resolvent/ScreenBudget.lean","GRWTSK/Analysis/Series/DyadicPartition.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core.lean","GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue.lean","GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Provenance.lean","GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types.lean","GRWTSK/NumberTheory/BinaryDigits/Carry.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/CenteredReadout.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/GreenEnergyFormula.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeGreenReconstruction.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinBlockHolomorphy.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean","GRWTSK/NumberTheory/Powers/OctaveSeparation.lean","GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean","GRWTSK/NumberTheory/Zeta/DyadicGreenReturn.lean","GRWTSK/NumberTheory/Zeta/DyadicGreenSpecifications.lean","GRWTSK/NumberTheory/Zeta/GreenMellinContinuation.lean","GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean","GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
