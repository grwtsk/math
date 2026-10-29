/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalZeroHeadBinding

set_option autoImplicit false

/-!
# Hostile controls for finite zero-head exhaustion

Synthetic finite models test why each premise remains. No sample is claimed
to be a zeta zero. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.ZeroHeadBindingControls

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalDiskSeparation
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

/-- A shared boundary point can be chosen twice; equality of squared distances
must not pass the separation test for closed balls. -/
theorem touching_disks_rejected :
    verify 2 (fun i : Fin 2 => if i = 0 then ⟨0, 0⟩ else ⟨2, 0⟩)
      (fun _ => 1) = false := by decide

/-- Horizontal information distinguishes disks even at equal heights. -/
theorem equal_height_separated_disks_accepted :
    verify 4 (fun i : Fin 2 => if i = 0 then ⟨1/4, 3⟩ else ⟨3/4, 3⟩)
      (fun _ => 1/10) = true := by decide

/-- The closed upper boundary is covered, not silently changed to an open one. -/
theorem closed_cutoff_equality_accepted :
    verify 3 (fun _ : Fin 1 => ⟨1/2, 11/4⟩) (fun _ => 1/4) = true := by decide

theorem protruding_disk_rejected :
    verify 3 (fun _ : Fin 1 => ⟨1/2, 3⟩) (fun _ => 1/4) = false := by decide

theorem negative_radius_rejected :
    verify 3 (fun _ : Fin 1 => ⟨1/2, 2⟩) (fun _ => -1/4) = false := by decide

theorem duplicated_zero_radius_disk_rejected :
    verify 3 (fun _ : Fin 2 => ⟨1/2, 2⟩) (fun _ => 0) = false := by decide

/-- Two records can carry the right total while choosing the same atom. -/
theorem equal_total_does_not_imply_surjective :
    (∑ _i : Fin 2, (1 : ℕ)) = (∑ _a : Fin 2, (1 : ℕ)) ∧
      ¬ Function.Surjective (fun _ : Fin 2 => (0 : Fin 2)) := by
  refine ⟨rfl, ?_⟩
  intro hs
  obtain ⟨i, hi⟩ := hs 1
  norm_num at hi

/-- An omitted atom of mass zero is invisible to a mass total. -/
theorem zero_mass_omission_invisible :
    (∑ a : Fin 2, if a = 0 then (1 : ℕ) else 0) = (∑ _i : Fin 1, (1 : ℕ)) ∧
      ¬ Function.Surjective (fun _ : Fin 1 => (0 : Fin 2)) := by
  constructor
  · norm_num [Fin.sum_univ_succ]
  · intro hs
    obtain ⟨i, hi⟩ := hs 1
    norm_num at hi

/-- Overstating one witness weight can hide an omitted positive atom unless
pointwise lower-multiplicity evidence is required. -/
theorem inflated_weight_is_not_a_lower_bound :
    (1 : ℕ) + 2 ≤ 3 ∧ ¬ (3 : ℕ) ≤ 1 := by omega

/-- A mass count is not a distinct-point cardinality. -/
theorem multiplicity_mass_not_cardinality :
    (∑ i : Fin 2, if i = 0 then (2 : ℕ) else 3) = 5 ∧ Fintype.card (Fin 2) = 2 := by
  norm_num [Fin.sum_univ_succ]

/-- Empty numeric geometry passes, but says nothing about zero existence. -/
theorem empty_geometry_is_vacuous :
    verify 3 (fun i : Fin 0 => Fin.elim0 i) (fun i => Fin.elim0 i) = true := by decide

/-- The independent ACTUAL count, not the empty numeric list, forces emptiness. -/
theorem empty_total_forces_empty_head (T : ℝ) (h : heightCount T ≤ 0) : heightHead T = ∅ :=
  (heightCount_eq_zero_iff T).mp (Nat.eq_zero_of_le_zero h)

end GRWTSK.NumberTheory.Chebyshev.Checks.ZeroHeadBindingControls
