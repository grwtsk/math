/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #629. Direct stacked parent: draft PR #626 at
`6f91233ddc4397f87eeef1e94e248e31c67e9929`.
-/
import GRWTSK.NumberTheory.Moebius.ParitySignedResidueConvolution

/-!
# Growing-shift affine form of the signed residue convolution

The exact signed residue convolution from PR #626 is indexed by strict
same-parity endpoint pairs `u < v`.  This module reindexes those pairs by the
positive shift

`h = (v-u)/2`,

so that

`v = u + 2h`.

The residue coordinate becomes

`floor(u/2) + floor(v/2) = 2*floor(u/2) + h`,

and the Möbius factors become the growing affine family

`mu(u) * mu(u+2h)`.

Thus the live nonzero-frequency obligation is source-identical to an aggregate
of additive-twisted binary Chowla correlations with growing shift, growing
square modulus, and growing frequency.  No estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive shifts large enough to index every strict endpoint pair. -/
def positiveEndpointShiftSet (b : ℕ) : Finset ℕ :=
  Finset.Ico 1 (b + 1)

/-- Exact base support for parity `r` and positive shift `h`.

The endpoint conditions are retained as

`1 <= u <= b`, `u % 2 = r`, and `u + 2*h <= b`. -/
def parityAffineShiftBaseSet
    (b r h : ℕ) : Finset ℕ :=
  (endpointParitySet b r).filter (fun u => u + 2 * h ≤ b)

/-- Strict endpoint pairs carrying one fixed positive shift. -/
def endpointParityFixedShiftPairSet
    (b r h : ℕ) : Finset (ℕ × ℕ) :=
  (endpointParityStrictPairSet b r).filter
    (fun uv => (uv.2 - uv.1) / 2 = h)

/-- A strict same-parity endpoint pair has a positive integral half-difference,
and the upper endpoint is recovered exactly from it. -/
theorem endpointParityStrictPair_shift_spec
    {b r : ℕ} {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    let h := (uv.2 - uv.1) / 2
    0 < h ∧ uv.2 = uv.1 + 2 * h := by
  rcases Finset.mem_filter.mp huv with ⟨huvProd, huvLt⟩
  rcases Finset.mem_product.mp huvProd with ⟨hu, hv⟩
  have huParity := (Finset.mem_filter.mp hu).2
  have hvParity := (Finset.mem_filter.mp hv).2
  dsimp
  omega

/-- The half-difference of a strict endpoint pair lies in the declared
positive shift set. -/
theorem endpointParityStrictPair_shift_mem
    {b r : ℕ} {uv : ℕ × ℕ}
    (huv : uv ∈ endpointParityStrictPairSet b r) :
    (uv.2 - uv.1) / 2 ∈ positiveEndpointShiftSet b := by
  have hspec := endpointParityStrictPair_shift_spec huv
  rcases Finset.mem_filter.mp huv with ⟨huvProd, _huvLt⟩
  have hv := (Finset.mem_product.mp huvProd).2
  have hvI := Finset.mem_Icc.mp (Finset.mem_filter.mp hv).1
  unfold positiveEndpointShiftSet
  apply Finset.mem_Ico.mpr
  constructor
  · exact hspec.1
  · omega

/-- Adding a double shift changes the half-index by exactly that shift. -/
theorem half_add_two_mul
    (u h : ℕ) :
    (u + 2 * h) / 2 = u / 2 + h := by
  omega

/-- The square-modulus residue coordinate of the shifted endpoint. -/
theorem parityResidueCoordinate_add_two_shift
    (d u h : ℕ) [NeZero d] :
    parityResidueCoordinate d (u + 2 * h) =
      parityResidueCoordinate d u +
        (h : ZMod (d * d)) := by
  unfold parityResidueCoordinate
  rw [half_add_two_mul]
  push_cast
  rfl

/-- Exact affine midpoint coordinate in the shift parametrization. -/
def parityAffineShiftResidueCoordinate
    (d u h : ℕ) [NeZero d] : ZMod (d * d) :=
  parityResidueCoordinate d u +
    parityResidueCoordinate d u +
    (h : ZMod (d * d))

/-- For a shifted endpoint pair, the sum of the two endpoint residue
coordinates is the affine midpoint coordinate. -/
theorem pairResidueCoordinate_eq_affineShift
    (d u h : ℕ) [NeZero d] :
    parityResidueCoordinate d u +
        parityResidueCoordinate d (u + 2 * h) =
      parityAffineShiftResidueCoordinate d u h := by
  rw [parityResidueCoordinate_add_two_shift]
  unfold parityAffineShiftResidueCoordinate
  ring

/-- Pair-indexed signed residue contribution at one fixed shift. -/
def parityPairShiftResidueCorrelation
    (b d r h : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  2 * ∑ uv ∈ endpointParityFixedShiftPairSet b r h,
    if parityResidueCoordinate d uv.1 +
          parityResidueCoordinate d uv.2 = s then
      (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
    else 0

/-- Affine-form version of the same signed correlation. -/
def parityAffineShiftResidueCorrelation
    (b d r h : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  2 * ∑ u ∈ parityAffineShiftBaseSet b r h,
    if parityAffineShiftResidueCoordinate d u h = s then
      (moebiusReal u : ℂ) *
        (moebiusReal (u + 2 * h) : ℂ)
    else 0

/-- Fixed-shift endpoint pairs are in bijection with their lower endpoints on
the exact affine support. -/
theorem parityPairShiftResidueCorrelation_eq_affine
    (b d r h : ℕ) [NeZero d]
    (hh : h ∈ positiveEndpointShiftSet b)
    (s : ZMod (d * d)) :
    parityPairShiftResidueCorrelation b d r h s =
      parityAffineShiftResidueCorrelation b d r h s := by
  classical
  unfold parityPairShiftResidueCorrelation
    parityAffineShiftResidueCorrelation
  apply congrArg (fun z : ℂ => 2 * z)
  refine Finset.sum_bij'
    (fun uv _ => uv.1)
    (fun u _ => (u, u + 2 * h)) ?_ ?_ ?_ ?_ ?_
  · intro uv huv
    rcases Finset.mem_filter.mp huv with ⟨huvPair, hshift⟩
    rcases Finset.mem_filter.mp huvPair with ⟨huvProd, huvLt⟩
    rcases Finset.mem_product.mp huvProd with ⟨hu, hv⟩
    have hspec := endpointParityStrictPair_shift_spec huvPair
    have hvEq : uv.2 = uv.1 + 2 * h := by
      rw [← hshift]
      exact hspec.2
    unfold parityAffineShiftBaseSet
    apply Finset.mem_filter.mpr
    constructor
    · exact hu
    · simpa [hvEq] using (Finset.mem_Icc.mp (Finset.mem_filter.mp hv).1).2
  · intro u hu
    rcases Finset.mem_filter.mp hu with ⟨huParity, huTop⟩
    have hhI := Finset.mem_Ico.mp hh
    unfold endpointParityFixedShiftPairSet
    apply Finset.mem_filter.mpr
    constructor
    · unfold endpointParityStrictPairSet
      apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_product.mpr
        constructor
        · exact huParity
        · unfold endpointParitySet
          apply Finset.mem_filter.mpr
          constructor
          · have huI := (Finset.mem_filter.mp huParity).1
            exact Finset.mem_Icc.mpr ⟨by omega, huTop⟩
          · have huPar := (Finset.mem_filter.mp huParity).2
            omega
      · omega
    · omega
  · intro uv huv
    rcases Finset.mem_filter.mp huv with ⟨huvPair, hshift⟩
    have hspec := endpointParityStrictPair_shift_spec huvPair
    have hvEq : uv.2 = uv.1 + 2 * h := by
      rw [← hshift]
      exact hspec.2
    exact Prod.ext rfl hvEq.symm
  · intro u hu
    rfl
  · intro uv huv
    rcases Finset.mem_filter.mp huv with ⟨huvPair, hshift⟩
    have hspec := endpointParityStrictPair_shift_spec huvPair
    have hvEq : uv.2 = uv.1 + 2 * h := by
      rw [← hshift]
      exact hspec.2
    rw [hvEq, pairResidueCoordinate_eq_affineShift]

/-- The original signed residue bucket is the exact sum over positive shifts. -/
theorem paritySignedResidueConvolutionBucket_eq_sum_pairShifts
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) :
    paritySignedResidueConvolutionBucket b d r s =
      ∑ h ∈ positiveEndpointShiftSet b,
        parityPairShiftResidueCorrelation b d r h s := by
  classical
  unfold paritySignedResidueConvolutionBucket
    parityPairShiftResidueCorrelation
    endpointParityFixedShiftPairSet
  simp_rw [Finset.sum_filter, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro uv huv
  have hmem := endpointParityStrictPair_shift_mem huv
  let h0 : ℕ := (uv.2 - uv.1) / 2
  have hmem0 : h0 ∈ positiveEndpointShiftSet b := by
    simpa [h0] using hmem
  rw [Finset.sum_eq_single h0]
  · simp [h0]
  · intro h hh hne
    have hhne : (uv.2 - uv.1) / 2 ≠ h := by simpa only [h0] using hne.symm
    simp [hhne]
  · intro hnot
    exact (hnot hmem0).elim

/-- The signed residue bucket is exactly the sum of its affine growing-shift
binary correlations. -/
theorem paritySignedResidueConvolutionBucket_eq_sum_affineShifts
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) :
    paritySignedResidueConvolutionBucket b d r s =
      ∑ h ∈ positiveEndpointShiftSet b,
        parityAffineShiftResidueCorrelation b d r h s := by
  rw [paritySignedResidueConvolutionBucket_eq_sum_pairShifts]
  apply Finset.sum_congr rfl
  intro h hh
  exact parityPairShiftResidueCorrelation_eq_affine b d r h hh s

/-- One additive-twisted binary Möbius correlation in the growing affine
family `u`, `u+2h`. -/
def parityGrowingShiftAffineChowlaTwist
    (b d r h : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  2 * ∑ u ∈ parityAffineShiftBaseSet b r h,
    ((moebiusReal u : ℂ) *
      (moebiusReal (u + 2 * h) : ℂ)) *
      ZMod.stdAddChar
        (k * parityAffineShiftResidueCoordinate d u h)

/-- Fourier transforming one shift-residue correlation gives the corresponding
additive-twisted affine Chowla correlation. -/
theorem sum_shiftResidueCorrelation_mul_char
    (b d r h : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    (∑ s : ZMod (d * d),
      parityAffineShiftResidueCorrelation b d r h s *
        ZMod.stdAddChar (k * s)) =
      parityGrowingShiftAffineChowlaTwist b d r h k := by
  classical
  unfold parityAffineShiftResidueCorrelation
    parityGrowingShiftAffineChowlaTwist
  simp_rw [mul_assoc, Finset.mul_sum, Finset.sum_mul]
  rw [← Finset.mul_sum]
  rw [Finset.sum_comm]
  rw [← Finset.mul_sum]
  congr 1
  apply Finset.sum_congr rfl
  intro u _hu
  simp [mul_assoc]

/-- Exact growing-shift affine form of the signed residue-convolution Fourier
transform. -/
theorem paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    paritySignedResidueConvolutionFourier b d r k =
      ∑ h ∈ positiveEndpointShiftSet b,
        parityGrowingShiftAffineChowlaTwist b d r h k := by
  classical
  unfold paritySignedResidueConvolutionFourier
  simp_rw [paritySignedResidueConvolutionBucket_eq_sum_affineShifts, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  exact sum_shiftResidueCorrelation_mul_char b d r h k

/-- Pointwise majorant written directly in the growing-shift affine family. -/
def parityGrowingShiftAffineChowlaFrequencyMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖∑ h ∈ positiveEndpointShiftSet b,
        parityGrowingShiftAffineChowlaTwist b d 0 h k‖ +
      ‖∑ h ∈ positiveEndpointShiftSet b,
        parityGrowingShiftAffineChowlaTwist b d 1 h k‖)

/-- Exact equality of the affine-family and signed-convolution frequency
surfaces. -/
theorem parityGrowingShiftAffineChowlaFrequencyMajorant_eq_signed
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityGrowingShiftAffineChowlaFrequencyMajorant b d k =
      paritySignedResidueConvolutionFrequencyMajorant b d k := by
  unfold parityGrowingShiftAffineChowlaFrequencyMajorant
    paritySignedResidueConvolutionFrequencyMajorant
  rw [paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists,
    paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists]

/-- Normalized nonzero-frequency affine-family majorant for one square
modulus. -/
def parityGrowingShiftAffineChowlaNonzeroModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      parityGrowingShiftAffineChowlaFrequencyMajorant b d k

/-- Exact equality at one square modulus. -/
theorem parityGrowingShiftAffineChowlaNonzeroModulusMajorant_eq_signed
    (b d : ℕ) [NeZero d] :
    parityGrowingShiftAffineChowlaNonzeroModulusMajorant b d =
      paritySignedResidueConvolutionNonzeroModulusMajorant b d := by
  unfold parityGrowingShiftAffineChowlaNonzeroModulusMajorant
    paritySignedResidueConvolutionNonzeroModulusMajorant
  apply congrArg
  apply Finset.sum_congr rfl
  intro k _hk
  exact
    parityGrowingShiftAffineChowlaFrequencyMajorant_eq_signed b d k

/-- Endpoint aggregate of the exact growing-shift affine Chowla family. -/
def parityGrowingShiftAffineChowlaEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      parityGrowingShiftAffineChowlaNonzeroModulusMajorant b d
    else 0

/-- Exact equality of the endpoint consumer surfaces. -/
theorem parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed
    (b : ℕ) :
    parityGrowingShiftAffineChowlaEndpointMajorant b =
      paritySignedResidueConvolutionEndpointMajorant b := by
  unfold parityGrowingShiftAffineChowlaEndpointMajorant
    paritySignedResidueConvolutionEndpointMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  exact
    parityGrowingShiftAffineChowlaNonzeroModulusMajorant_eq_signed b d

/-- Natural-scale supplier stated directly as a growing-shift,
growing-square-modulus, additive-twisted binary Chowla family. -/
def DyadicNaturalScaleGrowingShiftAffineChowlaBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityGrowingShiftAffineChowlaEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The growing-shift affine Chowla supplier is exactly equivalent to the live
signed residue-convolution supplier. -/
theorem dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution :
    DyadicNaturalScaleGrowingShiftAffineChowlaBudget ↔
      DyadicNaturalScaleSignedResidueConvolutionBudget := by
  constructor
  · intro hAffine δ hδ
    obtain ⟨C, hC, hscale⟩ := hAffine δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed]
    exact hscale j b hb
  · intro hSigned δ hδ
    obtain ⟨C, hC, hscale⟩ := hSigned δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed]
    exact hscale j b hb

/-- Downstream composition with the pointwise ordinary-Mertens zero-mode
premise. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hAffine : DyadicNaturalScaleGrowingShiftAffineChowlaBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution
    hPoint
    (dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution.mp
      hAffine)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionBucket_eq_sum_affineShifts
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution
