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

[Module and every result](../../../mathematics/_support/GRWTSK.lean/index.md) · [Full source](../../../mathematics/_support/GRWTSK.lean/source.md)

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

- [`GRWTSK.Algebra.BigOperators.OrderedSquare`](../../../mathematics/Algebra/BigOperators/OrderedSquare.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Algebra.BigOperators.QuadraticCounterexample`](../../../mathematics/Algebra/BigOperators/QuadraticCounterexample.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProduct`](../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProductGauge`](../../../mathematics/Algebra/OrderedProductGauge.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.ConjugateInterpolation`](../../../mathematics/Algebra/Polynomial/ConjugateInterpolation.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.SignedRootTrace`](../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound`](../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialErrorBound__SourceOccurrence309f0842c746681854d1e8ce.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FiniteConvolutionRecurrence`](../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure`](../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialClosure__SourceOccurrencee2ca167720564b809cb7aac8.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum`](../../../mathematics/Analysis/AsymptoticAnalysis/FinitePowerSum__SourceOccurrence743654db625b5be3e516c0b4.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential`](../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral`](../../../mathematics/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth`](../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../mathematics/NumberTheory/Moebius/SignedIntegralSectorBounds.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactPolynomialDerivatives`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.SquaredInverseBump`](../../../mathematics/Analysis/SpecialFunctions/SquaredInverseBump.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileNormalization`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileDerivativeEnergy`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.Analysis.IntervalIntegral.Reflection`](../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.Analysis.WeakDerivatives.PolynomialBump`](../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization`](../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.PolynomialBumpNormalization`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpNormalization.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.PolynomialEnergyRatio`](../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.PolynomialBumpDerivativeEnergy`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationDerivativeEnergy`](../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative`](../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpSecondEnergy`](../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpHigherDerivatives`](../../../mathematics/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization`](../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileCorrelation`](../../../mathematics/Analysis/Convolution/CompactProfileCorrelation.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactPolynomialMoments`](../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md) — import line 38; pinned internal source present.
- [`GRWTSK.Analysis.Integration.ExponentialVolterraL2`](../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability`](../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.Analysis.DigammaSeries`](../../../mathematics/Analysis/DigammaSeries.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PolynomialBumpEstimates`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/index.md) — import line 43; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.ExponentialMoments`](../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts`](../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.NumberTheory.ExplicitFormula.CorrelationPairing`](../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.LogarithmicDomain`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.DigammaMultiplier`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/DigammaMultiplier.lean/index.md) — import line 48; pinned internal source present.
- [`GRWTSK.Analysis.ReciprocalKernel`](../../../mathematics/Analysis/ReciprocalKernel.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.DigammaFourierBound`](../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula`](../../../mathematics/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../mathematics/Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md) — import line 52; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/index.md) — import line 53; pinned internal source present.
- [`GRWTSK.Analysis.Complex.VerticalReflection`](../../../mathematics/Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrence88e893dfbad19da3c2403f73.lean/index.md) — import line 54; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.WeakSecondDerivativeUniqueness`](../../../mathematics/Analysis/Distribution/WeakSecondDerivativeUniqueness.lean/index.md) — import line 55; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../mathematics/Analysis/ErrorBounds/PartialMapComposition.lean/index.md) — import line 56; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.IntegerSeries`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md) — import line 57; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.Parseval`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Parseval.lean/index.md) — import line 58; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.WindowCertificates`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/index.md) — import line 59; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance`](../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md) — import line 60; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ExponentialDiagonal`](../../../mathematics/Analysis/Inequalities/ExponentialDiagonal.lean/index.md) — import line 61; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds`](../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/index.md) — import line 62; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/index.md) — import line 63; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation`](../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md) — import line 64; pinned internal source present.
- [`GRWTSK.Analysis.IntervalReflection`](../../../mathematics/Analysis/IntervalReflection.lean/index.md) — import line 65; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.Analytic`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/Analytic.lean/index.md) — import line 66; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.CausalExponentialResponse`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md) — import line 67; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/index.md) — import line 68; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../mathematics/NumberTheory/Moebius/PrimitiveRegularity.lean/index.md) — import line 69; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity`](../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md) — import line 70; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteResponseSum`](../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/index.md) — import line 71; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.GramDiagonalBound`](../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/index.md) — import line 72; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy`](../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md) — import line 73; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Regularized`](../../../mathematics/NumberTheory/Zeta/Riemann/Regularized.lean/index.md) — import line 74; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 75; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 76; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion`](../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md) — import line 77; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/index.md) — import line 78; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound`](../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md) — import line 79; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/index.md) — import line 80; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialThreshold.lean/index.md) — import line 81; pinned internal source present.
- [`GRWTSK.Analysis.NormedSpace.QuadraticError`](../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/QuadraticError.lean/index.md) — import line 82; pinned internal source present.
- [`GRWTSK.Analysis.Polarization`](../../../mathematics/Analysis/Polarization.lean/index.md) — import line 83; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.Separation`](../../../mathematics/Analysis/TestFunctions/Separation.lean/index.md) — import line 84; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.EvenSeparation`](../../../mathematics/Analysis/TestFunctions/EvenSeparation.lean/index.md) — import line 85; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation`](../../../mathematics/Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md) — import line 86; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource`](../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence06da90f8c8c057c6c0e8ffb0.lean/index.md) — import line 87; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser`](../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/index.md) — import line 88; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserCoordinates`](../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserCoordinates__SourceOccurrence267f1ff06fb0c0947a80bf7c.lean/index.md) — import line 89; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) — import line 90; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/index.md) — import line 91; pinned internal source present.
- [`GRWTSK.Data.Sampling.Descriptions`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/index.md) — import line 92; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) — import line 93; pinned internal source present.
- [`GRWTSK.DynamicalSystems.Sequences.ApproximationReturn`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/index.md) — import line 94; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md) — import line 95; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/index.md) — import line 96; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ExactMoment`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/index.md) — import line 97; pinned internal source present.
- [`GRWTSK.Combinatorics.CodingTheory.Lossless`](../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/index.md) — import line 98; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.RootHeatState`](../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/index.md) — import line 99; pinned internal source present.
- [`GRWTSK.Logic.Locality.RevisionCertificates`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates__SourceOccurrence6831ddf20c1704a4a19e59d5.lean/index.md) — import line 100; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/index.md) — import line 101; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md) — import line 102; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/index.md) — import line 103; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/index.md) — import line 104; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleSystems`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md) — import line 105; pinned internal source present.
- [`GRWTSK.Logic.Inference.RuleSoundness`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrenceb046e57f6f9af5bbd1702123.lean/index.md) — import line 106; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ArtifactDerivation`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence5a230b12dadf6394aee5c582.lean/index.md) — import line 107; pinned internal source present.
- [`GRWTSK.Logic.ProofChecking.RepositoryConformance`](../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/index.md) — import line 108; pinned internal source present.
- [`GRWTSK.Logic.Locality.FiniteRuleTransport`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/index.md) — import line 109; pinned internal source present.
- [`GRWTSK.Logic.Locality.AnchoredCertificates`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md) — import line 110; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md) — import line 111; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/index.md) — import line 112; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/index.md) — import line 113; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredDependencyRevision`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md) — import line 114; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/index.md) — import line 115; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationReachability`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean/index.md) — import line 116; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyExamples`](../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyExamples__SourceOccurrencebf9f97bc3e98aa30a96bae3c.lean/index.md) — import line 117; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevisionExamples`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence6f77f1437de0b2aed58aaf9e.lean/index.md) — import line 118; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/index.md) — import line 119; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/index.md) — import line 120; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.CertifiedPartialMaps`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean/index.md) — import line 121; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/index.md) — import line 122; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerificationExamples`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/index.md) — import line 123; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachabilityExamples`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/index.md) — import line 124; pinned internal source present.
- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrence1b935086502b7f96acb46a5b.lean/index.md) — import line 125; pinned internal source present.
- [`GRWTSK.LinearAlgebra.AlmostMathieu`](../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/index.md) — import line 126; pinned internal source present.
- [`GRWTSK.LinearAlgebra.JacobiTransfer`](../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md) — import line 127; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedTransfer`](../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/index.md) — import line 128; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedProductDeterminant`](../../../mathematics/Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrence273e1154e913af030c730bb8.lean/index.md) — import line 129; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CocycleProduct`](../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/index.md) — import line 130; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJ`](../../../mathematics/Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/index.md) — import line 131; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJCounterexamples`](../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/index.md) — import line 132; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm`](../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrence4ddf3c1526e7b64c3ef823c8.lean/index.md) — import line 133; pinned internal source present.
- [`GRWTSK.LinearAlgebra.QuadraticCertificates`](../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/index.md) — import line 134; pinned internal source present.
- [`GRWTSK.LinearAlgebra.GaugeState`](../../../mathematics/Algebra/LinearAlgebra/GaugeState__SourceOccurrencea45eadc5aa197448ec1cfe5f.lean/index.md) — import line 135; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.SampledPotential`](../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/index.md) — import line 136; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.Sampling`](../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/index.md) — import line 137; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Sturmian`](../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/index.md) — import line 138; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ModelExamples`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/index.md) — import line 139; pinned internal source present.
- [`GRWTSK.Analysis.Complex.CriticalReflection`](../../../mathematics/Analysis/ComplexAnalysis/CriticalReflection__SourceOccurrencea153b0b637ddbb38a27f21e0.lean/index.md) — import line 140; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ReflectionCounterexamples`](../../../mathematics/Analysis/ComplexAnalysis/ReflectionCounterexamples__SourceOccurrenceb3b197fc49650dec6e46dd35.lean/index.md) — import line 141; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.HermitianCounterexamples`](../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples__SourceOccurrence65393a074e14bd487433a8b9.lean/index.md) — import line 142; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/index.md) — import line 143; pinned internal source present.
- [`GRWTSK.Logic.FiniteCoverage`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/index.md) — import line 144; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.PrefixCoverage`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/index.md) — import line 145; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleExamples`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/index.md) — import line 146; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md) — import line 147; pinned internal source present.
- [`GRWTSK.NumberTheory.FirstPrime`](../../../mathematics/NumberTheory/FirstPrime.lean/index.md) — import line 148; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.LeastPrime`](../../../mathematics/NumberTheory/Primes/LeastPrime.lean/index.md) — import line 149; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ComparisonEnergy`](../../../mathematics/NumberTheory/Moebius/ComparisonEnergy.lean/index.md) — import line 150; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds`](../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md) — import line 151; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters`](../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md) — import line 152; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy`](../../../mathematics/NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md) — import line 153; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy`](../../../mathematics/NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md) — import line 154; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.ReciprocalMass`](../../../mathematics/NumberTheory/Primes/ReciprocalMass.lean/index.md) — import line 155; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../mathematics/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md) — import line 156; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicEnergy`](../../../mathematics/NumberTheory/Moebius/DyadicEnergy.lean/index.md) — import line 157; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences`](../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md) — import line 158; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums`](../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/index.md) — import line 159; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace`](../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md) — import line 160; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md) — import line 161; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteEulerProduct`](../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/index.md) — import line 162; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt`](../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md) — import line 163; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth`](../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md) — import line 164; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries`](../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md) — import line 165; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareGrowth`](../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/index.md) — import line 166; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity`](../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/index.md) — import line 167; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy`](../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md) — import line 168; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy`](../../../mathematics/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md) — import line 169; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth`](../../../mathematics/NumberTheory/Moebius/PrimePrefixGrowth.lean/index.md) — import line 170; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation`](../../../mathematics/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md) — import line 171; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveIdentification`](../../../mathematics/NumberTheory/Moebius/PrimitiveIdentification.lean/index.md) — import line 172; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SectorEssentialSuprema`](../../../mathematics/NumberTheory/Moebius/SectorEssentialSuprema.lean/index.md) — import line 173; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRegularization`](../../../mathematics/NumberTheory/Zeta/PoleRegularization.lean/index.md) — import line 174; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria`](../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/index.md) — import line 175; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.HolomorphicFilteredReciprocal`](../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/index.md) — import line 176; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect`](../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/index.md) — import line 177; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../mathematics/NumberTheory/Zeta/Riemann/Hypothesis.lean/index.md) — import line 178; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion`](../../../mathematics/NumberTheory/Zeta/Riemann/DefectCriterion.lean/index.md) — import line 179; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann`](../../../mathematics/NumberTheory/Zeta/Riemann.lean/index.md) — import line 180; pinned internal source present.
- [`GRWTSK.Spectral.GapTransport`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md) — import line 181; pinned internal source present.
- [`GRWTSK.Spectral.MatrixCountComparison`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/index.md) — import line 182; pinned internal source present.
- [`GRWTSK.Spectral.SturmianFiniteVolume`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/index.md) — import line 183; pinned internal source present.
- [`GRWTSK.Spectral.DirichletCut`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md) — import line 184; pinned internal source present.
- [`GRWTSK.Spectral.FreeDirichletSpectrum`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md) — import line 185; pinned internal source present.
- [`GRWTSK.Spectral.FreeIDS`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencee53e67e18cd12134119aa05c.lean/index.md) — import line 186; pinned internal source present.
- [`GRWTSK.Spectral.SturmianBlockCounts`](../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md) — import line 187; pinned internal source present.
- [`GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct`](../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md) — import line 190; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/index.md) — import line 191; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md) — import line 192; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence`](../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence87b55907d2ba6a854b10e417.lean/index.md) — import line 193; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds`](../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md) — import line 194; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence`](../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/index.md) — import line 195; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence`](../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/index.md) — import line 196; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds`](../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/index.md) — import line 197; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeSubsetPotentialBounds`](../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md) — import line 198; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../mathematics/Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts__SourceOccurrence639d86d7014d0b023ad24fe3.lean/index.md) — import line 199; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.QuadraticKernelEnergyEquivalence`](../../../mathematics/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence__SourceOccurrence184eefda797211ad3333339f.lean/index.md) — import line 200; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SelectedPrimeChainBounds`](../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrence08ca87933c85c4fb3d9a4a4e.lean/index.md) — import line 201; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) — import line 202; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/index.md) — import line 203; pinned internal source present.
- [`GRWTSK.Analysis.CausalTranslation.ExponentialResponse`](../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/index.md) — import line 204; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.AngularFrequencyParseval`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md) — import line 205; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DampedRecordingParseval`](../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md) — import line 206; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.VerticalLineCriterion`](../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md) — import line 207; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity`](../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/index.md) — import line 208; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks`](../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md) — import line 209; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary`](../../../mathematics/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md) — import line 210; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefix`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md) — import line 211; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.FinitePhraseProcess`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md) — import line 212; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) — import line 213; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityFiniteSums`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/index.md) — import line 214; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeReciprocalForm`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean/index.md) — import line 215; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebiusCorrection`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/index.md) — import line 216; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DivisibleDensityRow`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/index.md) — import line 217; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusReciprocalPrefix`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/index.md) — import line 218; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusTruncation`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/index.md) — import line 219; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md) — import line 220; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md) — import line 221; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md) — import line 222; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/index.md) — import line 223; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfMoment`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md) — import line 224; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMomentTails`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/index.md) — import line 225; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityReciprocalPrefix`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/index.md) — import line 226; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/index.md) — import line 227; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/index.md) — import line 228; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.ComplexMoebiusCast`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/index.md) — import line 229; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.SquarefulMoebiusReturn`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/index.md) — import line 230; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.SquarefreeMoebiusSum`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeMoebiusSum.lean/index.md) — import line 231; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.TruncatedMoebiusSeries`](../../../mathematics/NumberTheory/LSeries/TruncatedMoebiusSeries.lean/index.md) — import line 232; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.ClosedMoebiusPolynomial`](../../../mathematics/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/index.md) — import line 233; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixDensityAdapter.lean/index.md) — import line 234; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md) — import line 235; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth`](../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md) — import line 236; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect`](../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md) — import line 237; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence`](../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md) — import line 238; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare`](../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md) — import line 239; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare`](../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md) — import line 240; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/index.md) — import line 241; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds`](../../../mathematics/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md) — import line 242; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/index.md) — import line 243; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md) — import line 244; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md) — import line 245; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy`](../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean/index.md) — import line 246; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound`](../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/index.md) — import line 247; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence`](../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/index.md) — import line 248; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation`](../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/index.md) — import line 249; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound`](../../../mathematics/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean/index.md) — import line 250; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md) — import line 251; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/index.md) — import line 252; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) — import line 253; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhasePacketCertificates`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md) — import line 254; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.QuadraticKernelTruncation`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md) — import line 255; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 256; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SignedPrimePhaseExamples.lean/index.md) — import line 257; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.LogarithmicCharacterGramBounds`](../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md) — import line 258; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 259; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence`](../../../mathematics/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean/index.md) — import line 260; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds`](../../../mathematics/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/index.md) — import line 261; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../mathematics/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean/index.md) — import line 262; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates`](../../../mathematics/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md) — import line 263; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds`](../../../mathematics/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md) — import line 264; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md) — import line 265; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md) — import line 266; pinned internal source present.
- [`GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum`](../../../mathematics/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md) — import line 267; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.DirichletResponseStatus`](../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/DirichletResponseStatus__SourceOccurrence65927fdc4e10d69700149f12.lean/index.md) — import line 268; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.EnergyInterfaceEquivalence`](../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/index.md) — import line 269; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusPrimeShellStatus`](../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/MoebiusPrimeShellStatus__SourceOccurrence2b14005a9be4ee088c1668ab.lean/index.md) — import line 270; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus`](../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/MoebiusResponseStatus__SourceOccurrence45529f488747b3b0d2cd373c.lean/index.md) — import line 271; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.ProvenanceCertificates`](../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/index.md) — import line 272; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds`](../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/index.md) — import line 273; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/index.md) — import line 274; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope`](../../../mathematics/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/index.md) — import line 275; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/index.md) — import line 276; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini`](../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/index.md) — import line 277; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CompositeActivationExamples`](../../../mathematics/NumberTheory/Moebius/CompositeActivationExamples.lean/index.md) — import line 278; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 279; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 280; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md) — import line 281; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/index.md) — import line 282; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 283; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/index.md) — import line 284; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeProductPrefixEnergy`](../../../mathematics/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean/index.md) — import line 285; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition`](../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md) — import line 286; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.QuadraticTransformBoundConversion`](../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/index.md) — import line 287; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification`](../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/index.md) — import line 288; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SubsetPotentialObstruction`](../../../mathematics/NumberTheory/Moebius/SubsetPotentialObstruction.lean/index.md) — import line 289; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeIntervalResponseEnergyGrowth`](../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md) — import line 290; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth`](../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md) — import line 291; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeBlockCost`](../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeBlockCost.lean/index.md) — import line 292; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds`](../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/index.md) — import line 293; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound`](../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md) — import line 294; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds`](../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/index.md) — import line 295; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry`](../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/index.md) — import line 296; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions`](../../../mathematics/NumberTheory/Zeta/ResponseBoundZeroConversions.lean/index.md) — import line 297; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/index.md) — import line 298; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments`](../../../mathematics/Analysis/Convolution/CompactProfileDifferentialMoments.lean/index.md) — import line 299; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment`](../../../mathematics/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/index.md) — import line 300; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FiniteTranslateIndependence`](../../../mathematics/Analysis/Convolution/FiniteTranslateIndependence.lean/index.md) — import line 301; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FirstMomentConvolution`](../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/index.md) — import line 302; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds`](../../../mathematics/Analysis/Inequalities/CompactProfileDifferentialBounds.lean/index.md) — import line 303; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds`](../../../mathematics/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean/index.md) — import line 304; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices`](../../../mathematics/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md) — import line 305; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation`](../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md) — import line 306; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost`](../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md) — import line 307; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation`](../../../mathematics/Analysis/InnerProductSpace/CausalContactSeparation.lean/index.md) — import line 308; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation`](../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/index.md) — import line 309; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction`](../../../mathematics/Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean/index.md) — import line 310; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization`](../../../mathematics/Analysis/InnerProductSpace/CausalIndividualRealization.lean/index.md) — import line 311; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost`](../../../mathematics/Analysis/InnerProductSpace/CausalLastLabelOperatorCost.lean/index.md) — import line 312; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalRealizationPolynomialObstruction`](../../../mathematics/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean/index.md) — import line 313; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite`](../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md) — import line 314; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization`](../../../mathematics/Analysis/InnerProductSpace/NonzeroVectorRealization.lean/index.md) — import line 315; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicMoment`](../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicMoment.lean/index.md) — import line 316; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity`](../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/index.md) — import line 317; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution`](../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md) — import line 318; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff`](../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/index.md) — import line 319; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative`](../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md) — import line 320; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity`](../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean/index.md) — import line 321; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights`](../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md) — import line 322; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments`](../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/index.md) — import line 323; pinned internal source present.
- [`GRWTSK.Analysis.Integration.FiniteUnitSumVariation`](../../../mathematics/Analysis/RealAnalysis/Integration/FiniteUnitSumVariation.lean/index.md) — import line 324; pinned internal source present.
- [`GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance`](../../../mathematics/Analysis/RealAnalysis/Integration/PositiveHalfLineCutoffBalance.lean/index.md) — import line 325; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap`](../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md) — import line 326; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination`](../../../mathematics/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md) — import line 327; pinned internal source present.
- [`GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction`](../../../mathematics/Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/index.md) — import line 328; pinned internal source present.
- [`GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction`](../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/index.md) — import line 329; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.SingularCongruenceObstruction`](../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction__SourceOccurrencee07877626199a8e09c54304e.lean/index.md) — import line 330; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelBounds`](../../../mathematics/Analysis/Inequalities/LogarithmicShiftKernelBounds.lean/index.md) — import line 331; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.EvenLinearDefect`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EvenLinearDefect.lean/index.md) — import line 332; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportEdgeDifferentiability.lean/index.md) — import line 333; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy`](../../../mathematics/Analysis/Convolution/AutocorrelationTranslationEnergy.lean/index.md) — import line 334; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction`](../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/index.md) — import line 335; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileSupportEdge`](../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/index.md) — import line 336; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactSupportContact`](../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/index.md) — import line 337; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicDerivative`](../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean/index.md) — import line 338; pinned internal source present.
- [`GRWTSK.Analysis.Integration.TranslationSeamLowerBound`](../../../mathematics/Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md) — import line 339; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicShiftKernelRegularity`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean/index.md) — import line 340; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileTailSigns`](../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/index.md) — import line 341; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns`](../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md) — import line 342; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelPositiveSector`](../../../mathematics/Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean/index.md) — import line 343; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.ConjugateQuartic`](../../../mathematics/Algebra/Polynomial/ConjugateQuartic.lean/index.md) — import line 344; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion`](../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/index.md) — import line 345; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion`](../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md) — import line 346; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation`](../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md) — import line 347; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization`](../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md) — import line 348; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction`](../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md) — import line 349; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction`](../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md) — import line 350; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction`](../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md) — import line 351; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram`](../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/index.md) — import line 352; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic`](../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/index.md) — import line 353; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteSquareSum`](../../../mathematics/Analysis/Inequalities/FiniteSquareSum.lean/index.md) — import line 354; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.TraceRank`](../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/index.md) — import line 355; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IndexedDictionary`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/index.md) — import line 356; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DictionaryRevision`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrenceaca87234f3b7037a7f107897.lean/index.md) — import line 357; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DecisionCertificate`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/index.md) — import line 358; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.AppendOnlyHistory`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrenceee11f403760fcab430847695.lean/index.md) — import line 359; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalDictionary`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalDictionary__SourceOccurrence46dc71053d429d12dbeed04d.lean/index.md) — import line 360; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability`](../../../mathematics/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md) — import line 361; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalComposition`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalComposition__SourceOccurrence40ccaba0ca5f094929e8e821.lean/index.md) — import line 362; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability`](../../../mathematics/Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md) — import line 363; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.BatchCertificate`](../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate__SourceOccurrence3cf3435a0816a65228f21c54.lean/index.md) — import line 364; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability`](../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md) — import line 365; pinned internal source present.
- [`GRWTSK.Order.Embeddings.PrefixObstruction`](../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/index.md) — import line 366; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PathOccurrences`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md) — import line 367; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/index.md) — import line 368; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ReverseInversion`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md) — import line 369; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EdgeTrace`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/index.md) — import line 370; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.LogarithmicGaussian`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/index.md) — import line 371; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PathUnfolding`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/index.md) — import line 372; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) — import line 373; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrence91a9c8029ba9e6d66d16bbbd.lean/index.md) — import line 374; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianContour`](../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/index.md) — import line 375; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EndpointSection`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/index.md) — import line 376; pinned internal source present.
- [`GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus`](../../../mathematics/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md) — import line 377; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianDyadic`](../../../mathematics/NumberTheory/LSeries/GaussianDyadic.lean/index.md) — import line 378; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixInventory`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/index.md) — import line 379; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) — import line 380; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md) — import line 381; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md) — import line 382; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/index.md) — import line 383; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md) — import line 384; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md) — import line 385; pinned internal source present.
- [`GRWTSK.Analysis.Series.DyadicKernel`](../../../mathematics/Analysis/Series/DyadicKernel.lean/index.md) — import line 386; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean/index.md) — import line 387; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableState`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md) — import line 388; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/index.md) — import line 389; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md) — import line 390; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SchwartzMoments`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md) — import line 391; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianFourierMoments`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/index.md) — import line 392; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/index.md) — import line 393; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogFlow`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/index.md) — import line 394; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogWindow`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md) — import line 395; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/index.md) — import line 396; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianDensityMoments`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDensityMoments.lean/index.md) — import line 397; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/index.md) — import line 398; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactCutoff`](../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md) — import line 399; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md) — import line 400; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean/index.md) — import line 401; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation`](../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md) — import line 402; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/index.md) — import line 403; pinned internal source present.
- [`GRWTSK.NumberTheory.Ideal.CompactNormSupport`](../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/index.md) — import line 404; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/index.md) — import line 405; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals`](../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/index.md) — import line 406; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 407; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/index.md) — import line 408; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ABCStatement.lean/index.md) — import line 409; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean/index.md) — import line 410; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSet`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/index.md) — import line 411; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Signed`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/index.md) — import line 412; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/index.md) — import line 413; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.NonprimitiveObstruction`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean/index.md) — import line 414; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale`](../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/index.md) — import line 415; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.Coherence`](../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/index.md) — import line 416; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.FiniteComparison`](../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/index.md) — import line 417; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.LogThetaComparison`](../../../mathematics/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean/index.md) — import line 418; pinned internal source present.
- [`GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison`](../../../mathematics/Analysis/FiniteSums/WeightedDegreeComparison.lean/index.md) — import line 419; pinned internal source present.
- [`GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound`](../../../mathematics/NumberTheory/Polynomial/DerivativeRadicalBound.lean/index.md) — import line 420; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md) — import line 422; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.DisjointTranspositions`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md) — import line 423; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md) — import line 424; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumCertificate`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean/index.md) — import line 425; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint`](../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md) — import line 426; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSum`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md) — import line 427; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md) — import line 428; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean/index.md) — import line 429; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeDivisorFilter`](../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/index.md) — import line 430; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/index.md) — import line 431; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md) — import line 432; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md) — import line 434; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md) — import line 435; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) — import line 436; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModIndependentSelection`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md) — import line 437; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteExponentialLayers`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md) — import line 438; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModPartitionEnergy`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md) — import line 439; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedPartition`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md) — import line 440; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySets`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md) — import line 441; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md) — import line 442; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md) — import line 443; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/index.md) — import line 444; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction`](../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md) — import line 445; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md) — import line 446; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md) — import line 447; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModLargerSlice`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md) — import line 448; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartitionExposureChecks`](../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/index.md) — import line 449; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 450; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments`](../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/index.md) — import line 451; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md) — import line 452; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters`](../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/index.md) — import line 453; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup`](../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableDirectLookup.lean/index.md) — import line 454; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi`](../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/index.md) — import line 455; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction`](../../../mathematics/Analysis/ErrorBounds/GlyphPatchReconstruction.lean/index.md) — import line 456; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
