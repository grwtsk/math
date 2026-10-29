# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.RadicalMultiplicativeInterface

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f11be7402b720bed615560f33300bdc76d74515` · SHA-256 `bae6473556d89d0a222f1ea8c13b92d12107dd90e5b19c423a4097297a73c35a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2599ebca8841904504979b39603b7723fb155590bd544fc4da12699d4db5baa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/RadicalMultiplicativeInterface.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
