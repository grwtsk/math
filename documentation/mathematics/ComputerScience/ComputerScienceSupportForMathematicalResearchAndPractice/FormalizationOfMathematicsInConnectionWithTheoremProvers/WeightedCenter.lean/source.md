# Weighted Center — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2d039543c499eeb7b6f3cc20ac435e180903dcd` · SHA-256 `9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e


/- source-tree-label: STL1|L|addr=101001|role=proof_code_atom|slug=pipeline-center-weightedcenter|owner=canonical_owner|core=Pipeline/Center/WeightedCenter.lean|leaf=M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center

def centerIndex : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.centerIndex

def phaseCount : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.phaseCount

def centerWeight (p : Think.PhaseId) : Nat :=
  p.centerWeight

theorem centerWeight_positive (p : Think.PhaseId) :
    0 < centerWeight p := by
  exact FWR.Pipeline.CenterWeighted.centerWeight_positive p

end Think.Pipeline.Center
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42ce039dc803d6b71be718bf55127cb97242c5ffa635887b9e7d842550bce6f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f576569676874656443656e7465722e6c65616e/Variant9785256fdce9f93715c60ae65a10af646852a28c971bd469bb59f2a14f78f265.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
