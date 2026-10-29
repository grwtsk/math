# Authority Gate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1864cbacb6ee6a734dfe1d86c3b7aa4fad200cb4` · SHA-256 `1043144f30bc386237ed4082e302838c8af24fc911d928a99f1b9db5b3c403ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=1110011|role=proof_code_atom|slug=pipeline-core-authoritygate|owner=canonical_owner|core=Pipeline/Core/AuthorityGate.lean|leaf=M506970656c696e652f436f72652f417574686f72697479476174652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Core.AuthorityGate

def surfaceId : String := "Pipeline/Core/AuthorityGate"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Core/AuthorityGate" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Core.AuthorityGate
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45adfe7564f5220f76cf909ac3d40d6dfbcc8f495e4ab8b0304814bafb1ed127 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f436f72652f417574686f72697479476174652e6c65616e/Variant1043144f30bc386237ed4082e302838c8af24fc911d928a99f1b9db5b3c403ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
