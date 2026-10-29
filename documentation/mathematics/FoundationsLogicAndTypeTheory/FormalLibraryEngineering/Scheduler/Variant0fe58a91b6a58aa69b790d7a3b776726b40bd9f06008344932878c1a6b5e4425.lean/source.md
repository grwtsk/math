# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Scheduler.Variant0fe58a91b6a58aa69b790d7a3b776726b40bd9f06008344932878c1a6b5e4425

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec9ff77017d61a8537743a525892beca4aa95306` · SHA-256 `0fe58a91b6a58aa69b790d7a3b776726b40bd9f06008344932878c1a6b5e4425`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Scheduler

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.scheduler

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Scheduler
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3ec7c0efad13033e58aafea8ee0f9a4520ec07c27576905c6366196f54441c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Scheduler/Variant0fe58a91b6a58aa69b790d7a3b776726b40bd9f06008344932878c1a6b5e4425.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
