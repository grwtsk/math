# No Forbidden Claims — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33a7616c87649de0d74150c8964e0a13702af6a6` · SHA-256 `4c6b6fb7b7c5b669d801d514544e0470b53c9decb2657801b800506db67e098b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0110001|role=proof_code_atom|slug=pipeline-validation-noforbiddenclaims|owner=canonical_owner|core=Pipeline/Validation/NoForbiddenClaims.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4e6f466f7262696464656e436c61696d732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.NoForbiddenClaims

def surfaceId : String := "Pipeline/Validation/NoForbiddenClaims"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/NoForbiddenClaims" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.NoForbiddenClaims
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9471af91c69370d398fe0b06beb966dfc315fdbb7918a10808c846c9e5e5333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4e6f466f7262696464656e436c61696d732e6c6/Variant4c6b6fb7b7c5b669d801d514544e0470b53c9decb2657801b800506db67e098b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
