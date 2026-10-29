/-
Positive consumers for actual joint-graph core solvability.
The real identity/zero helper proofs are reused from the repository's
ClosedComplexSolvability positive controls, under its MIT license.
Human project direction: grwtsk contributors. Assistance: OpenAI Codex.
The imported adapted results retain upstream OpenAI Apache-2.0 attribution.
-/
import GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability

set_option autoImplicit false

namespace GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability.PositiveChecks

noncomputable section

open LinearPMap

variable {𝕜 E F H : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
variable [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

example (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H)
    (hT : Dense (T.domain : Set E)) (hTc : T.IsClosed) (hSc : S.IsClosed)
    (hcomplex : ∀ x : T.domain, (T x, 0) ∈ S.graph)
    (D : Set (jointGraph T S)) (hD : Dense D)
    {ε : ℝ} (hε : 0 < ε)
    (hestimate : ∀ v ∈ D,
      ε * ‖v.val.1‖ ^ 2 ≤ ‖v.val.2.1‖ ^ 2 + ‖v.val.2.2‖ ^ 2)
    {f : F} (hf : (f, 0) ∈ S.graph) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ ‖f‖ / Real.sqrt ε :=
  exists_solution_of_core_estimate T S hT hTc hSc hcomplex D hD hε hestimate hf

private def identityOp : ℝ →ₗ.[ℝ] ℝ :=
  (LinearMap.id : ℝ →ₗ[ℝ] ℝ).toPMap ⊤

private theorem identity_dense : Dense (identityOp.domain : Set ℝ) := by
  change Dense (Set.univ : Set ℝ)
  exact dense_univ

private theorem identity_closed : identityOp.IsClosed := by
  have he : (identityOp.graph : Set (ℝ × ℝ)) = {p | p.1 = p.2} := by
    ext p
    change p ∈ identityOp.graph ↔ p.1 = p.2
    rw [LinearPMap.mem_graph_iff]
    constructor
    · rintro ⟨x, hx, hy⟩
      exact hx.symm.trans hy
    · intro hy
      exact ⟨⟨p.1, by trivial⟩, rfl, hy⟩
  change IsClosed (identityOp.graph : Set (ℝ × ℝ))
  rw [he]
  exact isClosed_eq continuous_fst continuous_snd

private theorem zero_closed : (0 : ℝ →ₗ.[ℝ] ℝ).IsClosed := by
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

private theorem identity_adjoint_apply (v : identityOp†.domain) :
    identityOp† v = (v : ℝ) := by
  apply LinearPMap.adjoint_apply_eq identity_dense
  intro x
  rfl

private theorem identity_zero_complex (x : identityOp.domain) :
    (identityOp x, 0) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph := by
  exact (0 : ℝ →ₗ.[ℝ] ℝ).mem_graph_iff.mpr
    ⟨⟨identityOp x, by trivial⟩, rfl, rfl⟩

private theorem identity_core_estimate :
    ∀ v ∈ (Set.univ : Set (jointGraph identityOp (0 : ℝ →ₗ.[ℝ] ℝ))),
      (1 : ℝ) * ‖v.val.1‖ ^ 2 ≤ ‖v.val.2.1‖ ^ 2 + ‖v.val.2.2‖ ^ 2 := by
  intro v _
  have he : v.val.2.1 = v.val.1 := by
    obtain ⟨x, hx, hy⟩ := identityOp†.mem_graph_iff.mp v.property.1
    rw [identity_adjoint_apply] at hy
    exact hy.symm.trans hx
  rw [he, one_mul]
  exact le_add_of_nonneg_right (sq_nonneg ‖v.val.2.2‖)

example : ∃ u : identityOp.domain, identityOp u = 1 ∧ ‖(u : ℝ)‖ ≤ 1 := by
  have hkernel : ((1 : ℝ), (0 : ℝ)) ∈ (0 : ℝ →ₗ.[ℝ] ℝ).graph :=
    (0 : ℝ →ₗ.[ℝ] ℝ).mem_graph_iff.mpr ⟨⟨1, by trivial⟩, rfl, rfl⟩
  have h := exists_solution_of_core_estimate identityOp (0 : ℝ →ₗ.[ℝ] ℝ)
    identity_dense identity_closed zero_closed identity_zero_complex
    (Set.univ : Set (jointGraph identityOp (0 : ℝ →ₗ.[ℝ] ℝ))) dense_univ
    (show (0 : ℝ) < 1 from zero_lt_one) identity_core_estimate hkernel
  simpa using h

end

end GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability.PositiveChecks
