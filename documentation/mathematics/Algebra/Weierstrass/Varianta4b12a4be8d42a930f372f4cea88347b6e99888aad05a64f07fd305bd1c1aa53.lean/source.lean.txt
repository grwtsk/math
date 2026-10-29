import Folder.Basic

/-!
# Folder.Arithmetic.Weierstrass

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weierstrass
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

structure WeierstrassCurve (K : Type _) [Field K] where
  a1 : K
  a2 : K
  a3 : K
  a4 : K
  a6 : K

structure ShortWeierstrass (K : Type _) [Field K] where
  A : K
  B : K

structure AffinePoint {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  x : K
  y : K
  on_curve : y ^ 2 = x ^ 3 + E.A * x + E.B

end Arithmetic
end Folder
