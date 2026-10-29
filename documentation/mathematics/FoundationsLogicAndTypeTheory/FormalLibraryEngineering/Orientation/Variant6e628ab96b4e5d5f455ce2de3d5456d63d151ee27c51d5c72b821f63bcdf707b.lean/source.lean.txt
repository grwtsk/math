/-!
# Euclidean presentation and arc orientation

Display-axis direction is explicitly distinct from intrinsic circular
orientation.  Winding remains integral.
-/

namespace Mathematics.Geometry

/-- Vertical display orientation; this does not alter plane geometry. -/
inductive YAxisDirection
  | up
  | down
  deriving DecidableEq, Repr

/-- Orientation of a directed circular arc. -/
inductive ArcOrientation
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- Exact integral winding, independent of floating-point angle accumulation. -/
abbrev WindingNumber := Int

end Mathematics.Geometry
