/-
Exact natural-number point-multiple recursion
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf
Organized SHA-256: 4459f1e8eaec802b6a7875d8f80c87dead024a106a3802eb7fe58418c9e4dd57
PMD: 510.2.040.010.030 torsion points (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole Nat recursion retains zero -> infinity and successor -> G.add P (recursive multiple). Full Field K/E/G context retained; no commutation, distributivity, order or torsion-existence theorem added. -/

import Folder.Arithmetic.EllipticCurve

/-!
# Folder.Arithmetic.Torsion

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.torsion
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


open Folder
open Folder.Arithmetic

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50

def nsmulPoint {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E) :
    Nat → ECPoint E → ECPoint E
  | 0, _ => ECPoint.infinity (E := E)
  | n + 1, P => G.add P (nsmulPoint G n P)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50
