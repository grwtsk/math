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

- [`GRWTSK.Algebra.BigOperators.OrderedSquare`](../../../../Algebra/BigOperators/OrderedSquare.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Algebra.BigOperators.QuadraticCounterexample`](../../../../Algebra/BigOperators/QuadraticCounterexample.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProduct`](../../../../Algebra/OrderedProduct.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Algebra.OrderedProductGauge`](../../../../Algebra/OrderedProductGauge.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.ConjugateInterpolation`](../../../../Algebra/Polynomial/ConjugateInterpolation.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.SignedRootTrace`](../../../../Algebra/Polynomial/SignedRootTrace.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound`](../../../../Analysis/AsymptoticAnalysis/PolynomialErrorBound__SourceOccurrence309f0842c746681854d1e8ce.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FiniteConvolutionRecurrence`](../../../../Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure`](../../../../Analysis/AsymptoticAnalysis/PolynomialClosure__SourceOccurrencee2ca167720564b809cb7aac8.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum`](../../../../Analysis/AsymptoticAnalysis/FinitePowerSum__SourceOccurrence743654db625b5be3e516c0b4.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../NumberTheory/Moebius/MertensPrimitive.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential`](../../../../Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral`](../../../../NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth`](../../../../NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../../NumberTheory/Moebius/SignedIntegralSectorBounds.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactPolynomialDerivatives`](../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.SquaredInverseBump`](../../../../Analysis/SpecialFunctions/SquaredInverseBump.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileNormalization`](../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileDerivativeEnergy`](../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.Analysis.IntervalIntegral.Reflection`](../../../../Analysis/IntervalIntegral/Reflection.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.Analysis.WeakDerivatives.PolynomialBump`](../../../../Analysis/WeakDerivatives/PolynomialBump.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../../Analysis/Convolution/PolynomialBumpRegularity.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization`](../../../../Analysis/TestFunctions/PolynomialBumpNormalization.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.PolynomialBumpNormalization`](../../../../Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpNormalization.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.PolynomialEnergyRatio`](../../../../Analysis/Inequalities/PolynomialEnergyRatio.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.PolynomialBumpDerivativeEnergy`](../../../../Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationDerivativeEnergy`](../../../../Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative`](../../../../Analysis/Convolution/AutocorrelationSecondDerivative.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpSecondEnergy`](../../../../Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpHigherDerivatives`](../../../../Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization`](../../../../Analysis/InnerProductSpace/CompactResidualNormalization.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../../Analysis/InnerProductSpace/DilationGram.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileCorrelation`](../../../../Analysis/Convolution/CompactProfileCorrelation.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactPolynomialMoments`](../../../../Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md) — import line 38; pinned internal source present.
- [`GRWTSK.Analysis.Integration.ExponentialVolterraL2`](../../../../Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability`](../../../../NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../../Analysis/Distribution/CompactProfileDilation.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.Analysis.DigammaSeries`](../../../../Analysis/DigammaSeries.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PolynomialBumpEstimates`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/PolynomialBumpEstimates.lean/index.md) — import line 43; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.ExponentialMoments`](../../../../Analysis/Convolution/ExponentialMoments.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts`](../../../../NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.NumberTheory.ExplicitFormula.CorrelationPairing`](../../../../NumberTheory/ExplicitFormula/CorrelationPairing.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.LogarithmicDomain`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/LogarithmicDomain.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.DigammaMultiplier`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/DigammaMultiplier.lean/index.md) — import line 48; pinned internal source present.
- [`GRWTSK.Analysis.ReciprocalKernel`](../../../../Analysis/ReciprocalKernel.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.DigammaFourierBound`](../../../../Analysis/SpecialFunctions/DigammaFourierBound.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula`](../../../../NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md) — import line 52; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples`](../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/index.md) — import line 53; pinned internal source present.
- [`GRWTSK.Analysis.Complex.VerticalReflection`](../../../../Analysis/ComplexAnalysis/VerticalReflection__SourceOccurrence88e893dfbad19da3c2403f73.lean/index.md) — import line 54; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.WeakSecondDerivativeUniqueness`](../../../../Analysis/Distribution/WeakSecondDerivativeUniqueness.lean/index.md) — import line 55; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../../Analysis/ErrorBounds/PartialMapComposition.lean/index.md) — import line 56; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.IntegerSeries`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md) — import line 57; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.Parseval`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/Parseval.lean/index.md) — import line 58; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.WindowCertificates`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/WindowCertificates.lean/index.md) — import line 59; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance`](../../../../Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md) — import line 60; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ExponentialDiagonal`](../../../../Analysis/Inequalities/ExponentialDiagonal.lean/index.md) — import line 61; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds`](../../../../Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/index.md) — import line 62; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../../Analysis/InnerProductSpace/CausalResponseGram.lean/index.md) — import line 63; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation`](../../../../Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md) — import line 64; pinned internal source present.
- [`GRWTSK.Analysis.IntervalReflection`](../../../../Analysis/IntervalReflection.lean/index.md) — import line 65; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.Analytic`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/Analytic.lean/index.md) — import line 66; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.CausalExponentialResponse`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md) — import line 67; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../../NumberTheory/Moebius/LaplaceTransform.lean/index.md) — import line 68; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../../NumberTheory/Moebius/PrimitiveRegularity.lean/index.md) — import line 69; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity`](../../../../NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md) — import line 70; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteResponseSum`](../../../../NumberTheory/Moebius/FiniteResponseSum.lean/index.md) — import line 71; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.GramDiagonalBound`](../../../../NumberTheory/Moebius/GramDiagonalBound.lean/index.md) — import line 72; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy`](../../../../NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md) — import line 73; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Regularized`](../../../../NumberTheory/Zeta/Riemann/Regularized.lean/index.md) — import line 74; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 75; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 76; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion`](../../../../NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md) — import line 77; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/index.md) — import line 78; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound`](../../../../NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md) — import line 79; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../../NumberTheory/Moebius/EnergyAbscissa.lean/index.md) — import line 80; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialThreshold.lean/index.md) — import line 81; pinned internal source present.
- [`GRWTSK.Analysis.NormedSpace.QuadraticError`](../../../../Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/QuadraticError.lean/index.md) — import line 82; pinned internal source present.
- [`GRWTSK.Analysis.Polarization`](../../../../Analysis/Polarization.lean/index.md) — import line 83; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.Separation`](../../../../Analysis/TestFunctions/Separation.lean/index.md) — import line 84; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.EvenSeparation`](../../../../Analysis/TestFunctions/EvenSeparation.lean/index.md) — import line 85; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation`](../../../../Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md) — import line 86; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserSource`](../../../../CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence06da90f8c8c057c6c0e8ffb0.lean/index.md) — import line 87; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser`](../../../../CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/index.md) — import line 88; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserCoordinates`](../../../../CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserCoordinates__SourceOccurrence267f1ff06fb0c0947a80bf7c.lean/index.md) — import line 89; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../../CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) — import line 90; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/index.md) — import line 91; pinned internal source present.
- [`GRWTSK.Data.Sampling.Descriptions`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/Waveform/Descriptions__SourceOccurrence898ac9c683067b3caf345624.lean/index.md) — import line 92; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) — import line 93; pinned internal source present.
- [`GRWTSK.DynamicalSystems.Sequences.ApproximationReturn`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/index.md) — import line 94; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md) — import line 95; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ProofCoverage__SourceOccurrence5078520d251d34c35fbd2f28.lean/index.md) — import line 96; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ExactMoment`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/index.md) — import line 97; pinned internal source present.
- [`GRWTSK.Combinatorics.CodingTheory.Lossless`](../../../../CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/index.md) — import line 98; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.RootHeatState`](../../../../CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean/index.md) — import line 99; pinned internal source present.
- [`GRWTSK.Logic.Locality.RevisionCertificates`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates__SourceOccurrence6831ddf20c1704a4a19e59d5.lean/index.md) — import line 100; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencefe54f5cbc5373f2853cbfdf2.lean/index.md) — import line 101; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md) — import line 102; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean/index.md) — import line 103; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerification__SourceOccurrence44634b1ebfeef97814016311.lean/index.md) — import line 104; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleSystems`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md) — import line 105; pinned internal source present.
- [`GRWTSK.Logic.Inference.RuleSoundness`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrenceb046e57f6f9af5bbd1702123.lean/index.md) — import line 106; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ArtifactDerivation`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence5a230b12dadf6394aee5c582.lean/index.md) — import line 107; pinned internal source present.
- [`GRWTSK.Logic.ProofChecking.RepositoryConformance`](../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean/index.md) — import line 108; pinned internal source present.
- [`GRWTSK.Logic.Locality.FiniteRuleTransport`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/FiniteRuleTransport__SourceOccurrence7f4812776063d2b2eeb2d1d4.lean/index.md) — import line 109; pinned internal source present.
- [`GRWTSK.Logic.Locality.AnchoredCertificates`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md) — import line 110; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md) — import line 111; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/index.md) — import line 112; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/index.md) — import line 113; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredDependencyRevision`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md) — import line 114; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/index.md) — import line 115; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationReachability`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean/index.md) — import line 116; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyExamples`](../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyExamples__SourceOccurrencebf9f97bc3e98aa30a96bae3c.lean/index.md) — import line 117; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevisionExamples`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence6f77f1437de0b2aed58aaf9e.lean/index.md) — import line 118; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitializationExamples.lean/index.md) — import line 119; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean/index.md) — import line 120; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.CertifiedPartialMaps`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean/index.md) — import line 121; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachability.lean/index.md) — import line 122; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerificationExamples`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence9e1d4457f84505c6133fbec4.lean/index.md) — import line 123; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachabilityExamples`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/VerificationReachabilityExamples.lean/index.md) — import line 124; pinned internal source present.
- [`GRWTSK.LinearAlgebra.SchrodingerTransfer`](../../../../Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrence1b935086502b7f96acb46a5b.lean/index.md) — import line 125; pinned internal source present.
- [`GRWTSK.LinearAlgebra.AlmostMathieu`](../../../../Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/index.md) — import line 126; pinned internal source present.
- [`GRWTSK.LinearAlgebra.JacobiTransfer`](../../../../Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md) — import line 127; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedTransfer`](../../../../Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/index.md) — import line 128; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrderedProductDeterminant`](../../../../Algebra/LinearAlgebra/OrderedProductDeterminant__SourceOccurrence273e1154e913af030c730bb8.lean/index.md) — import line 129; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CocycleProduct`](../../../../Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/index.md) — import line 130; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJ`](../../../../Algebra/LinearAlgebra/CommonJ__SourceOccurrence8699828191eaff4bd6d86978.lean/index.md) — import line 131; pinned internal source present.
- [`GRWTSK.LinearAlgebra.CommonJCounterexamples`](../../../../Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/index.md) — import line 132; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm`](../../../../Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrence4ddf3c1526e7b64c3ef823c8.lean/index.md) — import line 133; pinned internal source present.
- [`GRWTSK.LinearAlgebra.QuadraticCertificates`](../../../../Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrenced2a476f92ae64050e178d024.lean/index.md) — import line 134; pinned internal source present.
- [`GRWTSK.LinearAlgebra.GaugeState`](../../../../Algebra/LinearAlgebra/GaugeState__SourceOccurrencea45eadc5aa197448ec1cfe5f.lean/index.md) — import line 135; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.SampledPotential`](../../../../Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/index.md) — import line 136; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Schrodinger.Sampling`](../../../../Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/index.md) — import line 137; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Sturmian`](../../../../Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/index.md) — import line 138; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ModelExamples`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ModelExamples__SourceOccurrence87acf85d54e7e3755f08c7ee.lean/index.md) — import line 139; pinned internal source present.
- [`GRWTSK.Analysis.Complex.CriticalReflection`](../../../../Analysis/ComplexAnalysis/CriticalReflection__SourceOccurrencea153b0b637ddbb38a27f21e0.lean/index.md) — import line 140; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ReflectionCounterexamples`](../../../../Analysis/ComplexAnalysis/ReflectionCounterexamples__SourceOccurrenceb3b197fc49650dec6e46dd35.lean/index.md) — import line 141; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.HermitianCounterexamples`](../../../../Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples__SourceOccurrence65393a074e14bd487433a8b9.lean/index.md) — import line 142; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../NumberTheory/Zeta/Riemann/ZeroExclusions.lean/index.md) — import line 143; pinned internal source present.
- [`GRWTSK.Logic.FiniteCoverage`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/index.md) — import line 144; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.PrefixCoverage`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/PrefixCoverage__SourceOccurrence451432b5d6701d32b595fe30.lean/index.md) — import line 145; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleExamples`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleExamples__SourceOccurrencec2518afc05f793edc7627af1.lean/index.md) — import line 146; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization`](../../../../NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md) — import line 147; pinned internal source present.
- [`GRWTSK.NumberTheory.FirstPrime`](../../../../NumberTheory/FirstPrime.lean/index.md) — import line 148; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.LeastPrime`](../../../../NumberTheory/Primes/LeastPrime.lean/index.md) — import line 149; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ComparisonEnergy`](../../../../NumberTheory/Moebius/ComparisonEnergy.lean/index.md) — import line 150; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds`](../../../../NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md) — import line 151; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFactorFilters`](../../../../NumberTheory/Moebius/PrimeFactorFilters.lean/index.md) — import line 152; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy`](../../../../NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md) — import line 153; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy`](../../../../NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md) — import line 154; pinned internal source present.
- [`GRWTSK.NumberTheory.Prime.ReciprocalMass`](../../../../NumberTheory/Primes/ReciprocalMass.lean/index.md) — import line 155; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../../NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md) — import line 156; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicEnergy`](../../../../NumberTheory/Moebius/DyadicEnergy.lean/index.md) — import line 157; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences`](../../../../NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md) — import line 158; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums`](../../../../NumberTheory/Moebius/FiniteLaplaceSums.lean/index.md) — import line 159; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace`](../../../../NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md) — import line 160; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../../NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md) — import line 161; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteEulerProduct`](../../../../NumberTheory/Moebius/FiniteEulerProduct.lean/index.md) — import line 162; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt`](../../../../NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md) — import line 163; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth`](../../../../NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md) — import line 164; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries`](../../../../NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md) — import line 165; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareGrowth`](../../../../NumberTheory/Moebius/MeanSquareGrowth.lean/index.md) — import line 166; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity`](../../../../NumberTheory/Moebius/WeightedIntegralContinuity.lean/index.md) — import line 167; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy`](../../../../NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md) — import line 168; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy`](../../../../NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md) — import line 169; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth`](../../../../NumberTheory/Moebius/PrimePrefixGrowth.lean/index.md) — import line 170; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation`](../../../../NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md) — import line 171; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimitiveIdentification`](../../../../NumberTheory/Moebius/PrimitiveIdentification.lean/index.md) — import line 172; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SectorEssentialSuprema`](../../../../NumberTheory/Moebius/SectorEssentialSuprema.lean/index.md) — import line 173; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRegularization`](../../../../NumberTheory/Zeta/PoleRegularization.lean/index.md) — import line 174; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria`](../../../../NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/index.md) — import line 175; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.HolomorphicFilteredReciprocal`](../../../../NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/index.md) — import line 176; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect`](../../../../NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/index.md) — import line 177; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../NumberTheory/Zeta/Riemann/Hypothesis.lean/index.md) — import line 178; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion`](../../../../NumberTheory/Zeta/Riemann/DefectCriterion.lean/index.md) — import line 179; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann`](../../../../NumberTheory/Zeta/Riemann.lean/index.md) — import line 180; pinned internal source present.
- [`GRWTSK.Spectral.GapTransport`](../../../../Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md) — import line 181; pinned internal source present.
- [`GRWTSK.Spectral.MatrixCountComparison`](../../../../Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/index.md) — import line 182; pinned internal source present.
- [`GRWTSK.Spectral.SturmianFiniteVolume`](../../../../Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/index.md) — import line 183; pinned internal source present.
- [`GRWTSK.Spectral.DirichletCut`](../../../../Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md) — import line 184; pinned internal source present.
- [`GRWTSK.Spectral.FreeDirichletSpectrum`](../../../../Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md) — import line 185; pinned internal source present.
- [`GRWTSK.Spectral.FreeIDS`](../../../../Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencee53e67e18cd12134119aa05c.lean/index.md) — import line 186; pinned internal source present.
- [`GRWTSK.Spectral.SturmianBlockCounts`](../../../../Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md) — import line 187; pinned internal source present.
- [`GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct`](../../../../Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md) — import line 190; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../../Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/index.md) — import line 191; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../../Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md) — import line 192; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence`](../../../../Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence87b55907d2ba6a854b10e417.lean/index.md) — import line 193; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds`](../../../../Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md) — import line 194; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence`](../../../../Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/index.md) — import line 195; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence`](../../../../Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/index.md) — import line 196; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds`](../../../../Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/index.md) — import line 197; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeSubsetPotentialBounds`](../../../../Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md) — import line 198; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts__SourceOccurrence639d86d7014d0b023ad24fe3.lean/index.md) — import line 199; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.QuadraticKernelEnergyEquivalence`](../../../../Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence__SourceOccurrence184eefda797211ad3333339f.lean/index.md) — import line 200; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SelectedPrimeChainBounds`](../../../../Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrence08ca87933c85c4fb3d9a4a4e.lean/index.md) — import line 201; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) — import line 202; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives`](../../../../Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/index.md) — import line 203; pinned internal source present.
- [`GRWTSK.Analysis.CausalTranslation.ExponentialResponse`](../../../../Analysis/CausalTranslation/ExponentialResponse.lean/index.md) — import line 204; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.AngularFrequencyParseval`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md) — import line 205; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DampedRecordingParseval`](../../../../NumberTheory/Moebius/DampedRecordingParseval.lean/index.md) — import line 206; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.VerticalLineCriterion`](../../../../NumberTheory/Moebius/VerticalLineCriterion.lean/index.md) — import line 207; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity`](../../../../NumberTheory/Moebius/VerticalLineMonotonicity.lean/index.md) — import line 208; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks`](../../../../NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md) — import line 209; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary`](../../../../NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md) — import line 210; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefix`](../../../../NumberTheory/Moebius/ReciprocalPrefix.lean/index.md) — import line 211; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.FinitePhraseProcess`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md) — import line 212; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) — import line 213; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityFiniteSums`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/index.md) — import line 214; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeReciprocalForm`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean/index.md) — import line 215; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebiusCorrection`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/index.md) — import line 216; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DivisibleDensityRow`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/index.md) — import line 217; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusReciprocalPrefix`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/index.md) — import line 218; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusTruncation`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusTruncation.lean/index.md) — import line 219; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md) — import line 220; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md) — import line 221; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md) — import line 222; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/index.md) — import line 223; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfMoment`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md) — import line 224; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMomentTails`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/index.md) — import line 225; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityReciprocalPrefix`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/index.md) — import line 226; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/index.md) — import line 227; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/index.md) — import line 228; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.ComplexMoebiusCast`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/index.md) — import line 229; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.SquarefulMoebiusReturn`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/index.md) — import line 230; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.SquarefreeMoebiusSum`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeMoebiusSum.lean/index.md) — import line 231; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.TruncatedMoebiusSeries`](../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/index.md) — import line 232; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.ClosedMoebiusPolynomial`](../../../../NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/index.md) — import line 233; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter`](../../../../NumberTheory/Moebius/ReciprocalPrefixDensityAdapter.lean/index.md) — import line 234; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel`](../../../../NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md) — import line 235; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth`](../../../../NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md) — import line 236; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect`](../../../../NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md) — import line 237; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence`](../../../../NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md) — import line 238; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare`](../../../../NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md) — import line 239; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare`](../../../../NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md) — import line 240; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy`](../../../../NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/index.md) — import line 241; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds`](../../../../NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md) — import line 242; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability`](../../../../NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/index.md) — import line 243; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving`](../../../../NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md) — import line 244; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence`](../../../../NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md) — import line 245; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy`](../../../../NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean/index.md) — import line 246; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound`](../../../../NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/index.md) — import line 247; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence`](../../../../NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/index.md) — import line 248; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation`](../../../../NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean/index.md) — import line 249; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound`](../../../../NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean/index.md) — import line 250; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md) — import line 251; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/index.md) — import line 252; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) — import line 253; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.PrimePhasePacketCertificates`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md) — import line 254; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.QuadraticKernelTruncation`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md) — import line 255; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 256; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SignedPrimePhaseExamples.lean/index.md) — import line 257; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.LogarithmicCharacterGramBounds`](../../../../Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md) — import line 258; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 259; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence`](../../../../Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean/index.md) — import line 260; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds`](../../../../Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/index.md) — import line 261; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../Analysis/InnerProductSpace/SignedWindowGramIdentity.lean/index.md) — import line 262; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates`](../../../../Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean/index.md) — import line 263; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds`](../../../../Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md) — import line 264; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md) — import line 265; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md) — import line 266; pinned internal source present.
- [`GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum`](../../../../Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md) — import line 267; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.DirichletResponseStatus`](../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/DirichletResponseStatus__SourceOccurrence65927fdc4e10d69700149f12.lean/index.md) — import line 268; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.EnergyInterfaceEquivalence`](../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/EnergyInterfaceEquivalence__SourceOccurrence7939e474243ec28eb81a075c.lean/index.md) — import line 269; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusPrimeShellStatus`](../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/MoebiusPrimeShellStatus__SourceOccurrence2b14005a9be4ee088c1668ab.lean/index.md) — import line 270; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus`](../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/MoebiusResponseStatus__SourceOccurrence45529f488747b3b0d2cd373c.lean/index.md) — import line 271; pinned internal source present.
- [`GRWTSK.Logic.ProofEvidence.ProvenanceCertificates`](../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean/index.md) — import line 272; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds`](../../../../Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/index.md) — import line 273; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../../Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/index.md) — import line 274; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope`](../../../../Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence1dcd059c30c3af764cb9744e.lean/index.md) — import line 275; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../../Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/index.md) — import line 276; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini`](../../../../Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/index.md) — import line 277; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CompositeActivationExamples`](../../../../NumberTheory/Moebius/CompositeActivationExamples.lean/index.md) — import line 278; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 279; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 280; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md) — import line 281; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../NumberTheory/Moebius/LogarithmicResponse.lean/index.md) — import line 282; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 283; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../../NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/index.md) — import line 284; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeProductPrefixEnergy`](../../../../NumberTheory/Moebius/PrimeProductPrefixEnergy.lean/index.md) — import line 285; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition`](../../../../NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md) — import line 286; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.QuadraticTransformBoundConversion`](../../../../NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/index.md) — import line 287; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification`](../../../../NumberTheory/Moebius/ResponseBudgetIdentification.lean/index.md) — import line 288; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SubsetPotentialObstruction`](../../../../NumberTheory/Moebius/SubsetPotentialObstruction.lean/index.md) — import line 289; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeIntervalResponseEnergyGrowth`](../../../../NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md) — import line 290; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth`](../../../../NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md) — import line 291; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeBlockCost`](../../../../NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeBlockCost.lean/index.md) — import line 292; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds`](../../../../NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/index.md) — import line 293; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound`](../../../../NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md) — import line 294; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds`](../../../../NumberTheory/Zeta/ReciprocalDecayBounds.lean/index.md) — import line 295; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry`](../../../../NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/index.md) — import line 296; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions`](../../../../NumberTheory/Zeta/ResponseBoundZeroConversions.lean/index.md) — import line 297; pinned internal source present.
- [`GRWTSK.Order.WellFounded.AdditiveNaturalRank`](../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean/index.md) — import line 298; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments`](../../../../Analysis/Convolution/CompactProfileDifferentialMoments.lean/index.md) — import line 299; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment`](../../../../Analysis/Convolution/CompactProfileFirstPoleMoment.lean/index.md) — import line 300; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FiniteTranslateIndependence`](../../../../Analysis/Convolution/FiniteTranslateIndependence.lean/index.md) — import line 301; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FirstMomentConvolution`](../../../../Analysis/Convolution/FirstMomentConvolution.lean/index.md) — import line 302; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds`](../../../../Analysis/Inequalities/CompactProfileDifferentialBounds.lean/index.md) — import line 303; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds`](../../../../Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean/index.md) — import line 304; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices`](../../../../Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md) — import line 305; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation`](../../../../Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md) — import line 306; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost`](../../../../Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md) — import line 307; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation`](../../../../Analysis/InnerProductSpace/CausalContactSeparation.lean/index.md) — import line 308; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation`](../../../../Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/index.md) — import line 309; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction`](../../../../Analysis/InnerProductSpace/CausalGramCongruenceObstruction.lean/index.md) — import line 310; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization`](../../../../Analysis/InnerProductSpace/CausalIndividualRealization.lean/index.md) — import line 311; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost`](../../../../Analysis/InnerProductSpace/CausalLastLabelOperatorCost.lean/index.md) — import line 312; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalRealizationPolynomialObstruction`](../../../../Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean/index.md) — import line 313; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite`](../../../../Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md) — import line 314; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization`](../../../../Analysis/InnerProductSpace/NonzeroVectorRealization.lean/index.md) — import line 315; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicMoment`](../../../../Analysis/IntegralTransforms/CompactProfileLogarithmicMoment.lean/index.md) — import line 316; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity`](../../../../Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/index.md) — import line 317; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution`](../../../../Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md) — import line 318; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff`](../../../../Analysis/IntegralTransforms/LogarithmicProfileCutoff.lean/index.md) — import line 319; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative`](../../../../Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md) — import line 320; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity`](../../../../Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean/index.md) — import line 321; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights`](../../../../Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md) — import line 322; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments`](../../../../Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/index.md) — import line 323; pinned internal source present.
- [`GRWTSK.Analysis.Integration.FiniteUnitSumVariation`](../../../../Analysis/RealAnalysis/Integration/FiniteUnitSumVariation.lean/index.md) — import line 324; pinned internal source present.
- [`GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance`](../../../../Analysis/RealAnalysis/Integration/PositiveHalfLineCutoffBalance.lean/index.md) — import line 325; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap`](../../../../Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md) — import line 326; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination`](../../../../Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md) — import line 327; pinned internal source present.
- [`GRWTSK.LinearAlgebra.BilinearForm.ZeroCoordinateObstruction`](../../../../Algebra/LinearAlgebra/BilinearForm/ZeroCoordinateObstruction.lean/index.md) — import line 328; pinned internal source present.
- [`GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction`](../../../../Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/index.md) — import line 329; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.SingularCongruenceObstruction`](../../../../Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction__SourceOccurrencee07877626199a8e09c54304e.lean/index.md) — import line 330; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelBounds`](../../../../Analysis/Inequalities/LogarithmicShiftKernelBounds.lean/index.md) — import line 331; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.EvenLinearDefect`](../../../../Analysis/RealAnalysis/DifferentialCalculus/EvenLinearDefect.lean/index.md) — import line 332; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability`](../../../../Analysis/RealAnalysis/DifferentialCalculus/SupportEdgeDifferentiability.lean/index.md) — import line 333; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy`](../../../../Analysis/Convolution/AutocorrelationTranslationEnergy.lean/index.md) — import line 334; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction`](../../../../Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/index.md) — import line 335; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileSupportEdge`](../../../../Analysis/Convolution/CompactProfileSupportEdge.lean/index.md) — import line 336; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactSupportContact`](../../../../Analysis/Convolution/CompactSupportContact.lean/index.md) — import line 337; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicDerivative`](../../../../Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean/index.md) — import line 338; pinned internal source present.
- [`GRWTSK.Analysis.Integration.TranslationSeamLowerBound`](../../../../Analysis/RealAnalysis/Integration/TranslationSeamLowerBound.lean/index.md) — import line 339; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.LogarithmicShiftKernelRegularity`](../../../../Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean/index.md) — import line 340; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileTailSigns`](../../../../Analysis/Convolution/CompactProfileTailSigns.lean/index.md) — import line 341; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns`](../../../../Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md) — import line 342; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelPositiveSector`](../../../../Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean/index.md) — import line 343; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.ConjugateQuartic`](../../../../Algebra/Polynomial/ConjugateQuartic.lean/index.md) — import line 344; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion`](../../../../NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/index.md) — import line 345; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion`](../../../../NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md) — import line 346; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation`](../../../../NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md) — import line 347; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization`](../../../../NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md) — import line 348; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction`](../../../../NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md) — import line 349; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction`](../../../../NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md) — import line 350; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction`](../../../../NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md) — import line 351; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram`](../../../../NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/index.md) — import line 352; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic`](../../../../NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/index.md) — import line 353; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteSquareSum`](../../../../Analysis/Inequalities/FiniteSquareSum.lean/index.md) — import line 354; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.TraceRank`](../../../../Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/index.md) — import line 355; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IndexedDictionary`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/index.md) — import line 356; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DictionaryRevision`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrenceaca87234f3b7037a7f107897.lean/index.md) — import line 357; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.DecisionCertificate`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/index.md) — import line 358; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.AppendOnlyHistory`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrenceee11f403760fcab430847695.lean/index.md) — import line 359; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalDictionary`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalDictionary__SourceOccurrence46dc71053d429d12dbeed04d.lean/index.md) — import line 360; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability`](../../../../Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md) — import line 361; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IncrementalComposition`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalComposition__SourceOccurrence40ccaba0ca5f094929e8e821.lean/index.md) — import line 362; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability`](../../../../Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md) — import line 363; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.BatchCertificate`](../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate__SourceOccurrence3cf3435a0816a65228f21c54.lean/index.md) — import line 364; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability`](../../../../Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md) — import line 365; pinned internal source present.
- [`GRWTSK.Order.Embeddings.PrefixObstruction`](../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/index.md) — import line 366; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PathOccurrences`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md) — import line 367; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean/index.md) — import line 368; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ReverseInversion`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md) — import line 369; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EdgeTrace`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/index.md) — import line 370; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.LogarithmicGaussian`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/index.md) — import line 371; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PathUnfolding`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/index.md) — import line 372; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) — import line 373; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrence91a9c8029ba9e6d66d16bbbd.lean/index.md) — import line 374; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianContour`](../../../../NumberTheory/LSeries/GaussianContour.lean/index.md) — import line 375; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.EndpointSection`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/index.md) — import line 376; pinned internal source present.
- [`GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus`](../../../../Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md) — import line 377; pinned internal source present.
- [`GRWTSK.NumberTheory.LSeries.GaussianDyadic`](../../../../NumberTheory/LSeries/GaussianDyadic.lean/index.md) — import line 378; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixInventory`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/index.md) — import line 379; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) — import line 380; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md) — import line 381; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md) — import line 382; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/index.md) — import line 383; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md) — import line 384; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md) — import line 385; pinned internal source present.
- [`GRWTSK.Analysis.Series.DyadicKernel`](../../../../Analysis/Series/DyadicKernel.lean/index.md) — import line 386; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean/index.md) — import line 387; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableState`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md) — import line 388; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/index.md) — import line 389; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md) — import line 390; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.SchwartzMoments`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md) — import line 391; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianFourierMoments`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/index.md) — import line 392; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/index.md) — import line 393; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogFlow`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/index.md) — import line 394; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogWindow`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md) — import line 395; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/index.md) — import line 396; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianDensityMoments`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDensityMoments.lean/index.md) — import line 397; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/index.md) — import line 398; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactCutoff`](../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md) — import line 399; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md) — import line 400; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean/index.md) — import line 401; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation`](../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md) — import line 402; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/index.md) — import line 403; pinned internal source present.
- [`GRWTSK.NumberTheory.Ideal.CompactNormSupport`](../../../../NumberTheory/Ideal/CompactNormSupport.lean/index.md) — import line 404; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/index.md) — import line 405; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals`](../../../../NumberTheory/Cyclotomic/ThirdCyclotomicIdeals.lean/index.md) — import line 406; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 407; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/index.md) — import line 408; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/ABCStatement.lean/index.md) — import line 409; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean/index.md) — import line 410; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSet`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/index.md) — import line 411; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Signed`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/index.md) — import line 412; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean/index.md) — import line 413; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.NonprimitiveObstruction`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean/index.md) — import line 414; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale`](../../../../Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/index.md) — import line 415; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.Coherence`](../../../../Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/index.md) — import line 416; pinned internal source present.
- [`GRWTSK.LinearAlgebra.OrientedRealLine.FiniteComparison`](../../../../Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/index.md) — import line 417; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.LogThetaComparison`](../../../../NumberTheory/ArithmeticGeometry/LogThetaComparison.lean/index.md) — import line 418; pinned internal source present.
- [`GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison`](../../../../Analysis/FiniteSums/WeightedDegreeComparison.lean/index.md) — import line 419; pinned internal source present.
- [`GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound`](../../../../NumberTheory/Polynomial/DerivativeRadicalBound.lean/index.md) — import line 420; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md) — import line 422; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.DisjointTranspositions`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md) — import line 423; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md) — import line 424; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartialSumCertificate`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean/index.md) — import line 425; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint`](../../../../DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md) — import line 426; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSum`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md) — import line 427; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md) — import line 428; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PrimeCyclicRearrangement`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean/index.md) — import line 429; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeDivisorFilter`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/index.md) — import line 430; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/index.md) — import line 431; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md) — import line 432; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md) — import line 434; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/CyclicSumsetGrowth.lean/index.md) — import line 435; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModCharacterEnergy`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md) — import line 436; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModIndependentSelection`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModIndependentSelection.lean/index.md) — import line 437; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteExponentialLayers`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md) — import line 438; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModPartitionEnergy`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md) — import line 439; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedPartition`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md) — import line 440; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySets`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md) — import line 441; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md) — import line 442; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md) — import line 443; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/index.md) — import line 444; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction`](../../../../NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean/index.md) — import line 445; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md) — import line 446; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md) — import line 447; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModLargerSlice`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md) — import line 448; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.PartitionExposureChecks`](../../../../CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/index.md) — import line 449; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 450; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments`](../../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/index.md) — import line 451; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md) — import line 452; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters`](../../../../NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/index.md) — import line 453; pinned internal source present.
- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup`](../../../../CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableDirectLookup.lean/index.md) — import line 454; pinned internal source present.
- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi`](../../../../NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/index.md) — import line 455; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.GlyphPatchReconstruction`](../../../../Analysis/ErrorBounds/GlyphPatchReconstruction.lean/index.md) — import line 456; pinned internal source present.

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
