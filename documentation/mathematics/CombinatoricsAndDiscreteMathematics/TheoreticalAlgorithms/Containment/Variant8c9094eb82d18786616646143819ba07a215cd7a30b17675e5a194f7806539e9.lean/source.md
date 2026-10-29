# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Containment.Variant8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ce110df0bf0a0905bcbc55d505b8e37620fd354` · SHA-256 `8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Ledger

set_option autoImplicit false

namespace Think.Residues

def contains (r : Think.Residue) : Prop :=
  r ∈ ledger

theorem contained_target (r : Think.Residue) :
    contains r -> r.target = FWR.Target.CenterWeightedPipeline := by
  intro h
  unfold contains ledger allPipelineResidues at h
  rw [Think.pipelineResidues] at h
  rcases List.mem_append.mp h with hp | hc
  · exact Think.phaseResidues_targets_correct r hp
  · exact Think.checkpointResidues_targets_correct r hc

end Think.Residues
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3802d003b098ce56fdfd910665d1d4431a5624fc7e6e27dc9f7fed405fb7586d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Containment/Variant8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
