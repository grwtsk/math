# Spine — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eceeae3456d65464e3227f23c53ec2835156c302` · SHA-256 `405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f50686173654f726465722e6c65616e


/- source-tree-label: STL1|L|addr=110111011|role=proof_code_atom|slug=pipeline-center-spine|owner=canonical_owner|core=Pipeline/Center/Spine.lean|leaf=M506970656c696e652f43656e7465722f5370696e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

def spine : List Think.PhaseId :=
  Think.centerSpine

theorem spine_count :
    spine.length = 61 := by
  rfl

theorem spine_complete (p : Think.PhaseId) :
    p ∈ spine := by
  exact Think.centerSpine_complete p

theorem spine_nodup :
    spine.Nodup := by
  exact Think.centerSpine_nodup

end Think.Pipeline.Center
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81564b7799b9299d9c6e8640e9cc263b97bbff177468b99aae74f71f82fae506 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5370696e652e6c65616e/Variant405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
