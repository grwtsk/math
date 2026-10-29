import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryChannels

section UpperBoundaryChannelsExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryChannels
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointBoundaryTransport SourceSampling

example (A : ℝ) (k q : ℕ) : channelKernel A k q =
    if ((k * q : ℕ) : ℝ) < Real.exp (2 * A) then
      Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) else 0 := rfl

example (A : ℝ) (k : ℕ) : upperChannel A k =
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (channelKernel A k) := rfl

example (A : ℝ) : coreValue A =
    archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) := rfl

example (A : ℝ) (k q : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) (hq : 1 ≤ q) :
    channelKernel A k q = Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) :=
  channelKernel_eq_correlation_weight A k q hA hk hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2 * A) ≤ 4 * (q : ℝ)) :
    sourceSamplingKernel A q = channelKernel A 2 q + channelKernel A 3 q :=
  sourceSamplingKernel_eq_channels A q hq hcut

example (A : ℝ) :
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (fun q ↦ sourceSamplingKernel A q) =
      upperChannel A 2 + upperChannel A 3 := source_upper_boundary_eq_channels A

example (A : ℝ) : coreValue A =
    archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) := coreValue_eq_fullKernel A

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      coreValue A - 2 * upperChannel A 2 - 2 * upperChannel A 3 :=
  sourceQuadraticValue_eq_core_sub_channels A hA

end UpperBoundaryChannelsExactStatements
