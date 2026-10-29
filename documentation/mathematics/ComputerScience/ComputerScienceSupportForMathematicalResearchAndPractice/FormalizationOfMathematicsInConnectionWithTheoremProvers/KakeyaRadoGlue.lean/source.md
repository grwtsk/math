# Kakeya Rado Glue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecf3294e67031d90e4b986d743d5ae9e8735410c` · SHA-256 `b8fa87b64134651ad8d1992d4ac43621391e0aef2ffb8a0358490c287d1d2ffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=010111111|role=proof_code_atom|slug=pipeline-glue-kakeyaradoglue|owner=canonical_owner|core=Pipeline/Glue/KakeyaRadoGlue.lean|leaf=M506970656c696e652f476c75652f4b616b6579615261646f476c75652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.KakeyaRadoGlue

def surfaceId : String := "Pipeline/Glue/KakeyaRadoGlue"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Glue/KakeyaRadoGlue" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Glue.KakeyaRadoGlue
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=043cf64af224ee4a01993d209a509bb6f542ce9cd0377d5c65bd751f743ca1ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f476c75652f4b616b6579615261646f476c75652e6c65616e/Variantb8fa87b64134651ad8d1992d4ac43621391e0aef2ffb8a0358490c287d1d2ffe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
