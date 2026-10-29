# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkSurgeryGame.Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f04600f2db7b758740afabad8403b22d3cf5cfda` · SHA-256 `ed0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.NetworkSurgery
import Generated.TopologySurgeryGame

/-!
# Quarantined adapter from the octahedral fixture to the finite ledger interface

The adapter records an already-proved coefficientwise cancellation as a
discharged finite ledger.  It does not identify repository surgery with a
simplicial cut and proves no topological or semantic equivalence.
-/

namespace Generated.NetworkSurgeryGame

open Surface.Core.Transport
open Surface.Core.NetworkSurgery

private def code (value : Nat) : StableCode :=
  ⟨value % revisionModulus, Nat.mod_lt _ (by simp [revisionModulus])⟩

def octahedralCutAtom (cut : Nat) : InterfaceAtom :=
  ⟨.delimiter, code cut, code (cut + 1), code (cut + 2)⟩

def dischargedOctahedralLedger (cut : Nat) : PreparedBoundaryLedger where
  excision := [⟨octahedralCutAtom cut, -1⟩]
  graft := [⟨octahedralCutAtom cut, 1⟩]
  rewrite := []

@[surface_candidate]
theorem dischargedOctahedralLedger_is_nonempty (cut : Nat) :
    (dischargedOctahedralLedger cut).totalBoundary ≠ [] := by
  simp [PreparedBoundaryLedger.totalBoundary, BoundaryLedger.add,
    dischargedOctahedralLedger]

@[surface_candidate]
theorem octahedralSplit_is_finite_boundaryLedger_example (cut : Nat)
    (_sound : Generated.TopologySurgeryGame.OctahedralCapSurgerySound cut) :
    BoundaryBalanced (dischargedOctahedralLedger cut) := by
  simp [BoundaryBalanced, PreparedBoundaryLedger.totalBoundary,
    BoundaryLedger.IsZero, BoundaryLedger.coefficient, BoundaryLedger.add,
    dischargedOctahedralLedger]

end Generated.NetworkSurgeryGame
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebf98586d3204502db09b3b9bde92998ced9b94104395d46165a39b3b42d4b90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkSurgeryGame/Varianted0e0f450d38279da12516a83bf2c99df22cf3ff39c432d532ebbc06da8a6fed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
