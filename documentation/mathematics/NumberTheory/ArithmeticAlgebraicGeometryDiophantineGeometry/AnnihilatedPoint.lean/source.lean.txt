/-
Exact natural-multiple annihilated point witness
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1e3c7ddc658d705d9432d8dea757dd232734139831d18cc11275e8d31296e662
Organized SHA-256: 7463dfc1302b188ba7abebbbd5d1822de00695d1df9654b65d871394fd7c6076
PMD: 510.2.040.010.030 torsion points (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete point plus actual nsmulPoint G m point=infinity witness, preserving full Field K/E/G/m. No m>0, primality, exact order, nonidentity or cardinality assumption is added; m=0 remains permitted. -/

import Folder.Arithmetic.Torsion
import Folder.Cellular.Phase

/-!
# Folder.Arithmetic.WeilPairing

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weil_pairing
Pivot role: none
Zero typology: elliptic
Contract boundary: contract
Composite stack role: torsion
-/


open Folder
open Folder.Arithmetic

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.AnnihilatedPointWitness.Variant1e3c7ddc658d705d

structure MTorsionPoint
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat) where
  point : ECPoint E
  annihilated : nsmulPoint G m point = ECPoint.infinity (E := E)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.AnnihilatedPointWitness.Variant1e3c7ddc658d705d
