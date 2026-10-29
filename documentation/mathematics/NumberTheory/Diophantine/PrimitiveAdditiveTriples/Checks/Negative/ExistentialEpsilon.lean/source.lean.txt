import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: existence of an epsilon does not supply every epsilon.
example (h : ∃ ε : ℝ, 0 < ε ∧ ABCBound ε) : ABCConjecture := by exact h
