import Mathematics.Core.SemanticIdentity
import Mathlib.Algebra.Group.Hom.Basic

/-! # Dimension-explicit cubical chain complexes -/

namespace Mathematics.Cubical

universe u

/-- A concrete complex must provide the fixed predicate `∂ (∂ c) = 0`. -/
structure Complex (Chain : Type u) [AddCommMonoid Chain] where
  dimension : Nat
  boundary : Chain →+ Chain
  boundary_squared_zero : ∀ chain, boundary (boundary chain) = 0

theorem boundary_squared_zero
    {Chain : Type u} [AddCommMonoid Chain]
    (complex : Complex Chain)
    (chain : Chain) :
    complex.boundary (complex.boundary chain) = 0 :=
  complex.boundary_squared_zero chain

end Mathematics.Cubical
