/-
CanonicalHomeomorphismAlignment — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc
Organized SHA-256: a1f6321e3393ad8cb95368f19292481a8f150854fcf214e0857f451ee8c0255c
PMD: 510.4.010.030.020 homeomorphisms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The copied canonical Cantor homeomorphism and its exact toEquiv equality retain the original library identity and proof term; no new bridge is invented. -/

import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Instances.CantorSet

import GRWTSK.Topology.GeneralTopology.ExactCantorRepresentations.Variantf2a95bce9390a5c2.CanonicalDigitEquivalenceAndLaws
/-!
# Analytic designated Cantor representation

This is the concrete exact-real specialization of the project scalar.  It is
Mathlib's middle-thirds Cantor subset of `Real`, not a floating approximation
or a symbolic replacement.  Mathlib proves that its chosen `{0,2}` ternary
sequence is unique and supplies the inverse digit map and homeomorphism.
-/

namespace BitMatrix.Topology

open Real

/-- The exact representation is also Mathlib's canonical Cantor homeomorphism. -/
noncomputable def analyticCantorHomeomorphism :
    BitMatrix.Carrier.BitStream ≃ₜ ExactCantorScalar :=
  cantorSetHomeomorphNatToBool.symm

theorem analyticCantorHomeomorphism_toEquiv :
    analyticCantorHomeomorphism.toEquiv =
      analyticCantorRepresentation.theta :=
  rfl

end BitMatrix.Topology
