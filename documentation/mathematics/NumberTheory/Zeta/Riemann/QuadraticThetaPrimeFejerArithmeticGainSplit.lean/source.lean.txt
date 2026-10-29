/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerGradedGainBudget
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Bandwidth/arithmetic split for the threshold-graded Fejer supplier

The preceding gain-budget packet proves that a corrected threshold-rho Fejer
supplier with bandwidth exponent beta needs total gain

  1 - rho + beta / 2.

This file separates that total into:

* `beta / 2`, the gain required to neutralize the raw square-root bandwidth
  loss in the Fourier reconstruction;
* `1 - rho`, a residual arithmetic gain which remains even after complete
  bandwidth neutralization.

Writing the residual arithmetic gain as alpha, the improved smoothed-value
exponent is

  rho + beta/2 - (beta/2 + alpha) = rho - alpha.

It reaches the quadratic target `2*rho - 1` exactly when

  alpha >= 1 - rho.

At rho=7/8, the residual arithmetic gain is therefore at least 1/8.  At the
boundary-minimal Fejer bandwidth beta=1/4, bandwidth neutralization itself costs
1/8, so the sharp split is

  total quarter gain = bandwidth eighth + arithmetic eighth.

The file types a split supplier and proves that it converts to the existing
corrected threshold-graded supplier.  It does not construct either supplier or
prove an arithmetic cancellation estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BANDWIDTH_ARITHMETIC_GAIN_SPLIT_SOURCE_PROVED /
SEVEN_EIGHTHS_ARITHMETIC_EIGHTH_REQUIRED /
SPLIT_SUPPLIER_INTERFACE_TYPED /
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- Gain needed to remove the raw square-root bandwidth loss. -/
def gradedBandwidthGain (β : ℝ) : ℝ :=
  β / 2

/-- Arithmetic gain that remains after complete bandwidth neutralization. -/
def gradedArithmeticGainRequirement (ρ : ℝ) : ℝ :=
  1 - ρ

/-- Smoothed-value exponent after the bandwidth gain and a separate arithmetic
gain alpha have both been supplied. -/
def gradedSplitSmoothedValueExponent
    (ρ β α : ℝ) : ℝ :=
  gradedSmoothedValueExponent ρ β
    (gradedBandwidthGain β + α)

/-- The total gain requirement splits exactly into bandwidth and arithmetic
components. -/
theorem gradedSmoothedValueGainRequirement_eq_bandwidth_add_arithmetic
    (ρ β : ℝ) :
    gradedSmoothedValueGainRequirement ρ β =
      gradedBandwidthGain β +
        gradedArithmeticGainRequirement ρ := by
  unfold gradedSmoothedValueGainRequirement
    gradedBandwidthGain gradedArithmeticGainRequirement
  ring

/-- Once the square-root bandwidth loss is neutralized, the value exponent no
longer depends on beta. -/
theorem gradedSplitSmoothedValueExponent_eq
    (ρ β α : ℝ) :
    gradedSplitSmoothedValueExponent ρ β α =
      ρ - α := by
  unfold gradedSplitSmoothedValueExponent
    gradedSmoothedValueExponent gradedBandwidthGain
    gradedFourierMaximalExponent
  ring

/-- Exact residual arithmetic obligation after bandwidth neutralization. -/
theorem gradedSplitSmoothedValueExponent_le_quadratic_iff
    {ρ β α : ℝ} :
    gradedSplitSmoothedValueExponent ρ β α ≤
        quadraticThreshold ρ ↔
      gradedArithmeticGainRequirement ρ ≤ α := by
  rw [gradedSplitSmoothedValueExponent_eq]
  unfold quadraticThreshold gradedArithmeticGainRequirement
  constructor <;> intro h <;> linarith

/-- Bandwidth neutralization by itself reaches the quadratic target only at or
beyond the unit threshold.  It cannot close any genuine subunit descent. -/
theorem bandwidthNeutralization_le_quadratic_iff
    {ρ β : ℝ} :
    gradedSmoothedValueExponent ρ β
        (gradedBandwidthGain β) ≤
          quadraticThreshold ρ ↔
      1 ≤ ρ := by
  unfold gradedSmoothedValueExponent gradedBandwidthGain
    gradedFourierMaximalExponent quadraticThreshold
  constructor <;> intro h <;> linarith

/-- Explicit subunit obstruction for pure bandwidth neutralization. -/
theorem pureBandwidthNeutralization_misses_quadratic
    {ρ β : ℝ}
    (hρ : ρ < 1) :
    quadraticThreshold ρ <
      gradedSmoothedValueExponent ρ β
        (gradedBandwidthGain β) := by
  unfold gradedSmoothedValueExponent gradedBandwidthGain
    gradedFourierMaximalExponent quadraticThreshold
  linarith

/-- The smallest bandwidth exponent permitted by the corrected Fejer boundary
estimate. -/
def boundaryMinimalFejerBandwidthExponent (ρ : ℝ) : ℝ :=
  2 * (1 - ρ)

/-- The boundary-minimal exponent makes the Fejer boundary term hit the
quadratic target exactly. -/
theorem truncatedFourierBoundary_boundaryMinimal
    (ρ : ℝ) :
    truncatedFourierBoundaryExponent
        (boundaryMinimalFejerBandwidthExponent ρ) =
      quadraticThreshold ρ := by
  unfold truncatedFourierBoundaryExponent
    boundaryMinimalFejerBandwidthExponent quadraticThreshold
  ring

/-- At the boundary-minimal bandwidth, the bandwidth and arithmetic components
are equal and their sum is twice the threshold gap. -/
theorem boundaryMinimal_totalSplitGain
    (ρ : ℝ) :
    gradedBandwidthGain
          (boundaryMinimalFejerBandwidthExponent ρ) +
        gradedArithmeticGainRequirement ρ =
      2 * (1 - ρ) := by
  unfold gradedBandwidthGain boundaryMinimalFejerBandwidthExponent
    gradedArithmeticGainRequirement
  ring

/-- Corrected supplier with the Fourier bandwidth gain and the genuinely
arithmetic gain exposed as separate fields. -/
structure ThresholdGradedPrimeFejerSplitSupplier
    (ρ β : ℝ) where
  bandwidthExponent_nonnegative : 0 ≤ β
  arithmeticGain : ℝ
  arithmeticGain_nonnegative : 0 ≤ arithmeticGain
  boundary_closure :
    truncatedFourierBoundaryExponent β ≤
      quadraticThreshold ρ
  value_closure :
    gradedSplitSmoothedValueExponent ρ β arithmeticGain ≤
      quadraticThreshold ρ
  readout :
    AllDyadicPrimeOnlyFourierCoordinateBoundAt ρ →
      DyadicPrimePartialDiscrepancyLogSqAt ρ

/-- Every split supplier exposes at least the full residual arithmetic gain
`1-rho`. -/
theorem thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement
    {ρ β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier ρ β) :
    gradedArithmeticGainRequirement ρ ≤
      supplier.arithmeticGain :=
  gradedSplitSmoothedValueExponent_le_quadratic_iff.mp
    supplier.value_closure

/-- Boundary closure and residual arithmetic closure recover the existing total
double-gap gain floor. -/
theorem thresholdGradedPrimeFejerSplitSupplier_totalGain_floor
    {ρ β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier ρ β) :
    2 * (1 - ρ) ≤
      gradedBandwidthGain β + supplier.arithmeticGain := by
  have hβ :
      2 * (1 - ρ) ≤ β :=
    truncatedFourierBoundary_le_quadratic_iff.mp
      supplier.boundary_closure
  have hα :
      1 - ρ ≤ supplier.arithmeticGain := by
    simpa [gradedArithmeticGainRequirement] using
      thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement
        supplier
  unfold gradedBandwidthGain
  linarith

/-- A split supplier canonically gives the corrected total-gain supplier. -/
def ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier
    {ρ β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier ρ β) :
    ThresholdGradedPrimeFejerSupplier ρ β where
  gain :=
    gradedBandwidthGain β + supplier.arithmeticGain
  gain_nonnegative := by
    exact add_nonneg
      (div_nonneg supplier.bandwidthExponent_nonnegative (by norm_num))
      supplier.arithmeticGain_nonnegative
  boundary_closure :=
    supplier.boundary_closure
  smoothed_value_closure := by
    simpa [gradedSplitSmoothedValueExponent] using
      supplier.value_closure
  readout :=
    supplier.readout

@[simp]
theorem sevenEighths_boundaryMinimalFejerBandwidthExponent :
    boundaryMinimalFejerBandwidthExponent ((7 : ℝ) / 8) =
      (1 : ℝ) / 4 := by
  norm_num [boundaryMinimalFejerBandwidthExponent]

@[simp]
theorem sevenEighths_gradedBandwidthGain_at_boundaryMinimum :
    gradedBandwidthGain ((1 : ℝ) / 4) =
      (1 : ℝ) / 8 := by
  norm_num [gradedBandwidthGain]

@[simp]
theorem sevenEighths_gradedArithmeticGainRequirement :
    gradedArithmeticGainRequirement ((7 : ℝ) / 8) =
      (1 : ℝ) / 8 := by
  norm_num [gradedArithmeticGainRequirement]

/-- At the boundary-minimal seven-eighths cutoff, the exact gain split is
one eighth from bandwidth neutralization plus one eighth from arithmetic
cancellation. -/
theorem sevenEighths_boundaryMinimal_exactGainSplit :
    gradedBandwidthGain ((1 : ℝ) / 4) =
        (1 : ℝ) / 8 ∧
      gradedArithmeticGainRequirement ((7 : ℝ) / 8) =
        (1 : ℝ) / 8 ∧
      gradedBandwidthGain ((1 : ℝ) / 4) +
          gradedArithmeticGainRequirement ((7 : ℝ) / 8) =
        (1 : ℝ) / 4 := by
  constructor
  · exact sevenEighths_gradedBandwidthGain_at_boundaryMinimum
  constructor
  · exact sevenEighths_gradedArithmeticGainRequirement
  · norm_num [gradedBandwidthGain, gradedArithmeticGainRequirement]

/-- Every corrected split supplier at seven eighths carries at least the
residual arithmetic eighth. -/
theorem sevenEighths_splitSupplier_arithmeticGain_ge_eighth
    {β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier
        ((7 : ℝ) / 8) β) :
    (1 : ℝ) / 8 ≤ supplier.arithmeticGain := by
  simpa [gradedArithmeticGainRequirement] using
    thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement
      supplier

/-- The split interface retains the previously proved total quarter-power
floor. -/
theorem sevenEighths_splitSupplier_totalGain_ge_quarter
    {β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier
        ((7 : ℝ) / 8) β) :
    (1 : ℝ) / 4 ≤
      gradedBandwidthGain β + supplier.arithmeticGain := by
  have h :=
    thresholdGradedPrimeFejerSplitSupplier_totalGain_floor supplier
  norm_num at h
  exact h

/-- A concrete split supplier at seven eighths discharges the existing finite
partial-prime discrepancy target without importing the critical-line premise. -/
theorem sevenEighths_splitSupplier_to_partialDiscrepancy
    {β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSplitSupplier
        ((7 : ℝ) / 8) β)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  supplier.readout hgraded

end GRWTSK.RiemannHypothesis
