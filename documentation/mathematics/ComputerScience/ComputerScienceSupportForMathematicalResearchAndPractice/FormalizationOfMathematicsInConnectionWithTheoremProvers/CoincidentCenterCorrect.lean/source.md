# Coincident Center Correct — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d714628361c5e1c3cf868909d54e21688138d487` · SHA-256 `cfc7b99cce445fa0425f92ed677750986b7832787edfa2a251347a14982b9b33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=01100000|role=proof_code_atom|slug=pipeline-validation-coincidentcentercorrect|owner=canonical_owner|core=Pipeline/Validation/CoincidentCenterCorrect.lean|leaf=M506970656c696e652f56616c69646174696f6e2f436f696e636964656e7443656e746572436f72726563742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.CoincidentCenterCorrect

def surfaceId : String := "Pipeline/Validation/CoincidentCenterCorrect"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/CoincidentCenterCorrect" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.CoincidentCenterCorrect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f1cfcc94d5d600a19e8783fc9082fa87ad8a8ab2f4708529b62fa2f24f32da9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f436f696e636964656e7443656e746572436f727/Variantcfc7b99cce445fa0425f92ed677750986b7832787edfa2a251347a14982b9b33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
