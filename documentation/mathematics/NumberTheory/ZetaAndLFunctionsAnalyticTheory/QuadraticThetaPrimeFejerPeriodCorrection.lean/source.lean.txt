/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeCanonicalFejerPrefixOperator
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The originally defined signed sample is periodic with arithmetic period X. -/
theorem signedSampledTriangularKernel_add_period
    (X N : ℕ) (r : ℤ) :
    signedSampledTriangularKernel X N (r + X) =
      signedSampledTriangularKernel X N r := by
  by_cases hX : X = 0
  · subst X
    simp [signedSampledTriangularKernel]
  · have hXr : (X : ℝ) ≠ 0 := by exact_mod_cast hX
    unfold signedSampledTriangularKernel
    congr 2
    apply congrArg Complex.re
    congr 1
    have hperiod :=
      AddCircle.coe_add_period (1 : ℝ) ((r : ℝ) / (X : ℝ))
    convert hperiod.symm using 1
    field_simp [hXr]
    ring

/-- Consequently the first canonical prefix weight aliases points separated by X. -/
theorem canonicalFejerPrefixWeight_add_scale
    (X N m p : ℕ) :
    canonicalFejerPrefixWeight X N m (p + X) =
      canonicalFejerPrefixWeight X N m p := by
  unfold canonicalFejerPrefixWeight
  apply Finset.sum_congr rfl
  intro q hq
  have harg :
      ((p + X : ℕ) : ℤ) - (q : ℤ) =
        ((p : ℤ) - (q : ℤ)) + (X : ℤ) := by
    push_cast
    ring
  rw [harg]
  exact signedSampledTriangularKernel_add_period
    X N ((p : ℤ) - (q : ℤ))

/-- General signed triangular-kernel sample at an explicitly chosen lattice period. -/
def signedSampledTriangularKernelAtPeriod
    (L N : ℕ) (r : ℤ) : ℝ :=
  (1 / (L : ℝ)) *
    (symmetricTriangularKernel N
      ((((r : ℝ) / (L : ℝ))) : AddCircle (1 : ℝ))).re

/-- Norm sample at an explicitly chosen lattice period. -/
def sampledTriangularKernelAtPeriod
    (L N d : ℕ) : ℝ :=
  (1 / (L : ℝ)) *
    ‖symmetricTriangularKernel N
      ((((d : ℝ) / (L : ℝ))) : AddCircle (1 : ℝ))‖

/-- Non-aliasing period used for the arithmetic octave (2X,4X]. -/
def fejerOctavePeriod (X : ℕ) : ℕ := 4 * X

/-- Corrected Fejer prefix weight: use period 4X, not X. -/
def nonAliasingFejerPrefixWeight
    (X N m p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Ioc (2 * X) m,
    signedSampledTriangularKernelAtPeriod
      (fejerOctavePeriod X) N
      ((p : ℤ) - (q : ℤ))

/-- Corrected smoothed prime mass. -/
def nonAliasingFejerPrimeMass
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ Finset.Ioc (2 * X) (4 * X) with p.Prime,
    nonAliasingFejerPrefixWeight X N m p * Real.log p

/-- Corrected matching counting mass. -/
def nonAliasingFejerCountingMass
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
    nonAliasingFejerPrefixWeight X N m n

/-- Corrected fixed smoothing operator on the whole octave. -/
def nonAliasingPrimePrefixFejerOperator :
    PrimePrefixSmoothingOperator where
  value X N m :=
    nonAliasingFejerPrimeMass X N m -
      nonAliasingFejerCountingMass X N m

/-- Every difference of two arithmetic points in the octave has magnitude at
most half of the corrected period 4X. -/
theorem octave_difference_inside_corrected_half_period
    {X p q : ℕ}
    (hp0 : 2 * X < p) (hp1 : p ≤ 4 * X)
    (hq0 : 2 * X < q) (hq1 : q ≤ 4 * X) :
    |((p : ℤ) - (q : ℤ))| ≤ (2 * X : ℤ) := by
  rw [abs_le]
  constructor <;> omega

/-- Period-4X lattice sample inherits square decay on every relevant positive
distance d <= 2X. -/
theorem sampledTriangularKernelAtOctavePeriod_le
    {X N d : ℕ}
    (hX : 0 < X)
    (hN : 0 < N)
    (hd : 0 < d)
    (hdMax : d ≤ 2 * X) :
    sampledTriangularKernelAtPeriod (fejerOctavePeriod X) N d ≤
      (X : ℝ) / ((N : ℝ) * (d : ℝ)^2) := by
  unfold sampledTriangularKernelAtPeriod fejerOctavePeriod
  have hL : (0 : ℝ) < (4 * X : ℕ) := by
    exact_mod_cast (by omega : 0 < 4 * X)
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  have hdr : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
  have ht0 :
      0 < |((d : ℝ) / ((4 * X : ℕ) : ℝ))| := by
    rw [abs_of_pos (div_pos hdr hL)]
    exact div_pos hdr hL
  have htHalf :
      |((d : ℝ) / ((4 * X : ℕ) : ℝ))| ≤ (1 : ℝ) / 2 := by
    rw [abs_of_pos (div_pos hdr hL)]
    rw [div_le_iff₀ hL]
    have hdR : (d : ℝ) ≤ 2 * (X : ℝ) := by exact_mod_cast hdMax
    norm_num at *
    linarith
  have hK :=
    symmetricTriangularKernelDecay_explicit hN ht0 htHalf
  have hscale : 0 ≤ (1 : ℝ) / ((4 * X : ℕ) : ℝ) := by positivity
  have hs := mul_le_mul_of_nonneg_left hK hscale
  calc
    (1 / (((4 * X : ℕ) : ℝ))) *
        ‖symmetricTriangularKernel N
          (((d : ℝ) / (((4 * X : ℕ) : ℝ))) : AddCircle (1 : ℝ))‖
      ≤ (1 / (((4 * X : ℕ) : ℝ))) *
        (((1 : ℝ) / 4) /
          ((N : ℝ) * ((d : ℝ) / (((4 * X : ℕ) : ℝ)))^2)) := hs
    _ = (X : ℝ) / ((N : ℝ) * (d : ℝ)^2) := by
      have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
      field_simp [hXr.ne', hNr.ne', hdr.ne']
      ring

/-- Source-faithful representation of the corrected operator. -/
def NonAliasingPrimePrefixFejerDiscrepancyRepresentation : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      nonAliasingPrimePrefixFejerOperator.value X N m =
        nonAliasingFejerPrimeMass X N m -
          nonAliasingFejerCountingMass X N m

theorem nonAliasingPrimePrefixFejerDiscrepancyRepresentation :
    NonAliasingPrimePrefixFejerDiscrepancyRepresentation := by
  intro X N m hX hN hm0 hm1
  rfl

/-- Correct period-4X tail budget. -/
def nonAliasingFejerTailBudget
    (X N : ℕ) : ℝ :=
  Real.log ((4 * X : ℕ) : ℝ) *
    ∑ d ∈ Finset.Icc 1 (2 * X),
      sampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N d

/-- Corrected genuine tail-comparison frontier for the fixed non-aliasing
operator and its matching period-4X sampled-kernel budget. -/
def NonAliasingPrimePrefixFejerTailComparison : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
        nonAliasingFejerTailBudget X N

end GRWTSK.RiemannHypothesis
