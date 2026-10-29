import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Exact complex germ splitting retains every removed low jet

Batch 18 B18-L1 concerns actual complex derivatives, not formal jet labels.
A source germ equal to the sum of two sufficiently differentiable children
has their sum of iterated derivatives. A vanishing high jet therefore survives
unchanged in the low child. Every order, equality neighborhood and regularity
premise is explicit. The analytic source-germ construction and proof of its
high child's order of vanishing remain separate.

Human low-jet conservation direction: grwtsk contributors. Local complex-germ
adapter and Lean proofs: OpenAI Codex. Mathlib's iterated derivative laws retain
their upstream names and mathematical/formal-source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.GermJetConservation

open Filter
open scoped Topology

theorem exact_germ_jet_split {C I R : ℂ → ℂ} {j : ℕ}
    (hjoin : C =ᶠ[𝓝 (1 : ℂ)] (fun z => I z + R z))
    (hI : ContDiffAt ℂ j I 1) (hR : ContDiffAt ℂ j R 1) :
    iteratedDeriv j C 1 = iteratedDeriv j I 1 + iteratedDeriv j R 1 := by
  have h := (hjoin.iteratedDeriv j).eq_of_nhds
  rw [iteratedDeriv_fun_add hI hR] at h
  exact h

theorem vanishing_high_jet_is_retained {C I R : ℂ → ℂ} {j : ℕ}
    (hjoin : C =ᶠ[𝓝 (1 : ℂ)] (fun z => I z + R z))
    (hI : ContDiffAt ℂ j I 1) (hR : ContDiffAt ℂ j R 1)
    (hzero : iteratedDeriv j R 1 = 0) : iteratedDeriv j I 1 = iteratedDeriv j C 1 := by
  have h := exact_germ_jet_split hjoin hI hR
  rw [hzero, add_zero] at h
  exact h.symm

theorem all_low_jets_conserved {C I R : ℂ → ℂ} {r : ℕ}
    (hjoin : C =ᶠ[𝓝 (1 : ℂ)] (fun z => I z + R z))
    (hI : ∀ j < r, ContDiffAt ℂ j I 1) (hR : ∀ j < r, ContDiffAt ℂ j R 1)
    (hzero : ∀ j < r, iteratedDeriv j R 1 = 0) :
    ∀ j < r, iteratedDeriv j I 1 = iteratedDeriv j C 1 :=
  fun j hj => vanishing_high_jet_is_retained hjoin (hI j hj) (hR j hj) (hzero j hj)

theorem nonzero_source_germ_cannot_have_two_zero_children {C I R : ℂ → ℂ}
    (hjoin : C =ᶠ[𝓝 (1 : ℂ)] (fun z => I z + R z)) (hC : C 1 ≠ 0) :
    ¬ (I 1 = 0 ∧ R 1 = 0) := by
  rintro ⟨hI, hR⟩
  have h := hjoin.eq_of_nhds
  simp only [hI, hR, add_zero] at h
  exact hC h

end GRWTSK.RiemannHypothesis.Conversation.GermJetConservation
