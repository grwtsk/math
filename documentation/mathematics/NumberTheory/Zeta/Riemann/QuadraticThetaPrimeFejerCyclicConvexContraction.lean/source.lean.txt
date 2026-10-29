/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicPrefixReindexing
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Explicit involutive reindexing y ↦ x-y on the cyclic group. -/
def cyclicSubEquiv
    {L : ℕ}
    (x : ZMod L) :
    ZMod L ≃ ZMod L where
  toFun y := x - y
  invFun y := x - y
  left_inv y := by
    simp
  right_inv y := by
    simp

/-- The cyclic Fejer kernel is nonnegative pointwise in the alias-free regime. -/
theorem cyclicFejerKernel_nonnegative
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (z : ZMod (fejerOctavePeriod X)) :
    0 ≤ cyclicFejerKernel X N z := by
  unfold cyclicFejerKernel
  exact periodFourXSampledKernelNonnegative X N hreg z.val

/-- The range-form mass-one theorem transfers to the Fintype sum over ZMod. -/
theorem cyclicFejerKernel_sum_one
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ z : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N z) = 1 := by
  rcases hreg with ⟨hX, hN, hNL⟩
  let L := fejerOctavePeriod X
  have hL : 0 < L := by
    dsimp [L, fejerOctavePeriod]
    omega
  haveI : NeZero L := ⟨Nat.ne_of_gt hL⟩
  let e : Fin L ≃ ZMod L := (ZMod.finEquiv L).toEquiv
  calc
    (∑ z : ZMod L, cyclicFejerKernel X N z)
      = ∑ i : Fin L, cyclicFejerKernel X N (e i) := by
          exact Fintype.sum_equiv e.symm _ _ (fun _ => rfl)
    _ = ∑ r ∈ Finset.range L,
        signedSampledTriangularKernelAtPeriod L N r := by
          rw [Fin.sum_univ_eq_sum_range]
          apply Finset.sum_congr rfl
          intro r hr
          have hrLt : r < L := Finset.mem_range.mp hr
          dsimp [e, cyclicFejerKernel]
          simp [ZMod.finEquiv, ZMod.val_natCast, Nat.mod_eq_of_lt hrLt, L]
    _ = 1 := by
          exact periodFourXSampledKernelMassOne X N ⟨hX, hN, hNL⟩

/-- Translating the kernel argument does not change its total mass. -/
theorem cyclicFejerKernel_shifted_sum_one
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (x : ZMod (fejerOctavePeriod X)) :
    (∑ y : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N (x - y)) = 1 := by
  calc
    (∑ y : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N (x - y))
      =
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r := by
          exact Fintype.sum_equiv (cyclicSubEquiv x) _ _ (fun _ => rfl)
    _ = 1 := cyclicFejerKernel_sum_one hreg

/-- Pointwise error is bounded by the kernel average of translated indicator
errors. This is the convex-combination heart of the L1 contraction. -/
theorem cyclicFejer_pointwise_error_le_translation_average
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (x : ZMod (fejerOctavePeriod X)) :
    |cyclicSharpPrefixIndicator X m x -
        cyclicFejerSmoothedPrefix X N m x|
      ≤
    ∑ y : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N (x - y) *
        |cyclicSharpPrefixIndicator X m x -
          cyclicSharpPrefixIndicator X m y| := by
  have hmass := cyclicFejerKernel_shifted_sum_one hreg x
  unfold cyclicFejerSmoothedPrefix
  rw [← hmass]
  rw [← Finset.sum_const_mul]
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ y : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N (x - y) *
          cyclicSharpPrefixIndicator X m x -
        cyclicFejerKernel X N (x - y) *
          cyclicSharpPrefixIndicator X m y|
      ≤
      ∑ y : ZMod (fejerOctavePeriod X),
        |cyclicFejerKernel X N (x - y) *
          (cyclicSharpPrefixIndicator X m x -
            cyclicSharpPrefixIndicator X m y)| := by
              exact abs_sum_le_sum_abs _ _
    _ =
      ∑ y : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N (x - y) *
          |cyclicSharpPrefixIndicator X m x -
            cyclicSharpPrefixIndicator X m y| := by
              apply Finset.sum_congr rfl
              intro y hy
              rw [abs_mul, abs_of_nonneg
                (cyclicFejerKernel_nonnegative hreg (x - y))]
              ring

/-- The only remaining analytic bookkeeping is reindexing the double sum from
(x,y) to (x,r=x-y), then swapping sums. -/
def CyclicConvolutionDoubleSumReindexingClaim : Prop :=
  ∀ X N m : ℕ,
    NonAliasingFejerCutoffRegime X N →
      (∑ x : ZMod (fejerOctavePeriod X),
        ∑ y : ZMod (fejerOctavePeriod X),
          cyclicFejerKernel X N (x - y) *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m y|)
      =
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r

/-- Double-sum reindexing closes the full convex-combination L1 supplier. -/
theorem doubleSumReindexing_to_cyclicConvolutionL1
    (hreindex : CyclicConvolutionDoubleSumReindexingClaim) :
    CyclicConvolutionL1ByTranslationClaim := by
  intro X N m hreg
  unfold cyclicFejerSharpStepL1Error
  calc
    (∑ x : ZMod (fejerOctavePeriod X),
      |cyclicSharpPrefixIndicator X m x -
        cyclicFejerSmoothedPrefix X N m x|)
      ≤
      ∑ x : ZMod (fejerOctavePeriod X),
        ∑ y : ZMod (fejerOctavePeriod X),
          cyclicFejerKernel X N (x - y) *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m y| := by
                exact Finset.sum_le_sum fun x hx =>
                  cyclicFejer_pointwise_error_le_translation_average hreg x
    _ =
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r :=
            hreindex X N m hreg

end GRWTSK.RiemannHypothesis
