import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Partial-bitfield completion adapter

This is the only edge from the representation-specific bitfield order into
the generic completion semantics.
-/

namespace Mathematics.BinaryFrontier.Completion

open Mathematics.BinaryFrontier

def bitfieldSemantics
    {width : Nat}
    {Constraint : Type*}
    (evaluate :
      FullBitfield width →
        Constraint →
        Prop) :
    Semantics
      (PartialBitfield width)
      (FullBitfield width)
      Constraint where
  refines := Extends
  extendsFull := ExtendsFull
  satisfies := evaluate
  refinement_sound := by
    intro parent child completion
      parentChild childCompletion
    exact
      extends_trans
        parentChild childCompletion

end Mathematics.BinaryFrontier.Completion
