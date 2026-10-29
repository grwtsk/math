/-
Adapted from OpenAI's openai/math, revision
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/Analysis/InnerProductSpace/ComplexSolvability.lean.
Upstream authorship: OpenAI, per lean/formalization.yaml.
Released under Apache-2.0; see LICENSES/OpenAI-Apache-2.0.txt.
Changes: extract the full-domain complex estimate into a mathematical namespace,
reuse the admitted closed-operator support, and retain every domain and estimate
premise. The later joint-graph/core argument is not included.
Human project direction: grwtsk contributors. Adaptation assistance: OpenAI Codex.
Mathlib retains its upstream authorship and licensing.
-/
import GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability
import Mathlib.Tactic.Ring

/-!
# Solvability from a closed Hilbert-complex estimate

The target lies in the actual graph kernel of the second operator. The
coercive estimate is required on the intersection of its domain with the
actual adjoint domain of the first operator. The initial and middle Hilbert
spaces are complete; completeness of the last inner-product space is absent.
-/

set_option autoImplicit false

open scoped InnerProductSpace

namespace GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability

noncomputable section

open LinearPMap
open GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability

variable {𝕜 E F H : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] [CompleteSpace F]
variable [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

theorem exists_solution_of_complex_estimate
    (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H)
    (hT : Dense (T.domain : Set E)) (hTc : T.IsClosed) (hSc : S.IsClosed)
    (hcomplex : ∀ x : T.domain, (T x, 0) ∈ S.graph)
    {ε : ℝ} (hε : 0 < ε)
    (hestimate : ∀ v : T†.domain, ∀ hv : (v : F) ∈ S.domain,
      ε * ‖(v : F)‖ ^ 2 ≤ ‖T† v‖ ^ 2 + ‖S ⟨(v : F), hv⟩‖ ^ 2)
    {f : F} (hf : (f, 0) ∈ S.graph) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ ‖f‖ / Real.sqrt ε := by
  let K : Submodule 𝕜 F :=
    S.graph.comap ((LinearMap.id : F →ₗ[𝕜] F).prod (0 : F →ₗ[𝕜] H))
  have hKc : IsClosed (K : Set F) :=
    hSc.preimage (continuous_id.prodMk continuous_const)
  let : CompleteSpace K := hKc.completeSpace_coe
  have hKf : f ∈ K := hf
  have hsqrt : 0 < Real.sqrt ε := Real.sqrt_pos.mpr hε
  apply exists_solution_of_adjoint_bound T hT hTc f
    (div_nonneg (norm_nonneg _) hsqrt.le)
  intro v
  obtain ⟨p, hp, q, hq, hvpq⟩ := K.exists_add_mem_mem_orthogonal (v : F)
  have hqT (x : T.domain) : inner 𝕜 q (T x) = 0 :=
    (K.mem_orthogonal' q).mp hq (T x) (hcomplex x)
  have hqdom : q ∈ T†.domain := by
    apply LinearPMap.mem_adjoint_domain_of_exists
    exact ⟨0, fun x => by rw [inner_zero_left, hqT]⟩
  have hqadj : T† ⟨q, hqdom⟩ = 0 := by
    apply LinearPMap.adjoint_apply_eq hT
    intro x
    rw [inner_zero_left, hqT]
  have hpdom : p ∈ T†.domain := by
    have he : p = (v : F) - q := (eq_sub_iff_add_eq).mpr hvpq.symm
    rw [he]
    exact T†.domain.sub_mem v.property hqdom
  obtain ⟨⟨p, hpS⟩, rfl, hSp⟩ := S.mem_graph_iff.mp (show (p, 0) ∈ S.graph from hp)
  let vp : T†.domain := ⟨p, hpdom⟩
  have hvsum : v = vp + ⟨q, hqdom⟩ := Subtype.ext hvpq
  have hTp : T† vp = T† v := by
    rw [hvsum, LinearPMap.map_add, hqadj, add_zero]
  have hE : ε * ‖p‖ ^ 2 ≤ ‖T† v‖ ^ 2 := by
    simpa only [vp, hSp, norm_zero, zero_pow (by decide : (2 : ℕ) ≠ 0), add_zero,
      ← hTp] using hestimate vp hpS
  have hnp : ‖p‖ ≤ ‖T† v‖ / Real.sqrt ε := by
    apply (le_div_iff₀ hsqrt).mpr
    apply (sq_le_sq₀ (mul_nonneg (norm_nonneg _) hsqrt.le) (norm_nonneg _)).mp
    simpa only [mul_pow, Real.sq_sqrt hε.le, mul_comm] using hE
  have hpair : inner 𝕜 f (v : F) = inner 𝕜 f p := by
    rw [hvpq, inner_add_right, K.inner_right_of_mem_orthogonal hKf hq, add_zero]
  rw [hpair]
  calc
    ‖inner 𝕜 f p‖ ≤ ‖f‖ * ‖p‖ := norm_inner_le_norm f p
    _ ≤ ‖f‖ * (‖T† v‖ / Real.sqrt ε) := mul_le_mul_of_nonneg_left hnp (norm_nonneg _)
    _ = (‖f‖ / Real.sqrt ε) * ‖T† v‖ := by ring

end

end GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability
