/-!
# Boolean expression trees

Object nucleus for finite Boolean expression trees. Evaluation, compilation,
normal forms, encodings, and completeness proofs live in `Boolean.Tree.*`
leaves.
-/

namespace Boolean

universe u

/-- Boolean expression trees with NAND kept as a primitive structural operator. -/
inductive Tree (α : Type u) : Type u where
  | var : α → Tree α
  | falsum : Tree α
  | truth : Tree α
  | neg : Tree α → Tree α
  | conj : Tree α → Tree α → Tree α
  | disj : Tree α → Tree α → Tree α
  | impl : Tree α → Tree α → Tree α
  | eqv : Tree α → Tree α → Tree α
  | nand : Tree α → Tree α → Tree α
deriving Repr, DecidableEq

end Boolean
