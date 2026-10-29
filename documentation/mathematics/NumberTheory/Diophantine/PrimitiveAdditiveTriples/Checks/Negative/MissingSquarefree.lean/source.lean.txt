import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: the squarefree subfamily theorem needs its hypothesis.
example (t : PrimitiveAdditiveTriple) (ε : ℝ) (hε : 0 ≤ ε) :
    (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) := by
  exact t.bound_of_squarefree ε hε
