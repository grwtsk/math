/-
Intentionally rejected: a dense closed zero operator cannot send any input to
the nonzero target 1. The proved obstructions precede one final type mismatch
that tries to omit the actual adjoint-domain pairing hypothesis.
Human project direction: grwtsk contributors. Assistance: OpenAI Codex.
Released under the repository MIT license. Imported adapted results retain
their upstream OpenAI Apache-2.0 attribution and license.
-/
import GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability

set_option autoImplicit false

namespace GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability.NegativeChecks

open LinearPMap

theorem zero_dense : Dense ((0 : ℝ →ₗ.[ℝ] ℝ).domain : Set ℝ) := by
  change Dense (Set.univ : Set ℝ)
  exact dense_univ

theorem zero_closed : (0 : ℝ →ₗ.[ℝ] ℝ).IsClosed := by
  have he : ((0 : ℝ →ₗ.[ℝ] ℝ).graph : Set (ℝ × ℝ)) = {p | p.2 = 0} := by
    ext p
    change p ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph ↔ p.2 = 0
    rw [LinearPMap.mem_graph_iff]
    constructor
    · rintro ⟨x, _, hy⟩
      exact hy.symm
    · intro hy
      exact ⟨⟨p.1, by trivial⟩, rfl, hy.symm⟩
  change IsClosed ((0 : ℝ →ₗ.[ℝ] ℝ).graph : Set (ℝ × ℝ))
  rw [he]
  exact isClosed_eq continuous_snd continuous_const

theorem zero_target_not_mem_graph :
    ((0 : ℝ), (1 : ℝ)) ∉ (0 : ℝ →ₗ.[ℝ] ℝ).graph := by
  intro h
  obtain ⟨x, _, hx⟩ := (0 : ℝ →ₗ.[ℝ] ℝ).mem_graph_iff.mp h
  exact zero_ne_one (show (0 : ℝ) = 1 from hx)

theorem zero_has_no_unit_solution :
    ¬ ∃ u : (0 : ℝ →ₗ.[ℝ] ℝ).domain, (0 : ℝ →ₗ.[ℝ] ℝ) u = 1 := by
  rintro ⟨u, hu⟩
  exact zero_ne_one (show (0 : ℝ) = 1 from hu)

theorem zero_pairing_fails :
    ¬ ∀ v : (0 : ℝ →ₗ.[ℝ] ℝ)†.domain,
      inner ℝ (0 : ℝ) ((0 : ℝ →ₗ.[ℝ] ℝ)† v) = inner ℝ (1 : ℝ) (v : ℝ) := by
  have hv : (1 : ℝ) ∈ (0 : ℝ →ₗ.[ℝ] ℝ)†.domain := by
    apply LinearPMap.mem_adjoint_domain_of_exists
    refine ⟨0, fun x => ?_⟩
    change inner ℝ (0 : ℝ) (x : ℝ) = inner ℝ (1 : ℝ) (0 : ℝ)
    simp
  intro h
  have bad := h ⟨1, hv⟩
  simp at bad

/- EXPECTED TYPE MISMATCH: density and closedness leave the pairing premise open. -/
example : ((0 : ℝ), (1 : ℝ)) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph := by
  exact mem_graph_of_adjoint_identity (0 : ℝ →ₗ.[ℝ] ℝ) zero_dense zero_closed

end GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability.NegativeChecks
