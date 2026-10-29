# Checkpoints — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d802025cd0f2d18877b359fbad71f3c381c8715d` · SHA-256 `4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e


/- source-tree-label: STL1|L|addr=001111010|role=proof_code_atom|slug=pipeline-center-checkpoints|owner=canonical_owner|core=Pipeline/Center/Checkpoints.lean|leaf=M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev Checkpoint := FWR.Pipeline.CenterWeighted.Checkpoint

def strictCheckpoints : List Checkpoint :=
  FWR.Pipeline.CenterWeighted.strictCheckpoints

def checkpointResidue (c : Checkpoint) : Think.Residue :=
  c.residue

theorem strictCheckpoints_count :
    strictCheckpoints.length = 9 := by
  rfl

end Think.Pipeline.Center
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b98f39833d5309a5f8a8cc21541315b97b519e5af496572705b05a80e283e03d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e/Variant4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
