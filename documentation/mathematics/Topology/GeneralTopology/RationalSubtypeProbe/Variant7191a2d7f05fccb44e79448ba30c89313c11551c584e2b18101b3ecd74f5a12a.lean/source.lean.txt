-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RationalSegment.Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RationalSegment.Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"dd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/tmp/bz1/RationalSubtypeProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Fin.Rev

/-!
# BZ-1 unit-interval rational-segment probe

This scratch file uses mathlib's continuous Bernstein functions directly.
It imports no `Surface` module.
-/


namespace GRWTSK.Topology.GeneralTopology.RationalSegment.Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3

open Set BigOperators
open scoped unitInterval

namespace BZ1SubtypeScratch

noncomputable section

/-- Canonical closed parameter interval for rational segments. -/
abbrev UnitInterval := Set.Icc (0 : ℝ) 1

/-- Reflection of the closed unit interval. -/
def reflect (t : UnitInterval) : UnitInterval := unitInterval.symm t

@[simp]
theorem coe_reflect (t : UnitInterval) : (reflect t : ℝ) = 1 - t := rfl

@[simp]
theorem reflect_zero : reflect (0 : UnitInterval) = 1 := unitInterval.symm_zero

@[simp]
theorem reflect_one : reflect (1 : UnitInterval) = 0 := unitInterval.symm_one

@[simp]
theorem reflect_reflect (t : UnitInterval) : reflect (reflect t) = t :=
  unitInterval.symm_symm t

theorem continuous_reflect : Continuous reflect := unitInterval.continuous_symm

theorem bernstein_nonneg' (n : ℕ) (i : Fin (n + 1)) (t : UnitInterval) :
    0 ≤ bernstein n i t := bernstein_nonneg

theorem bernstein_sum_one' (n : ℕ) (t : UnitInterval) :
    ∑ i : Fin (n + 1), bernstein n i t = 1 :=
  bernstein.probability n t

@[simp]
theorem bernstein_at_zero (n : ℕ) (i : Fin (n + 1)) :
    bernstein n i (0 : UnitInterval) = if i = 0 then 1 else 0 := by
  by_cases hi : i = 0
  · subst i
    simp [bernstein_apply]
  · have hival : (i : ℕ) ≠ 0 := by
      intro h
      exact hi (Fin.ext h)
    simp [bernstein_apply, hi, zero_pow hival]

@[simp]
theorem bernstein_at_one (n : ℕ) (i : Fin (n + 1)) :
    bernstein n i (1 : UnitInterval) = if i = Fin.last n then 1 else 0 := by
  by_cases hi : i = Fin.last n
  · subst i
    simp [bernstein_apply]
  · have hilt : (i : ℕ) < n :=
      Nat.lt_of_le_of_ne i.is_le fun h => hi (Fin.ext h)
    have hsub : n - (i : ℕ) ≠ 0 := Nat.ne_of_gt (Nat.sub_pos_of_lt hilt)
    simp [bernstein_apply, hi, hsub]

theorem bernstein_rev (n : ℕ) (i : Fin (n + 1)) (t : UnitInterval) :
    bernstein n i.rev t = bernstein n i (reflect t) := by
  have hi : (i : ℕ) ≤ n := i.is_le
  simp only [bernstein_apply, Fin.val_rev, Nat.succ_sub_succ_eq_sub,
    Nat.choose_symm hi, tsub_tsub_cancel_of_le hi, coe_reflect]
  simp only [sub_sub_cancel]
  ac_rfl

/-- A rational Bézier segment evaluated only on the closed unit interval. -/
structure RationalSegment (E : Type*) [AddCommMonoid E] [Module ℝ E] (n : ℕ) where
  point : Fin (n + 1) → E
  weight : Fin (n + 1) → ℝ
  weight_pos : ∀ i, 0 < weight i

namespace RationalSegment

variable {E : Type*} [AddCommMonoid E] [Module ℝ E] {n : ℕ}

/-- Closed Bernstein denominator. -/
def denominator (S : RationalSegment E n) (t : UnitInterval) : ℝ :=
  ∑ i : Fin (n + 1), S.weight i * bernstein n i t

/-- Closed Bernstein numerator. -/
def numerator (S : RationalSegment E n) (t : UnitInterval) : E :=
  ∑ i : Fin (n + 1), (S.weight i * bernstein n i t) • S.point i

/-- Rational evaluation; positivity makes the inverse safe everywhere on the subtype. -/
def eval (S : RationalSegment E n) (t : UnitInterval) : E :=
  (S.denominator t)⁻¹ • S.numerator t

theorem denominator_pos (S : RationalSegment E n) (t : UnitInterval) :
    0 < S.denominator t := by
  have hnonneg : ∀ i : Fin (n + 1), 0 ≤ bernstein n i t :=
    fun _ => bernstein_nonneg
  have hex : ∃ i : Fin (n + 1), 0 < bernstein n i t := by
    by_contra h
    push Not at h
    have hz : ∀ i : Fin (n + 1), bernstein n i t = 0 := fun i =>
      le_antisymm (h i) (hnonneg i)
    have hsum : (∑ i : Fin (n + 1), bernstein n i t) = 0 := by
      simp [hz]
    rw [bernstein.probability n t] at hsum
    exact one_ne_zero hsum
  obtain ⟨i, hi⟩ := hex
  apply Finset.sum_pos'
  · intro j _
    exact mul_nonneg (S.weight_pos j).le (hnonneg j)
  · exact ⟨i, Finset.mem_univ i, mul_pos (S.weight_pos i) hi⟩

@[simp]
theorem eval_zero (S : RationalSegment E n) :
    S.eval (0 : UnitInterval) = S.point 0 := by
  simp [eval, numerator, denominator,
    S.weight_pos 0 |>.ne']

@[simp]
theorem eval_one (S : RationalSegment E n) :
    S.eval (1 : UnitInterval) = S.point (Fin.last n) := by
  simp [eval, numerator, denominator,
    S.weight_pos (Fin.last n) |>.ne']

theorem continuous_denominator (S : RationalSegment E n) :
    Continuous S.denominator := by
  unfold denominator
  apply continuous_finsetSum Finset.univ
  intro i _
  exact continuous_const.mul (bernstein n i).continuous

section Topology

variable [TopologicalSpace E] [ContinuousAdd E] [ContinuousSMul ℝ E]

theorem continuous_numerator (S : RationalSegment E n) :
    Continuous S.numerator := by
  unfold numerator
  apply continuous_finsetSum Finset.univ
  intro i _
  exact (continuous_const.mul (bernstein n i).continuous).smul continuous_const

theorem continuous_eval (S : RationalSegment E n) :
    Continuous S.eval := by
  unfold eval
  exact (S.continuous_denominator.inv₀ fun t => (S.denominator_pos t).ne').smul
    S.continuous_numerator

end Topology

/-- Reverse control points and weights. -/
def reverse (S : RationalSegment E n) : RationalSegment E n where
  point i := S.point i.rev
  weight i := S.weight i.rev
  weight_pos i := S.weight_pos i.rev

@[simp]
theorem reverse_point (S : RationalSegment E n) (i : Fin (n + 1)) :
    S.reverse.point i = S.point i.rev := rfl

@[simp]
theorem reverse_weight (S : RationalSegment E n) (i : Fin (n + 1)) :
    S.reverse.weight i = S.weight i.rev := rfl

@[simp]
theorem reverse_reverse (S : RationalSegment E n) : S.reverse.reverse = S := by
  cases S
  simp [reverse, Fin.rev_rev]

theorem denominator_reverse (S : RationalSegment E n) (t : UnitInterval) :
    S.reverse.denominator t = S.denominator (reflect t) := by
  unfold denominator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (n + 1)))
    (fun i => S.reverse.weight i * bernstein n i t)
    (fun i => S.weight i * bernstein n i (reflect t))
  intro i
  simp only [reverse_weight, Fin.revPerm_apply]
  congr 1
  simpa using bernstein_rev n i.rev t

theorem numerator_reverse (S : RationalSegment E n) (t : UnitInterval) :
    S.reverse.numerator t = S.numerator (reflect t) := by
  unfold numerator
  apply Fintype.sum_equiv (Fin.revPerm : Equiv.Perm (Fin (n + 1)))
    (fun i => (S.reverse.weight i * bernstein n i t) • S.reverse.point i)
    (fun i => (S.weight i * bernstein n i (reflect t)) • S.point i)
  intro i
  simp only [reverse_weight, reverse_point, Fin.revPerm_apply]
  congr 2
  simpa using bernstein_rev n i.rev t

theorem eval_reverse (S : RationalSegment E n) (t : UnitInterval) :
    S.reverse.eval t = S.eval (reflect t) := by
  simp only [eval, denominator_reverse, numerator_reverse]

end RationalSegment

end

end BZ1SubtypeScratch
