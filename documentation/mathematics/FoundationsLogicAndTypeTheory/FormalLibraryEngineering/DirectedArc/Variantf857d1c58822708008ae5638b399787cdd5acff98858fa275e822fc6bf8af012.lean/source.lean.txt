import Mathematics.Geometry.Circle
import Mathematics.Geometry.Orientation

/-!
# Directed circular arcs

An arc carries exact endpoint-membership witnesses and an intrinsic direction.
Display-axis configuration is deliberately absent.
-/

namespace Mathematics.Geometry

/-- A directed arc on a positive-radius Euclidean circle. -/
structure DirectedArc where
  circle : PlaneCircle
  startPoint : PlanePoint
  endPoint : PlanePoint
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

end Mathematics.Geometry
