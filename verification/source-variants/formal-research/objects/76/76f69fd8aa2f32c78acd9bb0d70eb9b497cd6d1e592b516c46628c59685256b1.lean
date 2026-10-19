import Mathematics.Resolution.Frequency
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Certified finite-field origin projection

Origin is an exact idempotent linear projection.  It groups unresolved
obligations but cannot alter their proof status.
-/

namespace Mathematics.Resolution

universe u v w

structure CertifiedOriginSystem
    (𝔽 : Type u)
    (V : Type v)
    (Obligation : Type w)
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V] where
  encode : Obligation → V
  project : V →ₗ[𝔽] V
  idempotent :
    project.comp project = project

def CertifiedOriginSystem.origin
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (obligation : Obligation) :
    V :=
  system.project (system.encode obligation)

def originLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (frequency : Nat)
    (origin : V) :
    Finset Obligation :=
  unresolvedSet.filter fun obligation ↦
    cut.frequency obligation = frequency ∧
    system.origin obligation = origin

theorem originLayer_coherent
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    {system : CertifiedOriginSystem 𝔽 V Obligation}
    {frequency : Nat}
    {origin : V}
    {obligation : Obligation}
    (member :
      obligation ∈
        originLayer cut unresolvedSet system frequency origin) :
    system.project (system.encode obligation) = origin :=
  (Finset.mem_filter.mp member).2.2

end Mathematics.Resolution
