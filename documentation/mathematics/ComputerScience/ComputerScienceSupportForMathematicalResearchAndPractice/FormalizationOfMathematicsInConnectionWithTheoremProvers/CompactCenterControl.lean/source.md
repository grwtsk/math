# Compact Center Control — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16893389745f508bd49d505ef26aeb0216fd9733` · SHA-256 `60dbc14c707fa794675ccf8d67c5bcf9aa8655715079317b3818d3501bc27466`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=01011110|role=proof_code_atom|slug=pipeline-center-compactcentercontrol|owner=canonical_owner|core=Pipeline/Center/CompactCenterControl.lean|leaf=M506970656c696e652f43656e7465722f436f6d7061637443656e746572436f6e74726f6c2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure CompactCenterControl where
  hasSpine : Bool
  hasRoundtripStabilizer : Bool
  hasRadoHeatflow : Bool
  hasMemoryCentroid : Bool
  hasInnerOuterHeatflow : Bool
deriving Repr

def compactCenterControl : CompactCenterControl :=
  { hasSpine := true
    hasRoundtripStabilizer := true
    hasRadoHeatflow := true
    hasMemoryCentroid := true
    hasInnerOuterHeatflow := true }

theorem compactCenterControl_complete :
    compactCenterControl.hasSpine = true ∧
    compactCenterControl.hasRoundtripStabilizer = true ∧
    compactCenterControl.hasRadoHeatflow = true ∧
    compactCenterControl.hasMemoryCentroid = true ∧
    compactCenterControl.hasInnerOuterHeatflow = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb067105ebcf24925abd9d24e6731ce609aadb639f128f15fe4f0baab508b3c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f436f6d7061637443656e746572436f6e74726f6c2e6c656/Variant60dbc14c707fa794675ccf8d67c5bcf9aa8655715079317b3818d3501bc27466.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
