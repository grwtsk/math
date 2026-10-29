# Verification target: GRWTSK.Logic.ProofChecking.Checks.FullAnalyticArithmeticKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d87dac161e31ecfd0977f214d20e96043c5ba2c",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ProofChecking/Checks/FullAnalyticArithmeticKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FullAnalyticArithmeticKernelHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FullAnalyticArithmeticKernelHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d87dac161e31ecfd0977f214d20e96043c5ba2c`.

Source path: `GRWTSK/Logic/ProofChecking/Checks/FullAnalyticArithmeticKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ProofChecking/Checks/FullAnalyticArithmeticKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK`](../../../../../../_support/GRWTSK.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.BigOperators.OrderedSquare`](../../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OrderedSquare.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Algebra.BigOperators.QuadraticCounterexample`](../../../../../../GeneralAlgebraicSystems/AlgebraicStructures/QuadraticCounterexample.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct`](../../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SquarefreeEulerProduct.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProduct`](../../../../../../GroupTheoryAndGeneralizations/OrderedProduct.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProductGauge`](../../../../../../GroupTheoryAndGeneralizations/OrderedProductGauge.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DisjointPrimeChainBoundsHistoricalSourceEdition2.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialEnergyObstructionHistoricalSourceEdition2.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/FinitePrimeChainEnergyBounds.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedWidthEnergyBoundEquivalence.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/MassWeightedRecurrenceHistoricalSourceEdition2.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PolynomialClosureHistoricalSourceEdition2.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PolynomialErrorBound.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PrimeMassPotentialBoundsHistoricalSourceEdition2.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeSubsetPotentialBounds`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PrimeSubsetPotentialBoundsHistoricalSourceEdition2.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../../../MeasureAndIntegration/PrimeTranslationBoundContracts.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.QuadraticKernelEnergyEquivalence`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/QuadraticKernelEnergyEquivalence.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SelectedPrimeChainBounds`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SelectedPrimeChainBounds.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SignedEnergyDecompositionHistoricalSourceEdition2.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives`](../../../../../../RealFunctions/LogarithmicResponseDerivatives.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.Analysis.CausalTranslation.ExponentialResponse`](../../../../../../RealFunctions/ExponentialResponse.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.AngularFrequencyParseval`](../../../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteTranslationMultipliers.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.IntegerSeries`](../../../../../../GeneralTopology/IntegerSeries.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusQuadraticReturn.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.Parseval`](../../../../../../MeasureAndIntegration/Parseval.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../../../MeasureAndIntegration/PrimePhaseMultiplierBounds.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhasePacketCertificates`](../../../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.QuadraticKernelTruncation`](../../../../../../MeasureAndIntegration/QuadraticKernelTruncation.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.WindowCertificates`](../../../../../../MeasureAndIntegration/WindowCertificates.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ExponentialDiagonal`](../../../../../../RealFunctions/InequalitiesInRealAnalysis/ExponentialDiagonal.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.LogarithmicCharacterGramBounds`](../../../../../../MeasureAndIntegration/LogarithmicCharacterGramBounds.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../../../GeneralTopology/MoebiusResponseGramExpansion.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence`](../../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds`](../../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedSynthesisEnergyBoundsHistoricalSourceEdition2.lean/index.md) — import line 38; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates`](../../../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds`](../../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedSchurBounds.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.Analysis.IntervalReflection`](../../../../../../MeasureAndIntegration/IntervalReflection.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.Analytic`](../../../../../../MeasureAndIntegration/Analytic.lean/index.md) — import line 43; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusResponseFormula.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy`](../../../../../../MeasureAndIntegration/PolynomialEnergy.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyHolomorphyHistoricalSourceEdition2.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Analysis.NormedSpace.QuadraticError`](../../../../../../FunctionalAnalysis/QuadraticError.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.Analysis.Polarization`](../../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/AnalysisPolarization.lean/index.md) — import line 48; pinned internal source present.
- [`GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum`](../../../../../../MeasureAndIntegration/ExponentialResponseSquareSum.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.EvenSeparation`](../../../../../../MeasureAndIntegration/EvenSeparation.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation`](../../../../../../MeasureAndIntegration/ExponentialMomentVariation.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.Separation`](../../../../../../MeasureAndIntegration/Separation.lean/index.md) — import line 52; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser`](../../../../../../Combinatorics/GraphTheory/UnitDistanceGraphMoser.lean/index.md) — import line 53; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserCoordinates`](../../../../../../Combinatorics/GraphTheory/MoserCoordinates.lean/index.md) — import line 54; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource`](../../../../../../Combinatorics/GraphTheory/MoserSource.lean/index.md) — import line 55; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy`](../../../../../../Combinatorics/QuotaDiscrepancy.lean/index.md) — import line 56; pinned internal source present.
- [`GRWTSK.Data.Sampling.Descriptions`](../../../../../../HarmonicAnalysisOnEuclideanSpaces/Descriptions.lean/index.md) — import line 57; pinned internal source present.
- [`GRWTSK.DynamicalSystems.Sequences.ApproximationReturn`](../../../../../../DynamicalSystemsAndErgodicTheory/ApproximationReturn.lean/index.md) — import line 58; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJ`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommonJHistoricalSourceEdition2.lean/index.md) — import line 59; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJCounterexamples`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommonJCounterexamplesHistoricalSourceEdition2.lean/index.md) — import line 60; pinned internal source present.
- [`GRWTSK.LinearAlgebra.JacobiTransfer`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/index.md) — import line 61; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedTransfer`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedTransfer.lean/index.md) — import line 62; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.SampledPotential`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotential.lean/index.md) — import line 63; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.Sampling`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Sampling.lean/index.md) — import line 64; pinned internal source present.
- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/index.md) — import line 65; pinned internal source present.
- [`GRWTSK.Analysis.Complex.CriticalReflection`](../../../../../../FunctionsOfAComplexVariable/CriticalReflectionHistoricalSourceEdition2.lean/index.md) — import line 66; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ReflectionCounterexamples`](../../../../../../FunctionsOfAComplexVariable/ReflectionCounterexamplesHistoricalSourceEdition2.lean/index.md) — import line 67; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.HermitianCounterexamples`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianCounterexamplesHistoricalSourceEdition2.lean/index.md) — import line 68; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroExclusions.lean/index.md) — import line 69; pinned internal source present.
- [`GRWTSK.Logic.FiniteCoverage`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteCoverageHistoricalSourceEdition2.lean/index.md) — import line 70; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.PrefixCoverage`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/PrefixCoverage.lean/index.md) — import line 71; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.DirichletResponseStatus`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirichletResponseStatus.lean/index.md) — import line 72; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.EnergyInterfaceEquivalence`](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EnergyInterfaceEquivalence.lean/index.md) — import line 73; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusPrimeShellStatus`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusPrimeShellStatus.lean/index.md) — import line 74; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MoebiusResponseStatus.lean/index.md) — import line 75; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.ProvenanceCertificates`](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ProvenanceCertificatesHistoricalSourceEdition2.lean/index.md) — import line 76; pinned internal source present.
- [`GRWTSK.Logic.ProofChecking.Checks.AnalyticArithmeticKernel`](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AnalyticArithmeticKernelHistoricalSourceEdition2.lean/index.md) — import line 77; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds`](../../../../../../MeasureAndIntegration/CausalRestrictionBounds.lean/index.md) — import line 78; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FinitePrimeTranslationEnergyHistoricalSourceEdition2.lean/index.md) — import line 79; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope`](../../../../../../MeasureAndIntegration/FixedWidthEnergyTelescope.lean/index.md) — import line 80; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../../../../MeasureAndIntegration/MoebiusCumulativeEnergyHistoricalSourceEdition2.lean/index.md) — import line 81; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini`](../../../../../../MeasureAndIntegration/QuadraticFourierFubini.lean/index.md) — import line 82; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization`](../../../../../../NumberTheory/FrequencyRealization.lean/index.md) — import line 83; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../../../NumberTheory/ScheduledDenominators.lean/index.md) — import line 84; pinned internal source present.
- [`GRWTSK.NumberTheory.FirstPrime`](../../../../../../NumberTheory/FirstPrime.lean/index.md) — import line 85; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CompositeActivationExamples`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CompositeActivationExamplesHistoricalSourceEdition2.lean/index.md) — import line 86; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../../../MeasureAndIntegration/DiagonalEnergyBound.lean/index.md) — import line 87; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirichletLaplaceIdentity.lean/index.md) — import line 88; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicEnergy`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/index.md) — import line 89; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../../../../MeasureAndIntegration/FiniteLaplaceTransform.lean/index.md) — import line 90; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/index.md) — import line 91; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteResponseSum`](../../../../../../MeasureAndIntegration/FiniteResponseSum.lean/index.md) — import line 92; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteTranslationProduct.lean/index.md) — import line 93; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.GramDiagonalBound`](../../../../../../MeasureAndIntegration/GramDiagonalBound.lean/index.md) — import line 94; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy`](../../../../../../MeasureAndIntegration/LaplaceHolomorphy.lean/index.md) — import line 95; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../../../../MeasureAndIntegration/LaplaceTransform.lean/index.md) — import line 96; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/LogarithmicResponse.lean/index.md) — import line 97; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean/index.md) — import line 98; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusEulerProduct.lean/index.md) — import line 99; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation`](../../../../../../MeasureAndIntegration/NegativePrimeCorrelation.lean/index.md) — import line 100; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy`](../../../../../../MeasureAndIntegration/PrimeBlockEnergy.lean/index.md) — import line 101; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeFactorFilters.lean/index.md) — import line 102; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy`](../../../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/index.md) — import line 103; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusPrimeFilterGrowth.lean/index.md) — import line 104; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace`](../../../../../../MeasureAndIntegration/MoebiusPrimeFilterLaplace.lean/index.md) — import line 105; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePrefixGrowth.lean/index.md) — import line 106; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeProductPrefixEnergy`](../../../../../../MeasureAndIntegration/PrimeProductPrefixEnergyHistoricalSourceEdition2.lean/index.md) — import line 107; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeShellDecompositionHistoricalSourceEdition2.lean/index.md) — import line 108; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../../../../GeneralTopology/PrimitiveRegularity.lean/index.md) — import line 109; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.QuadraticTransformBoundConversion`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/QuadraticTransformBoundConversionHistoricalSourceEdition2.lean/index.md) — import line 110; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusResponseBudgetIdentification.lean/index.md) — import line 111; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SubsetPotentialObstruction`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SubsetPotentialObstructionHistoricalSourceEdition2.lean/index.md) — import line 112; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.ReciprocalMass`](../../../../../../MeasureAndIntegration/ReciprocalMass.lean/index.md) — import line 113; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeIntervalResponseEnergyGrowth`](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/PrimeIntervalResponseEnergyGrowthHistoricalSourceEdition2.lean/index.md) — import line 114; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth`](../../../../../../MeasureAndIntegration/PrimeShellEnergyGrowth.lean/index.md) — import line 115; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeBlockCost`](../../../../../../NumberTheory/MultiplicativeNumberTheory/ReciprocalPrimeBlockCost.lean/index.md) — import line 116; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds`](../../../../../../NumberTheory/MultiplicativeNumberTheory/ReciprocalPrimeIntervalBounds.lean/index.md) — import line 117; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound`](../../../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/index.md) — import line 118; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBoundsHistoricalSourceEdition2.lean/index.md) — import line 119; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalHolomorphyZeroSymmetryHistoricalSourceEdition2.lean/index.md) — import line 120; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/index.md) — import line 121; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaRiemann.lean/index.md) — import line 122; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalLineDefect.lean/index.md) — import line 123; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DefectCriterion.lean/index.md) — import line 124; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Hypothesis.lean/index.md) — import line 125; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LaplaceCriterion.lean/index.md) — import line 126; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyCriterion.lean/index.md) — import line 127; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Regularized`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Regularized.lean/index.md) — import line 128; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroDefinitionsHistoricalSourceEdition2.lean/index.md) — import line 129; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 130; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../../../../Combinatorics/AdditiveNaturalRank.lean/index.md) — import line 131; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=158785feba878a48232ac710640dd2fda9731cc79f22390a6a881b72227970b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/ProofChecking/Checks/FullAnalyticArithmeticKernel.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/FullAnalyticArithmeticKernel__SourceOccurrence90527bf2be1f598e625508cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
