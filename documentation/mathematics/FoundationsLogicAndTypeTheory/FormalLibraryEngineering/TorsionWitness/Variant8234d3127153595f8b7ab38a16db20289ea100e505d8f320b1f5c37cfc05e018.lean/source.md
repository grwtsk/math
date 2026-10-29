# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionWitness.Variant8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20464d24a2fd38908cb2db2a45a71214b4f4b620` · SHA-256 `8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PrimeCompact
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.TorsionWitness

structure TorsionRadoWitness where
  witness : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryWitness
  compactLabel : String
  torsionResidueClass : String
  coefficientTarget : Int
  attachedToBridge : witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge
  cancelsTorsionResidue : Prop

def TorsionRadoWitness.admitted (W : TorsionRadoWitness) : Prop :=
  W.cancelsTorsionResidue

theorem torsion_witness_is_bridge
    (W : TorsionRadoWitness) :
    W.witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge := by
  exact W.attachedToBridge

end Think.RadoProjectedModularHeatflow.TorsionWitness
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49b224bcc251226c2325edb912379d4e1ab071c5f53775d713c2c624fc37c44f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionWitness/Variant8234d3127153595f8b7ab38a16db20289ea100e505d8f320b1f5c37cfc05e018.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
