import Folder.GrandChallenge.Status

/-!
# Folder.GrandChallenge.BSD.FixedPointRecursion

Radiation role: research-boundary
BinaryMatrix spine: This module records BSD fixed-point recursion scaffolding.
Ontology: bsd_fixed_point_recursion
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace BSD

structure EllipticCurveObject where
  label : String

structure FixedPointRecursion where
  curve : EllipticCurveObject
  recursionLabel : String
  fixedPointData : Type
  recursionCompatible : Prop
  recursionCompatible_certified : recursionCompatible

theorem fixed_point_recursion_compatible_if_supplied
    (R : FixedPointRecursion) :
    R.recursionCompatible :=
  R.recursionCompatible_certified

end BSD
end GrandChallenge
end Folder
