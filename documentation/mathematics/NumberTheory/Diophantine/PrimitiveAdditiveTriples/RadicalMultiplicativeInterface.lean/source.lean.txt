/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical

set_option autoImplicit false

/-!
# Multiplicative interfaces through the radical

An integral observable factors through the natural-number radical and is then transported
by a monoid homomorphism. For a primitive additive triple, the existing pairwise-coprime
radical factorization therefore becomes a multiplicative coordinate factorization.

This is an interface theorem only. It does not supply an `abc` height estimate, choose a
moment family, or identify a zeta or screw-kernel quantity with the observable.
-/

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open UniqueFactorizationMonoid

namespace PrimitiveAdditiveTriple

/-- An observable obtained by applying a multiplicative lift to the radical. -/
structure RadicalMultiplicativeInterface (M : Type*) [CommMonoid M] where
  lift : ℕ →* M
  observable : PrimitiveAdditiveTriple → M
  observable_eq_lift_radical : ∀ triple,
    observable triple = lift triple.radical

/-- The canonical interface associated with any monoid homomorphism out of the natural
numbers. -/
noncomputable def RadicalMultiplicativeInterface.canonical
    {M : Type*} [CommMonoid M] (lift : ℕ →* M) :
    RadicalMultiplicativeInterface M where
  lift := lift
  observable := fun triple => lift triple.radical
  observable_eq_lift_radical := fun _ => rfl

@[simp]
theorem RadicalMultiplicativeInterface.canonical_observable
    {M : Type*} [CommMonoid M] (lift : ℕ →* M)
    (triple : PrimitiveAdditiveTriple) :
    (RadicalMultiplicativeInterface.canonical lift).observable triple =
      lift triple.radical :=
  rfl

/-- The radical lift factors into the three coordinate radicals for every primitive
positive additive triple. -/
theorem RadicalMultiplicativeInterface.observable_eq_coordinate_radicals
    {M : Type*} [CommMonoid M] (interface : RadicalMultiplicativeInterface M)
    (triple : PrimitiveAdditiveTriple) :
    interface.observable triple =
      interface.lift (UniqueFactorizationMonoid.radical triple.a) *
        interface.lift (UniqueFactorizationMonoid.radical triple.b) *
          interface.lift (UniqueFactorizationMonoid.radical triple.c) := by
  rw [interface.observable_eq_lift_radical triple, triple.radical_eq_product]
  simp

end PrimitiveAdditiveTriple
end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
