import GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

-- A field-polynomial degree bound cannot inhabit the all-epsilon integer target.
example : GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCConjecture := by
  exact @Polynomial.abc
