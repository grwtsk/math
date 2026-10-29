# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cluster.Variant4c9c57035163c924bd6a8630cb6a0a2ad2232be7bed899547abb53504da71bbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `881ac7c758339c537abeda6f1214accc4d5115db` · SHA-256 `4c9c57035163c924bd6a8630cb6a0a2ad2232be7bed899547abb53504da71bbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic
import Think.Pipeline.Center.Checkpoints

set_option autoImplicit false

namespace Think.Residues.Cluster

def checkpoint : Think.Pipeline.Center.Checkpoint :=
  FWR.Pipeline.CenterWeighted.Checkpoint.cluster

def residue : Think.Residue :=
  Think.Pipeline.Center.checkpointResidue checkpoint

theorem residue_target :
    residue.target = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Residues.Cluster
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31f4b40561e7739a617a1b594cbd0bb38ed284823a3eef0904d42ef95fe81d98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cluster/Variant4c9c57035163c924bd6a8630cb6a0a2ad2232be7bed899547abb53504da71bbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
