# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseTransport.Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4abf6c4deb67a0a5b78ef0f59fc71fa683f902d7` · SHA-256 `d451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.AmplitudeTransport

/-!
# Phase transport and defect holonomy
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PhaseTransport
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph) where
  phase : Arc graph → Phase3
  reverse :
    ∀ arc,
      phase arc.reverse =
        phase arc
  defectHolonomy :
    ∀ bypass,
      (cut.defectLoop bypass).phaseProduct
          phase =
        .reflect
  Face : Type
  faceBoundary :
    Face →
      Σ node,
        DeflectionPath graph node node
  ordinaryFlatness :
    ∀ face,
      let boundary := faceBoundary face
      boundary.2.phaseProduct phase =
        .identity

def DeflectionPath.transportResidue
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (residue : Residue3) :
    Residue3 :=
  (path.phaseProduct phase).act residue

theorem DeflectionPath.transportResidue_safe
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    {residue : Residue3}
    (safe : residue.Safe) :
    (path.transportResidue phase residue).Safe :=
  phase3_action_preserves_safe
    (path.phaseProduct phase) safe

theorem PhaseTransport.defectLoop_reflects
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PhaseTransport cut)
    (bypass : cut.Bypass)
    (residue : Residue3) :
    (cut.defectLoop bypass).transportResidue
        transport.phase residue =
      residue.reflect := by
  unfold DeflectionPath.transportResidue
  rw [transport.defectHolonomy bypass]
  rfl

end Mathematics.SemiLocalDefect.ResidueDeflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3aec23e1e67629d8aa9f49bf0e7f27dd2e9b13b8e1ed4789e6131cc7b1f1ef9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseTransport/Variantd451bb8a6275587859fae927bad1f6da7e6f698796c2228368741294a0b1e9b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
