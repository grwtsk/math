/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical proof-carrying interface for choice operators.

What is certificate-gated:
The existence of a choice operator is explicit data in `ChoiceAssumption`.

What is not claimed:
This module does not install global choice in canonical Surface mathematics.

Primary mathematical source:
Internal Surface historical choice-coverage scaffold.
-/

namespace Surface
namespace Legacy

universe u

abbrev Set (α : Type u) : Type u :=
  α -> Prop

structure ChoiceOperator where
  choose :
    ∀ {α : Type},
      (S : Set α) ->
      (∃ x, S x) ->
        α
  choose_mem :
    ∀ {α : Type}
      (S : Set α)
      (h : ∃ x, S x),
        S (choose S h)

structure ChoiceAssumption where
  operator : ChoiceOperator

end Legacy
end Surface
