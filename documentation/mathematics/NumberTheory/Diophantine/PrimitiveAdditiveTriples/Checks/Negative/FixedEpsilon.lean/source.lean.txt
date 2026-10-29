import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: one epsilon is not the frozen all-epsilon target.
example (h : ABCBound 1) : ABCConjecture := by exact h
