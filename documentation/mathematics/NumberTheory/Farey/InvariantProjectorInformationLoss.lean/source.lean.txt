/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This adapter concerns only the native complex two-coordinate representation
of both Farey shears, not general spectral or arithmetic representations.
-/
import GRWTSK.NumberTheory.Farey.GroupSpectralChannel

/-!
# Native Farey projectors cannot be simultaneous nontrivial channels

The existing commutant theorem says an idempotent commuting with both
complexified native Farey shears equals zero or identity. In information
terms, every such projector either erases all two-coordinate vectors or
retains all of them. Requiring both a nonzero retained signal and a
nontrivially changed signal contradicts that algebraic conclusion.

It says nothing about arbitrary one-operator eigenspaces, higher-dimensional
representations, group actions on different objects, spectral limits, RH,
or an elliptic rank theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.GroupSpectralChannel

open GRWTSK.NumberTheory.Farey.GroupSuperwalk

/-- An invariant idempotent is globally zero or globally identity on the
native two-coordinate carrier; there is no intermediate readout map. -/
theorem native_projector_erases_all_or_retains_all
    (P : MatC)
    (hIdem : P * P = P)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P) :
    (∀ v : Fin 2 → ℂ, P.mulVec v = 0) ∨
      (∀ v : Fin 2 → ℂ, P.mulVec v = v) := by
  rcases native_invariant_projector_trivial P hIdem hL hR with hzero | hone
  · left
    intro v
    simp [hzero]
  · right
    intro v
    simp [hone]

/-- The native representation admits no equivariant idempotent that both
retains some nonzero information and changes another input. -/
theorem no_native_projector_with_partial_information
    (P : MatC)
    (hIdem : P * P = P)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P)
    (hretains : ∃ v : Fin 2 → ℂ, P.mulVec v ≠ 0)
    (hchanges : ∃ v : Fin 2 → ℂ, P.mulVec v ≠ v) : False := by
  rcases native_projector_erases_all_or_retains_all P hIdem hL hR with hzero | hone
  · obtain ⟨v, hv⟩ := hretains
    exact hv (hzero v)
  · obtain ⟨v, hv⟩ := hchanges
    exact hv (hone v)

end GRWTSK.NumberTheory.Farey.GroupSpectralChannel
