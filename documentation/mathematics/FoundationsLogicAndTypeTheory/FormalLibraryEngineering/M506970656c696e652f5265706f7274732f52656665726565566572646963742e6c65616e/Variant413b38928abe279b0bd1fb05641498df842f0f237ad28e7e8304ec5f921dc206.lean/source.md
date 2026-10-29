# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f52656665726565566572646963742e6c65616e.Variant413b38928abe279b0bd1fb05641498df842f0f237ad28e7e8304ec5f921dc206

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddc6f8b4c3424b3e52fbc4d63faaf7abf18c2f3d` · SHA-256 `413b38928abe279b0bd1fb05641498df842f0f237ad28e7e8304ec5f921dc206`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=10111010|role=proof_code_atom|slug=pipeline-reports-refereeverdict|owner=canonical_owner|core=Pipeline/Reports/RefereeVerdict.lean|leaf=M506970656c696e652f5265706f7274732f52656665726565566572646963742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.RefereeVerdict

def surfaceId : String := "Pipeline/Reports/RefereeVerdict"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Reports/RefereeVerdict" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Reports.RefereeVerdict
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba5cbe8a25c0f83ddace446abc31beb9a6ddef3b01b18cb1f9ece4932e9d6ce2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f5265706f7274732f52656665726565566572646963742e6c65616e/Variant413b38928abe279b0bd1fb05641498df842f0f237ad28e7e8304ec5f921dc206.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
