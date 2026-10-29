import Boolean.Tree.Eval
import Boolean.Formula.Eval

namespace Boolean

universe u

/-- Forget NAND as a primitive and compile a Boolean tree into `Formula`. -/
def Tree.toFormula : Tree α → Formula α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (Tree.toFormula p)
  | .conj p q => .conj (Tree.toFormula p) (Tree.toFormula q)
  | .disj p q => .disj (Tree.toFormula p) (Tree.toFormula q)
  | .impl p q => .impl (Tree.toFormula p) (Tree.toFormula q)
  | .eqv p q => .eqv (Tree.toFormula p) (Tree.toFormula q)
  | .nand p q => .neg (.conj (Tree.toFormula p) (Tree.toFormula q))

@[simp] theorem Tree.eval_toFormula
    (ν : Valuation α)
    (p : Tree α) :
    Formula.eval ν (Tree.toFormula p) = Tree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [Tree.toFormula, Tree.eval, ih]
  | conj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]

end Boolean
