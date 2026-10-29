/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib and GRWTSK sources retain their original attribution.
Owner: #966. Evidence: SOURCE_DRAFT / NOT_ELABORATED / NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyThinGreenMatrix
import Mathlib.Tactic

/-!
# Invisible terminal-center column in the authentic four-family matrix

The source-bound real matrix from CanonicalFourFamilyThinGreenMatrix
contains a terminal anchored factor a=2*X, with center X+1 and
positive shift X-1 for X>=2. For any Green target X<n<=2*X,
the only possible multiple of this factor is n=2*X; its other
divisor factor is 1 and therefore its Möbius-log weight is log 1 = 0.

At center c=X+1, the odd anchor would instead require a=2*X+3
and lies outside the real finite source support. Thus EVERY four-family
matrix column at center X+1 is exactly zero on the true Green window.

A one-cell real source packet supported on the actual selected terminal
family/center is nonzero but has zero complete matrix readout. Therefore
the unrestricted ambient finite four-family matrix is not injective and
cannot have a positive lower frame on all ambient real center vectors.

This is a concrete finite support/rank obstruction, NOT a counterexample
to a restricted lower frame on genuinely admissible arithmetic
differences, NOT an estimate of the signed defect or historical Green
energy, and NOT an RH theorem or disproof.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.RiemannHypothesis

/-- The upper-half source divisor factor necessarily has cofactor 1 in
the exact half-open Green target window X<n<=2X. -/
theorem greenWindow_upperFactor_cofactor_eq_one
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    {p : ℕ × ℕ} (hp : p ∈ n.divisorsAntidiagonal)
    (hlarge : X < p.1) : p.2 = 1 := by
  have hmax : n ≤ 2 * X := (Finset.mem_Ioc.mp hn).2
  have hprod : p.1 * p.2 = n :=
    (Nat.mem_divisorsAntidiagonal.mp hp).1
  have hbpos : 0 < p.2 := by
    have hb0 := Nat.right_ne_zero_of_mem_divisorsAntidiagonal hp
    omega
  by_contra hne
  have htwo : 2 ≤ p.2 := by omega
  have hmul : p.1 * 2 ≤ p.1 * p.2 :=
    Nat.mul_le_mul_left p.1 htwo
  omega

/-- Consequently the exact real divisor logarithm vanishes.
This uses the actual arithmetic-function log, not an approximation. -/
theorem greenWindow_upperFactor_log_eq_zero
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    {p : ℕ × ℕ} (hp : p ∈ n.divisorsAntidiagonal)
    (hlarge : X < p.1) :
    (ArithmeticFunction.log p.2 : ℝ) = 0 := by
  rw [greenWindow_upperFactor_cofactor_eq_one hn hp hlarge]
  simp [ArithmeticFunction.log_apply]

/-- In the actual anchored source geometry, any supported factor with
center X+1 must belong to the upper half a>X. An odd anchor with this
center would have factor a=2X+3, outside the fixed finite support. -/
theorem anchored_terminalCenter_factor_gt_scale
    {X a : ℕ} (ha : 0 < a) (haTop : a ≤ 2 * X)
    (hc : (anchoredMobiusPair a).center = X + 1) :
    X < a := by
  by_cases he : a % 2 = 0
  · have hev : a = 2 * (a / 2) := by omega
    simp only [anchoredMobiusPair, if_pos he,
      CenteredAdditiveMobiusPair.center] at hc
    omega
  · have hod : a = 2 * (a / 2) + 1 := by omega
    simp only [anchoredMobiusPair, if_neg he,
      CenteredAdditiveMobiusPair.center] at hc
    omega

/-- A REAL source-bound obstruction: all four incidence-matrix entries
at center X+1 vanish in EVERY actual Green target row, for EVERY X. -/
theorem canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (F : CanonicalFourFamily) :
    canonicalFourFamilyGreenMatrixEntry X n F (X + 1) = 0 := by
  classical
  unfold canonicalFourFamilyGreenMatrixEntry
  apply Finset.sum_eq_zero
  intro p hp
  by_cases huse :
      p.1 ∈ anchoredDyadicSourceIndices X ∧
      0 < (anchoredMobiusPair p.1).h ∧
      F = canonicalFourFamilyOfAnchor p.1 ∧
      X + 1 = (anchoredMobiusPair p.1).center
  · have ha : 0 < p.1 := by
      have hnz := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
      omega
    have haTop : p.1 ≤ 2 * X :=
      (Finset.mem_Icc.mp huse.1).2
    have hlarge : X < p.1 :=
      anchored_terminalCenter_factor_gt_scale ha haTop huse.2.2.2.symm
    have hlog : (ArithmeticFunction.log p.2 : ℝ) = 0 :=
      greenWindow_upperFactor_log_eq_zero hn hp hlarge
    simp [huse, hlog]
  · simp [huse]

/-- The terminal factor a=2X belongs to its actual selected positive-shift
family for X>=2, so the null column is not merely an unused parity label. -/
theorem canonicalTerminalAnchor_shift_admissible
    {X : ℕ} (hX : 2 ≤ X) :
    (anchoredMobiusPair (2 * X)).h ∈
      canonicalFourFamilyShiftSet (2 * X)
        (canonicalFourFamilyOfAnchor (2 * X)) := by
  have ha : 0 < 2 * X := by omega
  have hshift : 0 < (anchoredMobiusPair (2 * X)).h :=
    (anchoredMobiusPair_shift_pos_iff_ge_three ha).2 (by omega)
  exact canonicalFourFamily_selected_shift_mem ha (le_refl _) hshift

theorem canonicalTerminalAnchor_center
    {X : ℕ} (hX : 2 ≤ X) :
    (anchoredMobiusPair (2 * X)).center = X + 1 := by
  have he : (2 * X) % 2 = 0 := by omega
  simp only [anchoredMobiusPair, if_pos he,
    CenteredAdditiveMobiusPair.center]
  omega

/-- A one-cell real packet at the GENUINE terminal anchor's family/center.
It is an ambient source vector, not an asserted difference of actual
centered Möbius configurations. -/
def canonicalFourFamilyTerminalDelta
    (X : ℕ) : CanonicalFourFamily → ℕ → ℝ :=
  fun F c =>
    if F = canonicalFourFamilyOfAnchor (2 * X) ∧ c = X + 1
    then 1 else 0

theorem canonicalFourFamilyTerminalDelta_ne_zero
    (X : ℕ) :
    canonicalFourFamilyTerminalDelta X ≠
      (0 : CanonicalFourFamily → ℕ → ℝ) := by
  intro heq
  have hcell := congrFun
    (congrFun heq (canonicalFourFamilyOfAnchor (2 * X))) (X + 1)
  have hbad : (1 : ℝ) = 0 := by
    simp [canonicalFourFamilyTerminalDelta] at hcell
  norm_num at hbad

/-- The nonzero one-cell source packet is annihilated by EVERY Green
window row, with the actual four-family matrix unchanged. -/
theorem canonicalFourFamilyTerminalDelta_matrixApply_zero
    (X : ℕ) {n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    canonicalFourFamilyGreenMatrixApply X n
      (canonicalFourFamilyTerminalDelta X) = 0 := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply
  apply Finset.sum_eq_zero
  intro F _hF
  apply Finset.sum_eq_zero
  intro c _hc
  by_cases hcenter : c = X + 1
  · subst c
    rw [canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero hn F]
    simp
  · simp [canonicalFourFamilyTerminalDelta, hcenter]

/-- The true row carrier is the fixed source-defined half-open dyadic
Green window, not an arbitrary infinite or out-of-window target. -/
def canonicalFourFamilyWindowReadout (X : ℕ)
    (v : CanonicalFourFamily → ℕ → ℝ) :
    {n : ℕ // n ∈ centeredGreenWindow X} → ℝ :=
  fun n => canonicalFourFamilyGreenMatrixApply X n.1 v

theorem canonicalFourFamilyWindowReadout_terminalDelta_zero
    (X : ℕ) :
    canonicalFourFamilyWindowReadout X
      (canonicalFourFamilyTerminalDelta X) = 0 := by
  funext n
  exact canonicalFourFamilyTerminalDelta_matrixApply_zero X n.property

theorem canonicalFourFamilyWindowReadout_zero
    (X : ℕ) :
    canonicalFourFamilyWindowReadout X
      (0 : CanonicalFourFamily → ℕ → ℝ) = 0 := by
  funext n
  simp [canonicalFourFamilyWindowReadout,
    canonicalFourFamilyGreenMatrixApply]

/-- A source-specific finite obstruction to ambient injectivity. It does
NOT show that the terminal delta lies in the authentic difference set D. -/
theorem canonicalFourFamilyWindowReadout_not_injective
    (X : ℕ) :
    ¬ Function.Injective (canonicalFourFamilyWindowReadout X) := by
  intro hinj
  have hout :
      canonicalFourFamilyWindowReadout X
        (canonicalFourFamilyTerminalDelta X) =
      canonicalFourFamilyWindowReadout X
        (0 : CanonicalFourFamily → ℕ → ℝ) := by
    rw [canonicalFourFamilyWindowReadout_terminalDelta_zero,
      canonicalFourFamilyWindowReadout_zero]
  exact canonicalFourFamilyTerminalDelta_ne_zero X (hinj hout)

/-- Real source energy of ALL four-family center cells.
The real squared norm is positive definite on this ambient finite packet,
but the arithmetic matrix does not control it from below. -/
def canonicalFourFamilyAmbientSourceEnergy
    (X : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) : ℝ :=
  ∑ F : CanonicalFourFamily,
    ∑ c ∈ Finset.range (2 * X + 1), (v F c) ^ 2

def canonicalFourFamilyWindowOutputEnergy
    (X : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) : ℝ :=
  ∑ n ∈ centeredGreenWindow X,
    (canonicalFourFamilyGreenMatrixApply X n v) ^ 2

/-- The ambient lower-frame proposal explicitly has the correct direction
and a STRICTLY POSITIVE constant. It does not quantify over the restricted
arithmetic difference space of #966. -/
def HasCanonicalFourFamilyAmbientLowerFrame
    (X : ℕ) (A : ℝ) : Prop :=
  0 < A ∧
    ∀ v : CanonicalFourFamily → ℕ → ℝ,
      A * canonicalFourFamilyAmbientSourceEnergy X v ≤
        canonicalFourFamilyWindowOutputEnergy X v

/-- The genuinely present center X+1 supports a unit source energy in the
terminal delta, for X>=1. -/
theorem canonicalFourFamilyTerminalDelta_sourceEnergy_pos
    (X : ℕ) (hX : 1 ≤ X) :
    0 < canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyTerminalDelta X) := by
  classical
  unfold canonicalFourFamilyAmbientSourceEnergy
  have hc : X + 1 ∈ Finset.range (2 * X + 1) :=
    Finset.mem_range.mpr (by omega)
  have hcell :
      0 < (canonicalFourFamilyTerminalDelta X
        (canonicalFourFamilyOfAnchor (2 * X)) (X + 1)) ^ 2 := by
    simp [canonicalFourFamilyTerminalDelta]
  have hinner :
      (canonicalFourFamilyTerminalDelta X
        (canonicalFourFamilyOfAnchor (2 * X)) (X + 1)) ^ 2 ≤
      ∑ c ∈ Finset.range (2 * X + 1),
        (canonicalFourFamilyTerminalDelta X
          (canonicalFourFamilyOfAnchor (2 * X)) c) ^ 2 :=
    Finset.single_le_sum (fun c _ => sq_nonneg _) hc
  have houter :
      (∑ c ∈ Finset.range (2 * X + 1),
        (canonicalFourFamilyTerminalDelta X
          (canonicalFourFamilyOfAnchor (2 * X)) c) ^ 2) ≤
      ∑ F : CanonicalFourFamily,
        ∑ c ∈ Finset.range (2 * X + 1),
          (canonicalFourFamilyTerminalDelta X F c) ^ 2 := by
    apply Finset.single_le_sum (f := fun F : CanonicalFourFamily =>
      ∑ c ∈ Finset.range (2 * X + 1),
        (canonicalFourFamilyTerminalDelta X F c) ^ 2)
    · intro F _hF
      exact Finset.sum_nonneg (by intro c _hc; positivity)
    · exact Finset.mem_univ _
  exact lt_of_lt_of_le hcell (hinner.trans houter)

theorem canonicalFourFamilyTerminalDelta_outputEnergy_zero
    (X : ℕ) :
    canonicalFourFamilyWindowOutputEnergy X
      (canonicalFourFamilyTerminalDelta X) = 0 := by
  unfold canonicalFourFamilyWindowOutputEnergy
  apply Finset.sum_eq_zero
  intro n hn
  rw [canonicalFourFamilyTerminalDelta_matrixApply_zero X hn]
  norm_num

/-- The exact bounded all-ambient-coordinates lower-frame assertion is
FALSE at every X>=2. The source-specific quantitative bound required for
RH must instead be restricted to the actual admissible difference family
and must retain the signed correction channels. -/
theorem not_hasCanonicalFourFamilyAmbientLowerFrame
    {X : ℕ} (hX : 2 ≤ X) (A : ℝ) :
    ¬ HasCanonicalFourFamilyAmbientLowerFrame X A := by
  intro hframe
  have hA : 0 < A := hframe.1
  have hsource : 0 <
      canonicalFourFamilyAmbientSourceEnergy X
        (canonicalFourFamilyTerminalDelta X) :=
    canonicalFourFamilyTerminalDelta_sourceEnergy_pos X (by omega)
  have hbound := hframe.2 (canonicalFourFamilyTerminalDelta X)
  rw [canonicalFourFamilyTerminalDelta_outputEnergy_zero] at hbound
  nlinarith [mul_pos hA hsource]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.greenWindow_upperFactor_cofactor_eq_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyWindowReadout_not_injective
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_hasCanonicalFourFamilyAmbientLowerFrame
