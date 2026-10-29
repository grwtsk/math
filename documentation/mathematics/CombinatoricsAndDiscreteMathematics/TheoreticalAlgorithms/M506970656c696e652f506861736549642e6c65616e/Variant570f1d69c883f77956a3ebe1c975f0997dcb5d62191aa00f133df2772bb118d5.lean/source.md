# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f506861736549642e6c65616e.Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2424d9fc295732b2401b292b7e8c50cfd01bf3f` · SHA-256 `570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=0001101|role=proof_code_atom|slug=pipeline-phaseid|owner=canonical_owner|core=Pipeline/PhaseId.lean|leaf=M506970656c696e652f506861736549642e6c65616e.lean -/

set_option autoImplicit false

namespace Think

abbrev PhaseId := FWR.Pipeline.CenterWeighted.Phase
abbrev PhaseRecord := FWR.Pipeline.CenterWeighted.PhaseRecord
abbrev SpineStep := FWR.Pipeline.CenterWeighted.SpineStep

def allPhaseIds : List PhaseId :=
  FWR.Pipeline.CenterWeighted.allPhases

theorem allPhaseIds_count :
    allPhaseIds.length = 61 := by
  rfl

theorem allPhaseIds_complete (p : PhaseId) :
    p ∈ allPhaseIds := by
  exact FWR.Pipeline.CenterWeighted.allPhases_complete p

theorem allPhaseIds_nodup :
    allPhaseIds.Nodup := by
  exact FWR.Pipeline.CenterWeighted.allPhases_nodup

end Think
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=187515b82ee90176c9e27d789e77e1008efd14427840e4605b538c0f0bd02a5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506861736549642e6c65616e/Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
