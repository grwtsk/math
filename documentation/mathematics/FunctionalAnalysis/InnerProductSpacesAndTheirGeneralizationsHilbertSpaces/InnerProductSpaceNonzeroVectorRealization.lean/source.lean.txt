/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Minimal continuous realization of a nonzero vector


A normalized actual rank-one operator sends a nonzero real inner-product vector
x to any normed-space vector y. Its norm is exactly norm(y)/norm(x), the least
possible norm of a continuous linear map with this ONE prescribed value.
There is no finite-family simultaneous realization or uniform conditioning claim.
Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization

variable {E F : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F]

noncomputable section

/-- The genuine normalized rank-one operator; no choice or existence premise is used. -/
def realizationMap (x : E) (y : F) : E →L[ℝ] F :=
  (‖x‖ ^ 2)⁻¹ • InnerProductSpace.rankOne ℝ y x

theorem realization_map_apply (x : E) (y : F) (z : E) :
    realizationMap x y z = ((‖x‖ ^ 2)⁻¹ * inner ℝ x z) • y := by
  simp only [realizationMap, smul_apply,
    InnerProductSpace.rankOne_apply, smul_smul]

theorem realization_map_self {x : E} (hx : x ≠ 0) (y : F) :
    realizationMap x y x = y := by
  rw [realization_map_apply, real_inner_self_eq_norm_sq,
    inv_mul_cancel₀ (pow_ne_zero 2 (norm_ne_zero_iff.mpr hx)), one_smul]

theorem realization_map_norm {x : E} (hx : x ≠ 0) (y : F) :
    ‖realizationMap x y‖ = ‖y‖ / ‖x‖ := by
  rw [realizationMap, norm_smul, InnerProductSpace.norm_rankOne,
    Real.norm_eq_abs, abs_of_nonneg (inv_nonneg.mpr (sq_nonneg ‖x‖))]
  rw [← inv_pow, div_eq_mul_inv]
  calc
    _ = ‖y‖ * ‖x‖⁻¹ * (‖x‖⁻¹ * ‖x‖) := by ring
    _ = ‖y‖ * ‖x‖⁻¹ := by
      rw [inv_mul_cancel₀ (norm_ne_zero_iff.mpr hx), mul_one]

/-- Every other exact realization pays at least this operator norm. -/
theorem realization_map_norm_minimal {x : E} (hx : x ≠ 0) (y : F)
    (map : E →L[ℝ] F) (realizes : map x = y) :
    ‖realizationMap x y‖ ≤ ‖map‖ := by
  rw [realization_map_norm hx]
  apply (div_le_iff₀ (norm_pos_iff.mpr hx)).mpr
  simpa only [realizes] using map.le_opNorm x

theorem exists_minimal_realization {x : E} (hx : x ≠ 0) (y : F) :
    ∃ map : E →L[ℝ] F, map x = y ∧ ‖map‖ = ‖y‖ / ‖x‖ ∧
      ∀ other : E →L[ℝ] F, other x = y → ‖map‖ ≤ ‖other‖ := by
  refine ⟨realizationMap x y, realization_map_self hx y, realization_map_norm hx y, ?_⟩
  intro other realizes
  exact realization_map_norm_minimal hx y other realizes

end

end GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization
