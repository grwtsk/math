-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.LossProduct.Variant93888bcfdac8a1e3e6e89b5147e1cd0b1a2bb950c0a160e6d3cf00325ddc3939","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93888bcfdac8a1e3e6e89b5147e1cd0b1a2bb950c0a160e6d3cf00325ddc3939","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.LossProduct.Variant93888bcfdac8a1e3e6e89b5147e1cd0b1a2bb950c0a160e6d3cf00325ddc3939","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"93888bcfdac8a1e3e6e89b5147e1cd0b1a2bb950c0a160e6d3cf00325ddc3939","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuantitativeGapIteration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.QuantitativeGap
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Exact refinement losses and a sufficient uniform budget

Products retain every lower norm loss, and the normalized sum retains every
energy defect. The sufficient infinite-series criterion is conditional on the
actual family's positive product floor and summable defect budget.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.LossProduct.Variant93888bcfdac8a1e3e6e89b5147e1cd0b1a2bb950c0a160e6d3cf00325ddc3939

namespace FormalResearch.PositiveAtlas.QuantitativeGap

set_option autoImplicit false

open scoped BigOperators

/-- Cumulative squared lower norm factors. -/
def lossProduct (c : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∏ j ∈ Finset.range n, c j ^ 2

@[simp] theorem lossProduct_zero (c : ℕ → ℝ) : lossProduct c 0 = 1 := by
  simp [lossProduct]

theorem lossProduct_succ (c : ℕ → ℝ) (n : ℕ) :
    lossProduct c (n + 1) = lossProduct c n * c n ^ 2 := by
  exact Finset.prod_range_succ _ _

theorem lossProduct_pos (c : ℕ → ℝ) (hc : ∀ j, 0 < c j) (n : ℕ) :
    0 < lossProduct c n := by
  exact Finset.prod_pos fun j _ => sq_pos_of_pos (hc j)

/-- The exact lower-bound recurrence, without rounding or suppressed defects. -/
def refinementBudget (Δ₀ : ℝ) (c ε : ℕ → ℝ) : ℕ → ℝ
  | 0 => Δ₀
  | n + 1 => c n ^ 2 * refinementBudget Δ₀ c ε n - ε n

/-- Closed finite iteration, including division by the next cumulative loss. -/
theorem refinementBudget_eq (Δ₀ : ℝ) (c ε : ℕ → ℝ) (hc : ∀ j, 0 < c j) (n : ℕ) :
    refinementBudget Δ₀ c ε n = lossProduct c n *
      (Δ₀ - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1)) := by
  induction n with
  | zero => simp [refinementBudget]
  | succ n ih =>
    rw [refinementBudget, ih, Finset.sum_range_succ, lossProduct_succ]
    have hp : lossProduct c n ≠ 0 := ne_of_gt (lossProduct_pos c hc n)
    have hc' : c n ≠ 0 := ne_of_gt (hc n)
    field_simp [hp, hc']
    ring

/-- Any family obeying the one-step inequality dominates the exact budget. -/
theorem refinement_lower_bound (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    refinementBudget (Δ 0) c ε n ≤ Δ n := by
  induction n with
  | zero => exact le_rfl
  | succ n ih =>
    exact (sub_le_sub_right (mul_le_mul_of_nonneg_left ih (sq_nonneg _)) _).trans (hstep n)

/-- The requested finite normalized estimate follows from the actual recurrence. -/
theorem refinement_iteration (Δ : ℕ → ℝ) (c ε : ℕ → ℝ) (hc : ∀ j, 0 < c j)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    lossProduct c n *
      (Δ 0 - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1)) ≤ Δ n := by
  rw [← refinementBudget_eq (Δ 0) c ε hc n]
  exact refinement_lower_bound Δ c ε hstep n

/-- A finite-prefix budget and a product floor already suffice for uniformity. -/
theorem uniform_of_prefix_budget (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (pstar δ : ℝ) (hδ : 0 ≤ δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hbudget : ∀ n, ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    pstar * δ ≤ Δ n := by
  have hb : δ ≤ Δ 0 - ∑ j ∈ Finset.range n, ε j / lossProduct c (j + 1) := by
    linarith [hbudget n]
  exact (mul_le_mul_of_nonneg_right (hproduct n) hδ).trans
    ((mul_le_mul_of_nonneg_left hb (le_of_lt (lossProduct_pos c hc n))).trans
      (refinement_iteration Δ c ε hc hstep n))

/-- The summable nonnegative defect criterion implies all finite-prefix budgets,
including the initial indexed defect. -/
theorem uniform_of_summable_budget (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (hε : ∀ j, 0 ≤ ε j) (pstar δ : ℝ) (hδ : 0 ≤ δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hsummable : Summable (fun j => ε j / lossProduct c (j + 1)))
    (hbudget : (∑' j, ε j / lossProduct c (j + 1)) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) (n : ℕ) :
    pstar * δ ≤ Δ n := by
  apply uniform_of_prefix_budget Δ c ε hc pstar δ hδ hproduct _ hstep n
  intro k
  exact (hsummable.sum_le_tsum (Finset.range k) (fun j _ =>
    div_nonneg (hε j) (le_of_lt (lossProduct_pos c hc (j + 1))))).trans hbudget

/-- A positive product floor and positive remaining budget construct one
strictly positive constant for the entire refinement family. -/
theorem uniform_positive_certificate (Δ : ℕ → ℝ) (c ε : ℕ → ℝ)
    (hc : ∀ j, 0 < c j) (hε : ∀ j, 0 ≤ ε j) (pstar δ : ℝ)
    (hpstar : 0 < pstar) (hδ : 0 < δ)
    (hproduct : ∀ n, pstar ≤ lossProduct c n)
    (hsummable : Summable (fun j => ε j / lossProduct c (j + 1)))
    (hbudget : (∑' j, ε j / lossProduct c (j + 1)) ≤ Δ 0 - δ)
    (hstep : ∀ j, c j ^ 2 * Δ j - ε j ≤ Δ (j + 1)) :
    ∃ gap : ℝ, 0 < gap ∧ ∀ n, gap ≤ Δ n := by
  exact ⟨pstar * δ, mul_pos hpstar hδ,
    uniform_of_summable_budget Δ c ε hc hε pstar δ hδ.le hproduct hsummable hbudget hstep⟩

end FormalResearch.PositiveAtlas.QuantitativeGap
