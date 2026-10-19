import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy

/-!
# Prepared exact Dirichlet tents for the actual discrepancy bridge

This private future candidate is UNCOMPILED. Its six intended declarations are
finite algebra and the unchanged closed-prime primitive adapter. No new kernel
credit, promotion, accepted-main, complete verification or arithmetic lower
witness is asserted. The continuous exponential endpoint correction and every
closed atom are retained; positivity of each tent does not imply positivity of
the signed bridge or the source readout.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex, with independent AI review requested separately.
-/

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalGreenTent

open Set
open scoped BigOperators
open SourceCriticalCumulativeDiscrepancy SourceCriticalDecayWork WeightedPrimeAbel

/-- The finite-interval Dirichlet tent with its literal denominator. -/
def criticalDirichletTent (L u s : ℝ) : ℝ :=
  min u s * (L - max u s) / L

/-- Hinge subtraction is an exact signed tent for every nonzero interval length. -/
theorem positivePart_sub_affine_eq_neg_tent {L : ℝ} (hL : L ≠ 0) (u s : ℝ) :
    max (u - s) 0 - (u / L) * (L - s) = -criticalDirichletTent L u s := by
  unfold criticalDirichletTent
  rcases le_total u s with hus | hsu
  · rw [max_eq_right (sub_nonpos.mpr hus), min_eq_left hus, max_eq_right hus]
    field_simp [hL]
    ring
  · rw [max_eq_left (sub_nonneg.mpr hsu), min_eq_right hsu, max_eq_left hsu]
    field_simp [hL]
    ring

/-- Tent positivity is restricted to positive length and both interval coordinates. -/
theorem criticalDirichletTent_nonneg {L u s : ℝ} (hL : 0 < L)
    (hu : u ∈ Icc 0 L) (hs : s ∈ Icc 0 L) :
    0 ≤ criticalDirichletTent L u s := by
  unfold criticalDirichletTent
  exact div_nonneg
    (mul_nonneg (le_min hu.1 hs.1) (sub_nonneg.mpr (max_le hu.2 hs.2))) hL.le

/-- Both interval endpoints and the touching upper atom have zero tent values. -/
theorem criticalDirichletTent_endpoints {L s : ℝ} (hL : 0 < L)
    (hs : s ∈ Icc 0 L) :
    criticalDirichletTent L 0 s = 0 ∧ criticalDirichletTent L L s = 0 ∧
      ∀ u ∈ Icc 0 L, criticalDirichletTent L u L = 0 := by
  unfold criticalDirichletTent
  constructor
  · rw [min_eq_left hs.1, zero_mul]
    field_simp [ne_of_gt hL]
  · constructor
    · rw [max_eq_left hs.2, sub_self, mul_zero]
      field_simp [ne_of_gt hL]
    · intro u hu
      rw [max_eq_right hu.2, sub_self, mul_zero]
      field_simp [ne_of_gt hL]

/-- Padding to one closed upper inventory keeps the exact zero hinge at a touching atom. -/
theorem primeLogSum_hinge_common_inventory {L u : ℝ} (hu : 0 ≤ u) (huL : u ≤ L) :
    primeLogSum u (fun s => u - s) = primeLogSum L (fun s => max (u - s) 0) := by
  have hL : 0 ≤ L := hu.trans huL
  unfold primeLogSum
  rw [← primeLogInventory_filter_log L u huL, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p hp
  have hs := primeLogInventory_log_bounds L p hp
  by_cases hpu : Real.log (p : ℝ) ≤ u
  · simp only [hpu, if_true, max_eq_left (sub_nonneg.mpr hpu)]
  · have hup : u - Real.log (p : ℝ) ≤ 0 := by linarith
    simp only [hpu, if_false, max_eq_right hup, mul_zero]

/-- The literal actual bridge is the continuous density tent minus all closed prime tents. -/
theorem criticalDiscrepancyBridge_eq_green_tents {A u : ℝ} (hA : 0 < A)
    (hu : u ∈ Icc 0 (2 * A)) :
    criticalDiscrepancyBridge A u =
      u * (2 * A - u) / 2 +
        2 * (criticalDecay u - 1 - (u / (2 * A)) * (criticalDecay (2 * A) - 1)) -
          primeLogSum (2 * A) (fun s => criticalDirichletTent (2 * A) u s) := by
  have hL : 0 < 2 * A := by linarith
  have hLn : 2 * A ≠ 0 := ne_of_gt hL
  have hsum :
      primeLogSum (2 * A) (fun s => max (u - s) 0) -
        (u / (2 * A)) * primeLogSum (2 * A) (fun s => 2 * A - s) =
          -primeLogSum (2 * A) (fun s => criticalDirichletTent (2 * A) u s) := by
    unfold primeLogSum
    calc
      _ = ∑ p ∈ primeLogInventory (2 * A),
          Real.log (p : ℝ) / (p : ℝ) *
            (max (u - Real.log p) 0 - (u / (2 * A)) * (2 * A - Real.log p)) := by
        rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
        apply Finset.sum_congr rfl
        intro p hp
        ring
      _ = ∑ p ∈ primeLogInventory (2 * A),
          -(Real.log (p : ℝ) / (p : ℝ) *
            criticalDirichletTent (2 * A) u (Real.log p)) := by
        apply Finset.sum_congr rfl
        intro p hp
        rw [positivePart_sub_affine_eq_neg_tent hLn]
        ring
      _ = _ := by rw [Finset.sum_neg_distrib]
  unfold criticalDiscrepancyBridge
  rw [criticalDiscrepancyPrimitive_eq_primeLogSum u hu.1,
    criticalDiscrepancyPrimitive_eq_primeLogSum (2 * A) hL.le,
    primeLogSum_hinge_common_inventory hu.1 hu.2]
  calc
    _ =
        (primeLogSum (2 * A) (fun s => max (u - s) 0) -
          (u / (2 * A)) * primeLogSum (2 * A) (fun s => 2 * A - s)) +
        (-(u ^ 2 / 2) + u + 2 * (criticalDecay u - 1) -
          (u / (2 * A)) *
            (-(2 * A) ^ 2 / 2 + 2 * A + 2 * (criticalDecay (2 * A) - 1))) := by ring
    _ = _ := by
      rw [hsum]
      field_simp [hLn]
      ring

end FormalResearch.RiemannHypothesis.SourceCriticalGreenTent
