# Verification target: GRWTSK

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bce035e8df193e07b2f41d755fabee6073e38d6",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../_support/GRWTSK.lean/index.md) · [Full source](../../../../_support/GRWTSK.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bce035e8df193e07b2f41d755fabee6073e38d6`.

Source path: `GRWTSK.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/_support/GRWTSK.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.BigOperators.OrderedSquare`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/OrderedSquare.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Algebra.BigOperators.QuadraticCounterexample`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/QuadraticCounterexample.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProduct`](../../../../GroupTheoryAndGeneralizations/OrderedProduct.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProductGauge`](../../../../GroupTheoryAndGeneralizations/OrderedProductGauge.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.ConjugateInterpolation`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/ConjugateInterpolation.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.SignedRootTrace`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialSignedRootTrace.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PolynomialErrorBound.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FiniteConvolutionRecurrence`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/FiniteConvolutionRecurrenceHistoricalSourceEdition2.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PolynomialClosureHistoricalSourceEdition2.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum`](../../../../MeasureAndIntegration/FinitePowerSum.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy`](../../../../MeasureAndIntegration/PolynomialEnergy.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PolynomialSubexponential.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../MeasureAndIntegration/WeightedIntegralEnergy.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedIntegralGrowth.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../../MeasureAndIntegration/SignedIntegralSectorBounds.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactPolynomialDerivatives`](../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.SquaredInverseBump`](../../../../GeneralTopology/SquaredInverseBump.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileNormalization`](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileDerivativeEnergy`](../../../../MeasureAndIntegration/CompactProfileDerivativeEnergy.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.Analysis.IntervalIntegral.Reflection`](../../../../MeasureAndIntegration/Reflection.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrelationPairing.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.Analysis.WeakDerivatives.PolynomialBump`](../../../../MeasureAndIntegration/PolynomialBump.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../../MeasureAndIntegration/PolynomialBumpRegularity.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization`](../../../../MeasureAndIntegration/TestFunctionsPolynomialBumpNormalization.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.PolynomialBumpNormalization`](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.PolynomialEnergyRatio`](../../../../RealFunctions/InequalitiesInRealAnalysis/PolynomialEnergyRatio.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.PolynomialBumpDerivativeEnergy`](../../../../MeasureAndIntegration/PolynomialBumpDerivativeEnergy.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationDerivativeEnergy`](../../../../MeasureAndIntegration/AutocorrelationDerivativeEnergy.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative`](../../../../MeasureAndIntegration/AutocorrelationSecondDerivative.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpSecondEnergy`](../../../../MeasureAndIntegration/PolynomialBumpSecondEnergy.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpHigherDerivatives`](../../../../MeasureAndIntegration/PolynomialBumpHigherDerivatives.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization`](../../../../MeasureAndIntegration/CompactResidualNormalization.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../../MeasureAndIntegration/DilationGram.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileCorrelation`](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactPolynomialMoments`](../../../../MeasureAndIntegration/CompactPolynomialMoments.lean/index.md) — import line 38; pinned internal source present.
- [`GRWTSK.Analysis.Integration.ExponentialVolterraL2`](../../../../MeasureAndIntegration/IntegrationExponentialVolterraL2.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CompactProfilePairingIntegrability.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../../MeasureAndIntegration/CompactProfileDilation.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.Analysis.DigammaSeries`](../../../../MeasureAndIntegration/AnalysisDigammaSeries.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PolynomialBumpEstimates`](../../../../MeasureAndIntegration/PolynomialBumpEstimates.lean/index.md) — import line 43; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.ExponentialMoments`](../../../../MeasureAndIntegration/ExponentialMoments.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteIntegrationByParts.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.NumberTheory.ExplicitFormula.CorrelationPairing`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrelationPairing.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.LogarithmicDomain`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/LogarithmicDomain.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.DigammaMultiplier`](../../../../MeasureAndIntegration/DigammaMultiplier.lean/index.md) — import line 48; pinned internal source present.
- [`GRWTSK.Analysis.ReciprocalKernel`](../../../../MeasureAndIntegration/AnalysisReciprocalKernel.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.DigammaFourierBound`](../../../../RealFunctions/DigammaFourierBound.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula`](../../../../MeasureAndIntegration/CompactProfileExplicitFormula.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/index.md) — import line 52; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples`](../../../../RealFunctions/CompactProfileBoundaryCounterexamples.lean/index.md) — import line 53; pinned internal source present.
- [`GRWTSK.Analysis.Complex.VerticalReflection`](../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/index.md) — import line 54; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.WeakSecondDerivativeUniqueness`](../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/index.md) — import line 55; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../../RealFunctions/PartialMapComposition.lean/index.md) — import line 56; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.IntegerSeries`](../../../../GeneralTopology/IntegerSeries.lean/index.md) — import line 57; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.Parseval`](../../../../MeasureAndIntegration/Parseval.lean/index.md) — import line 58; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.WindowCertificates`](../../../../MeasureAndIntegration/WindowCertificates.lean/index.md) — import line 59; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DiscreteEnergyBalance.lean/index.md) — import line 60; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ExponentialDiagonal`](../../../../RealFunctions/InequalitiesInRealAnalysis/ExponentialDiagonal.lean/index.md) — import line 61; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds`](../../../../RealFunctions/InequalitiesInRealAnalysis/InequalitiesFiniteShiftedDerivativeBounds.lean/index.md) — import line 62; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../../MeasureAndIntegration/CausalResponseGram.lean/index.md) — import line 63; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation`](../../../../MeasureAndIntegration/DilationResponseSeparation.lean/index.md) — import line 64; pinned internal source present.
- [`GRWTSK.Analysis.IntervalReflection`](../../../../MeasureAndIntegration/IntervalReflection.lean/index.md) — import line 65; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.Analytic`](../../../../MeasureAndIntegration/Analytic.lean/index.md) — import line 66; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.CausalExponentialResponse`](../../../../MeasureAndIntegration/CausalExponentialResponse.lean/index.md) — import line 67; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../../MeasureAndIntegration/LaplaceTransform.lean/index.md) — import line 68; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../../GeneralTopology/PrimitiveRegularity.lean/index.md) — import line 69; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirichletLaplaceIdentity.lean/index.md) — import line 70; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteResponseSum`](../../../../MeasureAndIntegration/FiniteResponseSum.lean/index.md) — import line 71; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.GramDiagonalBound`](../../../../MeasureAndIntegration/GramDiagonalBound.lean/index.md) — import line 72; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy`](../../../../MeasureAndIntegration/LaplaceHolomorphy.lean/index.md) — import line 73; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Regularized`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Regularized.lean/index.md) — import line 74; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroDefinitionsHistoricalSourceEdition2.lean/index.md) — import line 75; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 76; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LaplaceCriterion.lean/index.md) — import line 77; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyCriterion.lean/index.md) — import line 78; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound`](../../../../MeasureAndIntegration/UnsignedEnergyBound.lean/index.md) — import line 79; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissaHistoricalSourceEdition2.lean/index.md) — import line 80; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold`](../../../../GeneralTopology/ExponentialThreshold.lean/index.md) — import line 81; pinned internal source present.
- [`GRWTSK.Analysis.NormedSpace.QuadraticError`](../../../../FunctionalAnalysis/QuadraticError.lean/index.md) — import line 82; pinned internal source present.
- [`GRWTSK.Analysis.Polarization`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/AnalysisPolarization.lean/index.md) — import line 83; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.Separation`](../../../../MeasureAndIntegration/Separation.lean/index.md) — import line 84; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.EvenSeparation`](../../../../MeasureAndIntegration/EvenSeparation.lean/index.md) — import line 85; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation`](../../../../MeasureAndIntegration/ExponentialMomentVariation.lean/index.md) — import line 86; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource`](../../../../Combinatorics/GraphTheory/MoserSource.lean/index.md) — import line 87; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser`](../../../../Combinatorics/GraphTheory/UnitDistanceGraphMoser.lean/index.md) — import line 88; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserCoordinates`](../../../../Combinatorics/GraphTheory/MoserCoordinates.lean/index.md) — import line 89; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../../MathematicalLogicAndFoundations/GeneralLogic/RelationSandwich.lean/index.md) — import line 90; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy`](../../../../Combinatorics/QuotaDiscrepancy.lean/index.md) — import line 91; pinned internal source present.
- [`GRWTSK.Data.Sampling.Descriptions`](../../../../HarmonicAnalysisOnEuclideanSpaces/Descriptions.lean/index.md) — import line 92; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../NumberTheory/ScheduledDenominators.lean/index.md) — import line 93; pinned internal source present.
- [`GRWTSK.DynamicalSystems.Sequences.ApproximationReturn`](../../../../DynamicalSystemsAndErgodicTheory/ApproximationReturn.lean/index.md) — import line 94; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md) — import line 95; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofCoverageHistoricalSourceEdition2.lean/index.md) — import line 96; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ExactMoment`](../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactMoment.lean/index.md) — import line 97; pinned internal source present.
- [`GRWTSK.Combinatorics.CodingTheory.Lossless`](../../../../Combinatorics/Lossless.lean/index.md) — import line 98; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.RootHeatState`](../../../../Combinatorics/GraphTheory/RootHeatState.lean/index.md) — import line 99; pinned internal source present.
- [`GRWTSK.Logic.Locality.RevisionCertificates`](../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/index.md) — import line 100; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../../Combinatorics/FiniteDependencyClosureHistoricalSourceEdition2.lean/index.md) — import line 101; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/index.md) — import line 102; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../../DynamicalSystemsAndErgodicTheory/StateReinitialization.lean/index.md) — import line 103; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../../MathematicalLogicAndFoundations/GeneralLogic/BatchVerificationHistoricalSourceEdition2.lean/index.md) — import line 104; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleSystems`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleSystemsHistoricalSourceEdition2.lean/index.md) — import line 105; pinned internal source present.
- [`GRWTSK.Logic.Inference.RuleSoundness`](../../../../MathematicalLogicAndFoundations/GeneralLogic/SoundInterpretedRulesAndCertificateCheckersHistoricalSourceEdition2.lean/index.md) — import line 106; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ArtifactDerivation`](../../../../MathematicalLogicAndFoundations/GeneralLogic/ArtifactDerivationHistoricalSourceEdition2.lean/index.md) — import line 107; pinned internal source present.
- [`GRWTSK.Logic.ProofChecking.RepositoryConformance`](../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RepositoryConformance.lean/index.md) — import line 108; pinned internal source present.
- [`GRWTSK.Logic.Locality.FiniteRuleTransport`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleTransport.lean/index.md) — import line 109; pinned internal source present.
- [`GRWTSK.Logic.Locality.AnchoredCertificates`](../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/index.md) — import line 110; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/index.md) — import line 111; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization`](../../../../DynamicalSystemsAndErgodicTheory/AnchoredReinitialization.lean/index.md) — import line 112; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../../DynamicalSystemsAndErgodicTheory/RevisionReachability.lean/index.md) — import line 113; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredDependencyRevision`](../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredDependencyRevision.lean/index.md) — import line 114; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples`](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationExamples.lean/index.md) — import line 115; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationReachability`](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/index.md) — import line 116; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyExamples`](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/index.md) — import line 117; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevisionExamples`](../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionExamplesHistoricalSourceEdition2.lean/index.md) — import line 118; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples`](../../../../DynamicalSystemsAndErgodicTheory/StateReinitializationExamples.lean/index.md) — import line 119; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples`](../../../../DynamicalSystemsAndErgodicTheory/BudgetResetCounterexamples.lean/index.md) — import line 120; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.CertifiedPartialMaps`](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/index.md) — import line 121; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability`](../../../../DynamicalSystemsAndErgodicTheory/VerificationReachability.lean/index.md) — import line 122; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerificationExamples`](../../../../MathematicalLogicAndFoundations/GeneralLogic/BatchVerificationExamplesHistoricalSourceEdition2.lean/index.md) — import line 123; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachabilityExamples`](../../../../DynamicalSystemsAndErgodicTheory/VerificationReachabilityExamples.lean/index.md) — import line 124; pinned internal source present.
- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/index.md) — import line 125; pinned internal source present.
- [`GRWTSK.LinearAlgebra.AlmostMathieu`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlmostMathieu.lean/index.md) — import line 126; pinned internal source present.
- [`GRWTSK.LinearAlgebra.JacobiTransfer`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransfer.lean/index.md) — import line 127; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedTransfer`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedTransfer.lean/index.md) — import line 128; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedProductDeterminant`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrderedProductDeterminant.lean/index.md) — import line 129; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CocycleProduct`](../../../../GroupTheoryAndGeneralizations/CocycleProductHistoricalSourceEdition2.lean/index.md) — import line 130; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJ`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommonJHistoricalSourceEdition2.lean/index.md) — import line 131; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJCounterexamples`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommonJCounterexamplesHistoricalSourceEdition2.lean/index.md) — import line 132; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/index.md) — import line 133; pinned internal source present.
- [`GRWTSK.LinearAlgebra.QuadraticCertificates`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticCertificatesHistoricalSourceEdition2.lean/index.md) — import line 134; pinned internal source present.
- [`GRWTSK.LinearAlgebra.GaugeState`](../../../../GroupTheoryAndGeneralizations/GaugeState.lean/index.md) — import line 135; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.SampledPotential`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SampledPotential.lean/index.md) — import line 136; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.Sampling`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Sampling.lean/index.md) — import line 137; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Sturmian`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Sturmian.lean/index.md) — import line 138; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ModelExamples`](../../../../MathematicalLogicAndFoundations/GeneralLogic/ModelExamplesHistoricalSourceEdition2.lean/index.md) — import line 139; pinned internal source present.
- [`GRWTSK.Analysis.Complex.CriticalReflection`](../../../../FunctionsOfAComplexVariable/CriticalReflectionHistoricalSourceEdition2.lean/index.md) — import line 140; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ReflectionCounterexamples`](../../../../FunctionsOfAComplexVariable/ReflectionCounterexamplesHistoricalSourceEdition2.lean/index.md) — import line 141; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.HermitianCounterexamples`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianCounterexamplesHistoricalSourceEdition2.lean/index.md) — import line 142; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroExclusions.lean/index.md) — import line 143; pinned internal source present.
- [`GRWTSK.Logic.FiniteCoverage`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteCoverageHistoricalSourceEdition2.lean/index.md) — import line 144; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.PrefixCoverage`](../../../../MathematicalLogicAndFoundations/GeneralLogic/PrefixCoverage.lean/index.md) — import line 145; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleExamples`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamples.lean/index.md) — import line 146; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization`](../../../../NumberTheory/FrequencyRealization.lean/index.md) — import line 147; pinned internal source present.
- [`GRWTSK.NumberTheory.FirstPrime`](../../../../NumberTheory/FirstPrime.lean/index.md) — import line 148; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.LeastPrime`](../../../../NumberTheory/MultiplicativeNumberTheory/LeastPrime.lean/index.md) — import line 149; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ComparisonEnergy`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ComparisonEnergy.lean/index.md) — import line 150; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DiagonalEnergyBounds.lean/index.md) — import line 151; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeFactorFilters.lean/index.md) — import line 152; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy`](../../../../MeasureAndIntegration/PrimeFilterEnergy.lean/index.md) — import line 153; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy`](../../../../MeasureAndIntegration/PrimeBlockEnergy.lean/index.md) — import line 154; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.ReciprocalMass`](../../../../MeasureAndIntegration/ReciprocalMass.lean/index.md) — import line 155; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusPrimeFilterGrowth.lean/index.md) — import line 156; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicEnergy`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusDyadicEnergy.lean/index.md) — import line 157; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences`](../../../../MeasureAndIntegration/EnergyGrowthEquivalences.lean/index.md) — import line 158; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums`](../../../../MeasureAndIntegration/FiniteLaplaceSums.lean/index.md) — import line 159; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace`](../../../../MeasureAndIntegration/MoebiusPrimeFilterLaplace.lean/index.md) — import line 160; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../../MeasureAndIntegration/FiniteLaplaceTransform.lean/index.md) — import line 161; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteEulerProduct`](../../../../CommutativeAlgebra/MoebiusFiniteEulerProduct.lean/index.md) — import line 162; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FinitePrimeProductDebt.lean/index.md) — import line 163; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IntegerSampleGrowthHistoricalSourceEdition2.lean/index.md) — import line 164; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LaplaceDirichletSeries.lean/index.md) — import line 165; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareGrowth`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MeanSquareGrowth.lean/index.md) — import line 166; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity`](../../../../GeneralTopology/WeightedIntegralContinuity.lean/index.md) — import line 167; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy`](../../../../MeasureAndIntegration/PolynomialLaplaceHolomorphy.lean/index.md) — import line 168; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy`](../../../../MeasureAndIntegration/MeanSquareLaplaceHolomorphy.lean/index.md) — import line 169; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePrefixGrowth.lean/index.md) — import line 170; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation`](../../../../MeasureAndIntegration/NegativePrimeCorrelation.lean/index.md) — import line 171; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveIdentification`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MoebiusPrimitiveIdentification.lean/index.md) — import line 172; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SectorEssentialSuprema`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SectorEssentialSuprema.lean/index.md) — import line 173; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRegularization`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRegularization.lean/index.md) — import line 174; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriteria.lean/index.md) — import line 175; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.HolomorphicFilteredReciprocal`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HolomorphicFilteredReciprocal.lean/index.md) — import line 176; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalLineDefect.lean/index.md) — import line 177; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Hypothesis.lean/index.md) — import line 178; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DefectCriterion.lean/index.md) — import line 179; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaRiemann.lean/index.md) — import line 180; pinned internal source present.
- [`GRWTSK.Spectral.GapTransport`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/GapTransport.lean/index.md) — import line 181; pinned internal source present.
- [`GRWTSK.Spectral.MatrixCountComparison`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCountComparisonHistoricalSourceEdition2.lean/index.md) — import line 182; pinned internal source present.
- [`GRWTSK.Spectral.SturmianFiniteVolume`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolume.lean/index.md) — import line 183; pinned internal source present.
- [`GRWTSK.Spectral.DirichletCut`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCut.lean/index.md) — import line 184; pinned internal source present.
- [`GRWTSK.Spectral.FreeDirichletSpectrum`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeDirichletSpectrumHistoricalSourceEdition2.lean/index.md) — import line 185; pinned internal source present.
- [`GRWTSK.Spectral.FreeIDS`](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/index.md) — import line 186; pinned internal source present.
- [`GRWTSK.Spectral.SturmianBlockCounts`](../../../../OperatorTheory/SturmianBlockCountsHistoricalSourceEdition2.lean/index.md) — import line 187; pinned internal source present.
- [`GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/SquarefreeEulerProduct.lean/index.md) — import line 190; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DisjointPrimeChainBoundsHistoricalSourceEdition2.lean/index.md) — import line 191; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialEnergyObstructionHistoricalSourceEdition2.lean/index.md) — import line 192; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/index.md) — import line 193; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/FinitePrimeChainEnergyBounds.lean/index.md) — import line 194; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedWidthEnergyBoundEquivalence.lean/index.md) — import line 195; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/MassWeightedRecurrenceHistoricalSourceEdition2.lean/index.md) — import line 196; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PrimeMassPotentialBoundsHistoricalSourceEdition2.lean/index.md) — import line 197; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeSubsetPotentialBounds`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PrimeSubsetPotentialBoundsHistoricalSourceEdition2.lean/index.md) — import line 198; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../MeasureAndIntegration/PrimeTranslationBoundContracts.lean/index.md) — import line 199; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.QuadraticKernelEnergyEquivalence`](../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/QuadraticKernelEnergyEquivalence.lean/index.md) — import line 200; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SelectedPrimeChainBounds`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SelectedPrimeChainBounds.lean/index.md) — import line 201; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SignedEnergyDecompositionHistoricalSourceEdition2.lean/index.md) — import line 202; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives`](../../../../RealFunctions/LogarithmicResponseDerivatives.lean/index.md) — import line 203; pinned internal source present.
- [`GRWTSK.Analysis.CausalTranslation.ExponentialResponse`](../../../../RealFunctions/ExponentialResponse.lean/index.md) — import line 204; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.AngularFrequencyParseval`](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/index.md) — import line 205; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DampedRecordingParseval`](../../../../MeasureAndIntegration/MoebiusDampedRecordingParseval.lean/index.md) — import line 206; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.VerticalLineCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusVerticalLineCriterion.lean/index.md) — import line 207; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusVerticalLineMonotonicity.lean/index.md) — import line 208; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks`](../../../../MeasureAndIntegration/MoebiusCriticalIntervalBlocksHistoricalSourceEdition2.lean/index.md) — import line 209; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary`](../../../../MeasureAndIntegration/LogarithmicMertensBoundary.lean/index.md) — import line 210; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefix`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/index.md) — import line 211; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.FinitePhraseProcess`](../../../../DynamicalSystemsAndErgodicTheory/FinitePhraseProcess.lean/index.md) — import line 212; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityMoebius.lean/index.md) — import line 213; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityFiniteSums`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityFiniteSums.lean/index.md) — import line 214; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeReciprocalForm`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeReciprocalForm.lean/index.md) — import line 215; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebiusCorrection`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityMoebiusCorrection.lean/index.md) — import line 216; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DivisibleDensityRow`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibleDensityRow.lean/index.md) — import line 217; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusReciprocalPrefix`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MoebiusReciprocalPrefix.lean/index.md) — import line 218; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusTruncation`](../../../../CommutativeAlgebra/MoebiusTruncation.lean/index.md) — import line 219; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PositiveDensityCorrection.lean/index.md) — import line 220; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityCorrectionPrimeSeries.lean/index.md) — import line 221; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityCorrectionReciprocalMass.lean/index.md) — import line 222; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactor.lean/index.md) — import line 223; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfMoment`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfMoment.lean/index.md) — import line 224; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMomentTails`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityMomentTails.lean/index.md) — import line 225; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityReciprocalPrefix`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityReciprocalPrefix.lean/index.md) — import line 226; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExcludedDensityCorrection.lean/index.md) — import line 227; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMoebiusCoefficients.lean/index.md) — import line 228; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.ComplexMoebiusCast`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ComplexMoebiusCast.lean/index.md) — import line 229; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.SquarefulMoebiusReturn`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SquarefulMoebiusReturn.lean/index.md) — import line 230; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.SquarefreeMoebiusSum`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SquarefreeMoebiusSum.lean/index.md) — import line 231; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.TruncatedMoebiusSeries`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TruncatedMoebiusSeries.lean/index.md) — import line 232; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.ClosedMoebiusPolynomial`](../../../../NumberTheory/ClosedMoebiusPolynomial.lean/index.md) — import line 233; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixDensityAdapterHistoricalSourceEdition2.lean/index.md) — import line 234; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel`](../../../../MeasureAndIntegration/ReciprocalPrefixKernel.lean/index.md) — import line 235; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CriticalIntervalBlockGrowth.lean/index.md) — import line 236; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect`](../../../../MeasureAndIntegration/CriticalEndpointDefect.lean/index.md) — import line 237; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CriticalEndpointDefectRecurrence.lean/index.md) — import line 238; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CriticalMertensTransformMeanSquareHistoricalSourceEdition2.lean/index.md) — import line 239; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CriticalWeightedMertensSquare.lean/index.md) — import line 240; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy`](../../../../MeasureAndIntegration/ReciprocalPrefixVariationEnergy.lean/index.md) — import line 241; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalFluxKernelBounds.lean/index.md) — import line 242; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability`](../../../../MeasureAndIntegration/ReciprocalPrefixVariationSummability.lean/index.md) — import line 243; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationPowerSaving.lean/index.md) — import line 244; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationRecurrence.lean/index.md) — import line 245; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/index.md) — import line 246; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSquareEnergyPowerBound.lean/index.md) — import line 247; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensSquareEnergyEquivalence.lean/index.md) — import line 248; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelation.lean/index.md) — import line 249; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/index.md) — import line 250; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteTranslationMultipliers.lean/index.md) — import line 251; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusQuadraticReturn.lean/index.md) — import line 252; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../MeasureAndIntegration/PrimePhaseMultiplierBounds.lean/index.md) — import line 253; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhasePacketCertificates`](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/index.md) — import line 254; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.QuadraticKernelTruncation`](../../../../MeasureAndIntegration/QuadraticKernelTruncation.lean/index.md) — import line 255; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 256; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedPrimePhaseExamplesHistoricalSourceEdition2.lean/index.md) — import line 257; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.LogarithmicCharacterGramBounds`](../../../../MeasureAndIntegration/LogarithmicCharacterGramBounds.lean/index.md) — import line 258; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../GeneralTopology/MoebiusResponseGramExpansion.lean/index.md) — import line 259; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/index.md) — import line 260; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedSynthesisEnergyBoundsHistoricalSourceEdition2.lean/index.md) — import line 261; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/index.md) — import line 262; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates`](../../../../MeasureAndIntegration/SignedWindowPacketCertificates.lean/index.md) — import line 263; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedSchurBounds.lean/index.md) — import line 264; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusResponseFormula.lean/index.md) — import line 265; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy`](../../../../ProbabilityTheoryAndStochasticProcesses/PolynomialEnergyHolomorphy.lean/index.md) — import line 266; pinned internal source present.
- [`GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum`](../../../../MeasureAndIntegration/ExponentialResponseSquareSum.lean/index.md) — import line 267; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.DirichletResponseStatus`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirichletResponseStatus.lean/index.md) — import line 268; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.EnergyInterfaceEquivalence`](../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EnergyInterfaceEquivalence.lean/index.md) — import line 269; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusPrimeShellStatus`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusPrimeShellStatus.lean/index.md) — import line 270; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MoebiusResponseStatus.lean/index.md) — import line 271; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.ProvenanceCertificates`](../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ProvenanceCertificatesHistoricalSourceEdition2.lean/index.md) — import line 272; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds`](../../../../MeasureAndIntegration/CausalRestrictionBounds.lean/index.md) — import line 273; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FinitePrimeTranslationEnergyHistoricalSourceEdition2.lean/index.md) — import line 274; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope`](../../../../MeasureAndIntegration/FixedWidthEnergyTelescope.lean/index.md) — import line 275; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../../MeasureAndIntegration/MoebiusCumulativeEnergyHistoricalSourceEdition2.lean/index.md) — import line 276; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini`](../../../../MeasureAndIntegration/QuadraticFourierFubini.lean/index.md) — import line 277; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CompositeActivationExamples`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CompositeActivationExamplesHistoricalSourceEdition2.lean/index.md) — import line 278; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../MeasureAndIntegration/DiagonalEnergyBound.lean/index.md) — import line 279; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/index.md) — import line 280; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteTranslationProduct.lean/index.md) — import line 281; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/LogarithmicResponse.lean/index.md) — import line 282; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusEulerProduct.lean/index.md) — import line 283; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyHolomorphyHistoricalSourceEdition2.lean/index.md) — import line 284; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeProductPrefixEnergy`](../../../../MeasureAndIntegration/PrimeProductPrefixEnergyHistoricalSourceEdition2.lean/index.md) — import line 285; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeShellDecompositionHistoricalSourceEdition2.lean/index.md) — import line 286; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.QuadraticTransformBoundConversion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/QuadraticTransformBoundConversionHistoricalSourceEdition2.lean/index.md) — import line 287; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusResponseBudgetIdentification.lean/index.md) — import line 288; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SubsetPotentialObstruction`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SubsetPotentialObstructionHistoricalSourceEdition2.lean/index.md) — import line 289; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeIntervalResponseEnergyGrowth`](../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/PrimeIntervalResponseEnergyGrowthHistoricalSourceEdition2.lean/index.md) — import line 290; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth`](../../../../MeasureAndIntegration/PrimeShellEnergyGrowth.lean/index.md) — import line 291; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeBlockCost`](../../../../NumberTheory/MultiplicativeNumberTheory/ReciprocalPrimeBlockCost.lean/index.md) — import line 292; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds`](../../../../NumberTheory/MultiplicativeNumberTheory/ReciprocalPrimeIntervalBounds.lean/index.md) — import line 293; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound`](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/index.md) — import line 294; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBoundsHistoricalSourceEdition2.lean/index.md) — import line 295; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalHolomorphyZeroSymmetryHistoricalSourceEdition2.lean/index.md) — import line 296; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/index.md) — import line 297; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../../Combinatorics/AdditiveNaturalRank.lean/index.md) — import line 298; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments`](../../../../MeasureAndIntegration/CompactProfileDifferentialMoments.lean/index.md) — import line 299; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment`](../../../../MeasureAndIntegration/CompactProfileFirstPoleMoment.lean/index.md) — import line 300; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FiniteTranslateIndependence`](../../../../RealFunctions/ConvolutionFiniteTranslateIndependence.lean/index.md) — import line 301; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FirstMomentConvolution`](../../../../MeasureAndIntegration/FirstMomentConvolution.lean/index.md) — import line 302; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds`](../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/index.md) — import line 303; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds`](../../../../MeasureAndIntegration/FiniteLogarithmicProfileBounds.lean/index.md) — import line 304; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices`](../../../../MeasureAndIntegration/LogarithmicProfileIntegralPrices.lean/index.md) — import line 305; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation`](../../../../MeasureAndIntegration/CausalContactHilbertSeparation.lean/index.md) — import line 306; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost`](../../../../MeasureAndIntegration/CausalContactOperatorCost.lean/index.md) — import line 307; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation`](../../../../MeasureAndIntegration/CausalContactSeparationHistoricalSourceEdition2.lean/index.md) — import line 308; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation`](../../../../MeasureAndIntegration/CausalFiniteOperatorSeparation.lean/index.md) — import line 309; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CausalGramCongruenceObstructionHistoricalSourceEdition2.lean/index.md) — import line 310; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/index.md) — import line 311; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalLastLabelOperatorCost.lean/index.md) — import line 312; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalRealizationPolynomialObstruction`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/index.md) — import line 313; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CompactSourceGramPositiveDefinite.lean/index.md) — import line 314; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceNonzeroVectorRealization.lean/index.md) — import line 315; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicMoment`](../../../../MeasureAndIntegration/CompactProfileLogarithmicMoment.lean/index.md) — import line 316; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity`](../../../../IntegralTransformsOperationalCalculus/CompactProfileLogarithmicRegularity.lean/index.md) — import line 317; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution`](../../../../MeasureAndIntegration/LogarithmicMomentSubstitution.lean/index.md) — import line 318; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff`](../../../../IntegralTransformsOperationalCalculus/LogarithmicProfileCutoff.lean/index.md) — import line 319; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative`](../../../../IntegralTransformsOperationalCalculus/LogarithmicProfileDerivative.lean/index.md) — import line 320; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity`](../../../../IntegralTransformsOperationalCalculus/LogarithmicProfileRegularity.lean/index.md) — import line 321; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights`](../../../../MeasureAndIntegration/LogarithmicProfileWeights.lean/index.md) — import line 322; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments`](../../../../MeasureAndIntegration/CompactWeightedDerivativeMoments.lean/index.md) — import line 323; pinned internal source present.
- [`GRWTSK.Analysis.Integration.FiniteUnitSumVariation`](../../../../MeasureAndIntegration/FiniteUnitSumVariation.lean/index.md) — import line 324; pinned internal source present.
- [`GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance`](../../../../MeasureAndIntegration/PositiveHalfLineCutoffBalance.lean/index.md) — import line 325; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap`](../../../../RealFunctions/SpecialFunctionsExponentialFloorGap.lean/index.md) — import line 326; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination`](../../../../RealFunctions/SpecialFunctionsExponentialPolynomialDomination.lean/index.md) — import line 327; pinned internal source present.
- [`GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearAndQuadraticFormsZeroCoordinateObstructionHistoricalSourceEdition2.lean/index.md) — import line 328; pinned internal source present.
- [`GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearMapFiniteMixingObstruction.lean/index.md) — import line 329; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.SingularCongruenceObstruction`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheorySingularCongruenceObstructionHistoricalSourceEdition2.lean/index.md) — import line 330; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelBounds`](../../../../RealFunctions/InequalitiesInRealAnalysis/InequalitiesLogarithmicShiftKernelBounds.lean/index.md) — import line 331; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.EvenLinearDefect`](../../../../RealFunctions/DifferentialCalculusEvenLinearDefect.lean/index.md) — import line 332; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability`](../../../../RealFunctions/DifferentialCalculusSupportEdgeDifferentiability.lean/index.md) — import line 333; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy`](../../../../MeasureAndIntegration/AutocorrelationTranslationEnergy.lean/index.md) — import line 334; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction`](../../../../GeneralTopology/CompactProfileFifthDerivativeObstruction.lean/index.md) — import line 335; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileSupportEdge`](../../../../MeasureAndIntegration/CompactProfileSupportEdge.lean/index.md) — import line 336; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactSupportContact`](../../../../MeasureAndIntegration/CompactSupportContact.lean/index.md) — import line 337; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicDerivative`](../../../../IntegralTransformsOperationalCalculus/IntegralTransformsCompactProfileLogarithmicDerivative.lean/index.md) — import line 338; pinned internal source present.
- [`GRWTSK.Analysis.Integration.TranslationSeamLowerBound`](../../../../MeasureAndIntegration/TranslationSeamLowerBound.lean/index.md) — import line 339; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicShiftKernelRegularity`](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/index.md) — import line 340; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileTailSigns`](../../../../MeasureAndIntegration/CompactProfileTailSigns.lean/index.md) — import line 341; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns`](../../../../RealFunctions/PowerFourResidualSigns.lean/index.md) — import line 342; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelPositiveSector`](../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/index.md) — import line 343; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.ConjugateQuartic`](../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/index.md) — import line 344; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BoundedHeightCriterion.lean/index.md) — import line 345; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/QuadraticTraceCriterion.lean/index.md) — import line 346; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentZetaApproximation.lean/index.md) — import line 347; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalSquareTentPolarization.lean/index.md) — import line 348; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction`](../../../../GroupTheoryAndGeneralizations/CanonicalSquareTentWeilTransportObstruction.lean/index.md) — import line 349; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction`](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentObstruction.lean/index.md) — import line 350; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction`](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md) — import line 351; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentFiniteHeadGram.lean/index.md) — import line 352; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZeroOrbitQuartic.lean/index.md) — import line 353; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteSquareSum`](../../../../RealFunctions/InequalitiesInRealAnalysis/FiniteSquareSum.lean/index.md) — import line 354; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.TraceRank`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRankHistoricalSourceEdition2.lean/index.md) — import line 355; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IndexedDictionary`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIndexedDictionaryHistoricalSourceEdition2.lean/index.md) — import line 356; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DictionaryRevision`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevisionHistoricalSourceEdition2.lean/index.md) — import line 357; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DecisionCertificate`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDecisionCertificateHistoricalSourceEdition2.lean/index.md) — import line 358; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.AppendOnlyHistory`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesAppendOnlyHistoryHistoricalSourceEdition2.lean/index.md) — import line 359; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalDictionary`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIncrementalDictionary.lean/index.md) — import line 360; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceClosedOperatorSolvability.lean/index.md) — import line 361; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalComposition`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesIncrementalCompositionHistoricalSourceEdition2.lean/index.md) — import line 362; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceClosedComplexSolvability.lean/index.md) — import line 363; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.BatchCertificate`](../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean/index.md) — import line 364; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability`](../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceJointGraphSolvability.lean/index.md) — import line 365; pinned internal source present.
- [`GRWTSK.Order.Embeddings.PrefixObstruction`](../../../../Combinatorics/OrderEmbeddingsPrefixObstructionHistoricalSourceEdition2.lean/index.md) — import line 366; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PathOccurrences`](../../../../Combinatorics/GraphTheory/DirectedGraphPathOccurrences.lean/index.md) — import line 367; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDependencyVolume.lean/index.md) — import line 368; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ReverseInversion`](../../../../MeasureAndIntegration/MellinTransformReverseInversion.lean/index.md) — import line 369; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EdgeTrace`](../../../../Combinatorics/GraphTheory/DirectedGraphEdgeTrace.lean/index.md) — import line 370; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.LogarithmicGaussian`](../../../../IntegralTransformsOperationalCalculus/LogarithmicGaussian.lean/index.md) — import line 371; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PathUnfolding`](../../../../Combinatorics/GraphTheory/DirectedGraphPathUnfoldingHistoricalSourceEdition2.lean/index.md) — import line 372; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../MeasureAndIntegration/MellinTransformNormalizedGaussian.lean/index.md) — import line 373; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix`](../../../../Combinatorics/GraphTheory/DirectedGraphOccurrencePrefix.lean/index.md) — import line 374; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianContour`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/GaussianContour.lean/index.md) — import line 375; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EndpointSection`](../../../../Combinatorics/GraphTheory/EndpointSection.lean/index.md) — import line 376; pinned internal source present.
- [`GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus`](../../../../RealFunctions/DyadicAnnulus.lean/index.md) — import line 377; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianDyadic`](../../../../NumberTheory/LSeriesGaussianDyadic.lean/index.md) — import line 378; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixInventory`](../../../../Combinatorics/GraphTheory/PrefixInventory.lean/index.md) — import line 379; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../IntegralTransformsOperationalCalculus/MellinTransformCompactGaussianWindow.lean/index.md) — import line 380; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary`](../../../../Combinatorics/GraphTheory/DirectedGraphParentTraceDictionaryHistoricalSourceEdition2.lean/index.md) — import line 381; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives`](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/index.md) — import line 382; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision`](../../../../Combinatorics/GraphTheory/DirectedGraphRootedTraceRevisionHistoricalSourceEdition2.lean/index.md) — import line 383; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms`](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/index.md) — import line 384; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable`](../../../../Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/index.md) — import line 385; pinned internal source present.
- [`GRWTSK.Analysis.Series.DyadicKernel`](../../../../RealFunctions/SeriesDyadicKernel.lean/index.md) — import line 386; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation`](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianDyadicSummation.lean/index.md) — import line 387; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableState`](../../../../Combinatorics/GraphTheory/DirectedGraphPrefixTableState.lean/index.md) — import line 388; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms`](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianRemoteSeminorms.lean/index.md) — import line 389; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction`](../../../../Combinatorics/GraphTheory/DirectedGraphPrefixTableCompaction.lean/index.md) — import line 390; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SchwartzMoments`](../../../../MeasureAndIntegration/FourierAnalysisSchwartzMoments.lean/index.md) — import line 391; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianFourierMoments`](../../../../MeasureAndIntegration/MellinTransformGaussianFourierMoments.lean/index.md) — import line 392; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable`](../../../../Combinatorics/GraphTheory/RoleRelationTable.lean/index.md) — import line 393; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogFlow`](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianLogFlow.lean/index.md) — import line 394; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogWindow`](../../../../MeasureAndIntegration/MellinTransformGaussianLogWindow.lean/index.md) — import line 395; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex`](../../../../Combinatorics/DirectedGraphRoleRelationReindex.lean/index.md) — import line 396; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianDensityMoments`](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/index.md) — import line 397; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex`](../../../../Combinatorics/DirectedGraphPrefixTableReindex.lean/index.md) — import line 398; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactCutoff`](../../../../RealFunctions/CompactCutoff.lean/index.md) — import line 399; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation`](../../../../MeasureAndIntegration/MellinTransformGaussianCoupledSeparation.lean/index.md) — import line 400; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex`](../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/index.md) — import line 401; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation`](../../../../MeasureAndIntegration/MellinTransformGaussianAnnularSeparation.lean/index.md) — import line 402; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch`](../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/index.md) — import line 403; pinned internal source present.
- [`GRWTSK.NumberTheory.Ideal.CompactNormSupport`](../../../../CommutativeAlgebra/IdealCompactNormSupport.lean/index.md) — import line 404; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint`](../../../../Combinatorics/GraphTheory/DirectedGraphPrefixTableCheckpoint.lean/index.md) — import line 405; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals`](../../../../CommutativeAlgebra/CyclotomicThirdCyclotomicIdeals.lean/index.md) — import line 406; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../NumberTheory/DiophantineEquations/Definitions.lean/index.md) — import line 407; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical`](../../../../NumberTheory/DiophantineEquations/Radical.lean/index.md) — import line 408; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement`](../../../../NumberTheory/DiophantineEquations/ABCStatement.lean/index.md) — import line 409; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/index.md) — import line 410; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSet`](../../../../NumberTheory/DiophantineEquations/ExceptionalSet.lean/index.md) — import line 411; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Signed`](../../../../NumberTheory/DiophantineEquations/Signed.lean/index.md) — import line 412; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds`](../../../../NumberTheory/DiophantineEquations/PartialBounds.lean/index.md) — import line 413; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.NonprimitiveObstruction`](../../../../NumberTheory/DiophantineEquations/NonprimitiveObstruction.lean/index.md) — import line 414; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveScale.lean/index.md) — import line 415; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.Coherence`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coherence.lean/index.md) — import line 416; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.FiniteComparison`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteComparison.lean/index.md) — import line 417; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.LogThetaComparison`](../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/index.md) — import line 418; pinned internal source present.
- [`GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison`](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/index.md) — import line 419; pinned internal source present.
- [`GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound`](../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivativeRadicalBound.lean/index.md) — import line 420; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../../GroupTheoryAndGeneralizations/PartialSumOrdering.lean/index.md) — import line 422; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.DisjointTranspositions`](../../../../Combinatorics/DisjointTranspositions.lean/index.md) — import line 423; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair`](../../../../GroupTheoryAndGeneralizations/ZeroSumIntervalRepair.lean/index.md) — import line 424; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumCertificate`](../../../../Combinatorics/PartialSumCertificate.lean/index.md) — import line 425; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint`](../../../../GroupTheoryAndGeneralizations/ModularCheckpoint.lean/index.md) — import line 426; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSum`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModSubsetSum.lean/index.md) — import line 427; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion`](../../../../GroupTheoryAndGeneralizations/ZModSubsetSumCompletion.lean/index.md) — import line 428; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement`](../../../../GroupTheoryAndGeneralizations/PrimeCyclicRearrangement.lean/index.md) — import line 429; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeDivisorFilter`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoprimeDivisorFilter.lean/index.md) — import line 430; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimitiveAdditiveTriplesMoments.lean/index.md) — import line 431; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MomentReindexing.lean/index.md) — import line 432; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling`](../../../../Combinatorics/BalancedPartitionSampling.lean/index.md) — import line 434; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth`](../../../../Combinatorics/CyclicSumsetGrowth.lean/index.md) — import line 435; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModCharacterEnergy.lean/index.md) — import line 436; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModIndependentSelection`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModIndependentSelection.lean/index.md) — import line 437; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteExponentialLayers`](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteExponentialLayers.lean/index.md) — import line 438; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModPartitionEnergy`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModPartitionEnergy.lean/index.md) — import line 439; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedPartition`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedPartition.lean/index.md) — import line 440; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySets`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModSmallEnergySets.lean/index.md) — import line 441; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModSmallEnergySpectrum.lean/index.md) — import line 442; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModConcentratedFrequencies.lean/index.md) — import line 443; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule`](../../../../Combinatorics/GraphTheory/DirectedGraphPrefixTableSchedule.lean/index.md) — import line 444; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction`](../../../../CommutativeAlgebra/ThirdCyclotomicReduction.lean/index.md) — import line 445; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimitiveAdditiveTriplesDivisorSectorReindexing.lean/index.md) — import line 446; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/index.md) — import line 447; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModLargerSlice`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModLargerSlice.lean/index.md) — import line 448; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartitionExposureChecks`](../../../../Combinatorics/PartitionExposureChecks.lean/index.md) — import line 449; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteAdditiveProjector.lean/index.md) — import line 450; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimitiveAdditiveTriplesAdditiveCharacterMoments.lean/index.md) — import line 451; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport`](../../../../Combinatorics/GraphTheory/PrefixTableReferenceTransport.lean/index.md) — import line 452; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters`](../../../../CommutativeAlgebra/ThirdCyclotomicCharacters.lean/index.md) — import line 453; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup`](../../../../Combinatorics/GraphTheory/PrefixTableDirectLookup.lean/index.md) — import line 454; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi`](../../../../CommutativeAlgebra/CyclotomicThirdCyclotomicJacobi.lean/index.md) — import line 455; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction`](../../../../RealFunctions/GlyphPatchReconstruction.lean/index.md) — import line 456; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0332215116a5d46ff5195420e357c4b17f09913723e3875461cc31ff6b0c6e3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/_verification/specifications/_support/GRWTSK.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
