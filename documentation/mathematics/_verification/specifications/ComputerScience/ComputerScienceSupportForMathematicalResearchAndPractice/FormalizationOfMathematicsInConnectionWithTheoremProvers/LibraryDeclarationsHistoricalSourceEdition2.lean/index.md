# Verification target: GRWTSK.Logic.ProofChecking.Checks.LibraryDeclarations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e04e19785dd232aeff00d5ec3f667a0f7665719c",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/ProofChecking/Checks/LibraryDeclarations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LibraryDeclarationsHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LibraryDeclarationsHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e04e19785dd232aeff00d5ec3f667a0f7665719c`.

Source path: `GRWTSK/Logic/ProofChecking/Checks/LibraryDeclarations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/ProofChecking/Checks/LibraryDeclarations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Inference.FiniteRuleExamples`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleExamples.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Locality.FiniteRuleTransport`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleTransport.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Logic.Inference.FiniteRuleSystems`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteRuleSystemsHistoricalSourceEdition2.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences`](../../../../../../MeasureAndIntegration/EnergyGrowthEquivalences.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity`](../../../../../../GeneralTopology/WeightedIntegralContinuity.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DiagonalEnergyBounds.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../../../MeasureAndIntegration/WeightedIntegralEnergy.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareGrowth`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MeanSquareGrowth.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.HolomorphicFilteredReciprocal`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HolomorphicFilteredReciprocal.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../../../../MeasureAndIntegration/CausalResponseGram.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedIntegralGrowth.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.CausalExponentialResponse`](../../../../../../MeasureAndIntegration/CausalExponentialResponse.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy`](../../../../../../MeasureAndIntegration/MeanSquareLaplaceHolomorphy.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy`](../../../../../../MeasureAndIntegration/PolynomialLaplaceHolomorphy.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LaplaceDirichletSeries.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums`](../../../../../../MeasureAndIntegration/FiniteLaplaceSums.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriteria.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds`](../../../../../../MeasureAndIntegration/SignedIntegralSectorBounds.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.SectorEssentialSuprema`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SectorEssentialSuprema.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability`](../../../../../../DynamicalSystemsAndErgodicTheory/RevisionReachability.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.Analysis.Complex.VerticalReflection`](../../../../../../FunctionsOfAComplexVariable/VerticalReflection.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../../../../Combinatorics/FiniteDependencyClosureHistoricalSourceEdition2.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyExamples`](../../../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofCoverageHistoricalSourceEdition2.lean/index.md) — import line 29; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/BatchVerificationHistoricalSourceEdition2.lean/index.md) — import line 30; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerificationExamples`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/BatchVerificationExamplesHistoricalSourceEdition2.lean/index.md) — import line 31; pinned internal source present.
- [`GRWTSK.Logic.Certificates.ModelExamples`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/ModelExamplesHistoricalSourceEdition2.lean/index.md) — import line 32; pinned internal source present.
- [`GRWTSK.Logic.Locality.RevisionCertificates`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/index.md) — import line 33; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples`](../../../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationExamples.lean/index.md) — import line 34; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.CertifiedPartialMaps`](../../../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/index.md) — import line 35; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/index.md) — import line 36; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds`](../../../../../../RealFunctions/InequalitiesInRealAnalysis/InequalitiesFiniteShiftedDerivativeBounds.lean/index.md) — import line 37; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../../../../RealFunctions/PartialMapComposition.lean/index.md) — import line 38; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/index.md) — import line 39; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredDependencyRevision`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredDependencyRevision.lean/index.md) — import line 40; pinned internal source present.
- [`GRWTSK.Logic.Locality.AnchoredCertificates`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/index.md) — import line 41; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization`](../../../../../../DynamicalSystemsAndErgodicTheory/AnchoredReinitialization.lean/index.md) — import line 42; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationReachability`](../../../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/index.md) — import line 43; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitialization`](../../../../../../DynamicalSystemsAndErgodicTheory/StateReinitialization.lean/index.md) — import line 44; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples`](../../../../../../DynamicalSystemsAndErgodicTheory/BudgetResetCounterexamples.lean/index.md) — import line 45; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.StateReinitializationExamples`](../../../../../../DynamicalSystemsAndErgodicTheory/StateReinitializationExamples.lean/index.md) — import line 46; pinned internal source present.
- [`GRWTSK.Logic.Certificates.DependencyRevisionExamples`](../../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionExamplesHistoricalSourceEdition2.lean/index.md) — import line 47; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability`](../../../../../../DynamicalSystemsAndErgodicTheory/VerificationReachability.lean/index.md) — import line 48; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachabilityExamples`](../../../../../../DynamicalSystemsAndErgodicTheory/VerificationReachabilityExamples.lean/index.md) — import line 49; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance`](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DiscreteEnergyBalance.lean/index.md) — import line 50; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula`](../../../../../../MeasureAndIntegration/CompactProfileExplicitFormula.lean/index.md) — import line 51; pinned internal source present.
- [`GRWTSK.Analysis.Integration.CompactPolynomialMoments`](../../../../../../MeasureAndIntegration/CompactPolynomialMoments.lean/index.md) — import line 52; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../../../../MeasureAndIntegration/CompactProfileDilation.lean/index.md) — import line 53; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../../../../MeasureAndIntegration/DilationGram.lean/index.md) — import line 54; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../../../MeasureAndIntegration/CompactProfileHigherDerivatives.lean/index.md) — import line 55; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation`](../../../../../../MeasureAndIntegration/DilationResponseSeparation.lean/index.md) — import line 56; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization`](../../../../../../MeasureAndIntegration/CompactResidualNormalization.lean/index.md) — import line 57; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileCorrelation`](../../../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/index.md) — import line 58; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactPolynomialDerivatives`](../../../../../../MeasureAndIntegration/CompactPolynomialDerivatives.lean/index.md) — import line 59; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples`](../../../../../../RealFunctions/CompactProfileBoundaryCounterexamples.lean/index.md) — import line 60; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CompactProfilePairingIntegrability.lean/index.md) — import line 61; pinned internal source present.
- [`GRWTSK.Analysis.Distribution.WeakSecondDerivativeUniqueness`](../../../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/index.md) — import line 62; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRegularization`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleRegularization.lean/index.md) — import line 63; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a65798ae7c8b219ab3d67bd1939f006bab6b4ae4a37ad82b8badf682d61afd13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/ProofChecking/Checks/LibraryDeclarations.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/LibraryDeclarations__SourceOccurrence2415fb727aeff1e6fcba0c01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
