# Residue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dff97da06104f919d20a3323c96f532a8c0b590` · SHA-256 `63f7ea916afcedf155f8157087981a1300f83fc8525e0c83b40c80afe437309a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0101001011|role=proof_code_atom|slug=pipeline-core-residue|owner=canonical_owner|core=Pipeline/Core/Residue.lean|leaf=M506970656c696e652f436f72652f526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.Residue

def surfaceId : String := "Pipeline/Core/Residue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/Residue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.Residue
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67354e79d4ee41a47a67073af3aebb0a4763607f0c8fb8d215e87d1646a050c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f436f72652f526573696475652e6c65616e/Variant63f7ea916afcedf155f8157087981a1300f83fc8525e0c83b40c80afe437309a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
