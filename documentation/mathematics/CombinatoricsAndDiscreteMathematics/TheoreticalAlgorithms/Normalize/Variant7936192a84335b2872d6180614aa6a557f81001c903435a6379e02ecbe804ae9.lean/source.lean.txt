import Boolean.Tree.Eval

namespace Boolean

universe u

/-!
Structural negation-normalization for Boolean trees.

`Tree.nnf` removes implication/equivalence/NAND and pushes negation to
variables and constants.  The auxiliary `Tree.negNnf` is structurally
recursive on the same tree, avoiding a fuel argument.
-/

mutual

def Tree.nnf : Tree α → Tree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => Tree.negNnf p
  | .conj p q => .conj (Tree.nnf p) (Tree.nnf q)
  | .disj p q => .disj (Tree.nnf p) (Tree.nnf q)
  | .impl p q => .disj (Tree.negNnf p) (Tree.nnf q)
  | .eqv p q =>
      .conj
        (.disj (Tree.negNnf p) (Tree.nnf q))
        (.disj (Tree.negNnf q) (Tree.nnf p))
  | .nand p q => .disj (Tree.negNnf p) (Tree.negNnf q)

def Tree.negNnf : Tree α → Tree α
  | .var a => .neg (.var a)
  | .falsum => .truth
  | .truth => .falsum
  | .neg p => Tree.nnf p
  | .conj p q => .disj (Tree.negNnf p) (Tree.negNnf q)
  | .disj p q => .conj (Tree.negNnf p) (Tree.negNnf q)
  | .impl p q => .conj (Tree.nnf p) (Tree.negNnf q)
  | .eqv p q =>
      .disj
        (.conj (Tree.nnf p) (Tree.negNnf q))
        (.conj (Tree.negNnf p) (Tree.nnf q))
  | .nand p q => .conj (Tree.nnf p) (Tree.nnf q)

end

theorem Tree.eval_nnf_and_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.nnf p) = Tree.eval ν p ∧
      Tree.eval ν (Tree.negNnf p) = !(Tree.eval ν p) := by
  induction p with
  | var a => exact ⟨rfl, rfl⟩
  | falsum => exact ⟨rfl, rfl⟩
  | truth => exact ⟨rfl, rfl⟩
  | neg p ih =>
      constructor
      · exact ih.2
      · cases hp : Tree.eval ν p <;> simp [Tree.negNnf, Tree.eval, ih.1, hp]
  | conj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.eval, ihp.1, ihq.1]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.2, ihq.2, hp, hq]
  | disj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.eval, ihp.1, ihq.1]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.2, ihq.2, hp, hq]
  | impl p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.2, ihq.1, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihq.2, hp, hq]
  | eqv p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2, hp, hq]
  | nand p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.2, ihq.2, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihq.1, hp, hq]

@[simp] theorem Tree.eval_nnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.nnf p) = Tree.eval ν p :=
  (Tree.eval_nnf_and_negNnf ν p).1

@[simp] theorem Tree.eval_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.negNnf p) = !(Tree.eval ν p) :=
  (Tree.eval_nnf_and_negNnf ν p).2

end Boolean
