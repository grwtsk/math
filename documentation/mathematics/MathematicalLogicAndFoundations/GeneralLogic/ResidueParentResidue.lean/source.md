# Residue Parent Residue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e4ceb6817c78dc10f29601a414982146c0c80fa` · SHA-256 `dc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure ParentResidue where
  canonicalNode : String
  residueClass : String
  selfContribution : String
  childContribution : String
  lateralContribution : String
  boundaryCorrected : Prop
deriving Repr

def phaseTableResidue : ParentResidue :=
  { canonicalNode := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    residueClass := "Pipeline.PhaseTable"
    selfContribution := "indexed phase records"
    childContribution := "mirror phase entries"
    lateralContribution := "pole-family placements"
    boundaryCorrected := True }

end Think.RadoProjectedModularHeatflow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fee46e7847976f7fbc765c68050e93cf49e8907c5f057249dca2199f8fe62f5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
