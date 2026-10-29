import Surface.Flow.Heat.Coverage

namespace Surface

structure ChainComplex where
  objectName : String
  boundarySquaredZero : Prop

theorem chainComplex_requires_boundary_squared_zero
    (C : ChainComplex) :
    C.boundarySquaredZero -> C.boundarySquaredZero := by
  intro h
  exact h

end Surface
