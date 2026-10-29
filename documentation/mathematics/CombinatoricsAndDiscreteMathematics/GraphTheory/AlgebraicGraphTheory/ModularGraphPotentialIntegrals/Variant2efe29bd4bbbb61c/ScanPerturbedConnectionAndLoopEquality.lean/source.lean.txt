/-
ScanPerturbedConnectionAndLoopEquality — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c
Organized SHA-256: 9b49504df492867c8312ead2ae2da76b2c950d36bd778fd1ef6b6a502e9d5386
PMD: 510.7.030.090 algebraic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two genuine algebraic graph seams retain whole vertex/edge cochains, coboundary, the complete endpoint-indexed EdgePath constructors, recursive pathIntegral and exact telescoping/closed-loop-zero/additivity proofs; then the scan-perturbed phaseConnection and complete closed-loop equality proof. Only the exact same-source cochain/path-sum module is added to the connection component. Original Phase/ScanOrder imports remain unchanged. No higher-cell complex, quotient cohomology, antisymmetric edge law or torsion/finiteness premise is asserted. -/

import Folder.Cellular.Phase
import Folder.Cellular.ScanOrder

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.ModularGraphPotentialIntegrals.Variant2efe29bd4bbbb61c.CochainsIndexedPathsAndIntegralProofs

/-!
# Folder.Cellular.PhaseConnection

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.phase_connection
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/


namespace Folder
namespace Cellular

def phaseConnection
    (q : Cochain0 d k m)
    (ω : ScanTwist d k m) :
    Cochain1 d k m :=
  fun e => coboundary q e + ω.value e

theorem phaseConnection_loopIntegral_eq_scan
    (q : Cochain0 d k m)
    (ω : ScanTwist d k m)
    (p : EdgePath d k x x) :
    pathIntegral (phaseConnection q ω) p =
      pathIntegral ω.value p := by
  rw [show phaseConnection q ω = fun e => coboundary q e + ω.value e by rfl]
  rw [pathIntegral_add]
  rw [loopIntegral_coboundary_zero]
  simp

end Cellular
end Folder
