# Center Compatibility Glue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d73a66e8b4ba1e8c5afca4791f5a724450c34ab` · SHA-256 `12c1d65dad5de51e8360a0a835e237ab69cd546ae990afe5b211293fc64e8331`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=100001010|role=proof_code_atom|slug=pipeline-glue-centercompatibilityglue|owner=canonical_owner|core=Pipeline/Glue/CenterCompatibilityGlue.lean|leaf=M506970656c696e652f476c75652f43656e746572436f6d7061746962696c697479476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.CenterCompatibilityGlue

def surfaceId : String := "Pipeline/Glue/CenterCompatibilityGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/CenterCompatibilityGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.CenterCompatibilityGlue
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f080a1faf922c36a9c8d92d0ccb6a5ceafdc688a877d3920ccce420982144ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f476c75652f43656e746572436f6d7061746962696c697479476c75652e6c6/Variant12c1d65dad5de51e8360a0a835e237ab69cd546ae990afe5b211293fc64e8331.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
